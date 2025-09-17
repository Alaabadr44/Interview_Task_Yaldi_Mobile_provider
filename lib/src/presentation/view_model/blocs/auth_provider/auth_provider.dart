// Package imports:
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// Project imports:
import '../../../../core/config/injector.dart';
import '../../../../core/utils/api_info.dart';
import '../../../../core/utils/data_state.dart';
import '../../../../core/error/error.dart';
import '../../../../data/models/api_response_model.dart';
import '../assistance/base_provider_helper.dart';
import '../assistance/provider_progress_helper.dart';
import '../assistance/provider_progress_model.dart';
import '../assistance/unauthorized_notifier.dart';

import '../../../../core/utils/enums.dart';
import 'api_data_event.dart';
import 'auth_event.dart';
import 'auth_provider_state.dart';
import '../data_provider/data_generic_provider.dart';
import '../data_provider/data_provider_state.dart';
import '../../../../domain/use_cases/remote/get_general_data_use_case.dart';
import '../../../../domain/use_cases/remote/get_index_data_use_case.dart';
import '../../../../domain/use_cases/remote/store_use_case.dart';

class AuthProvider<MODEL> extends ChangeNotifier
    implements DataGenericProvider<MODEL> {
  BaseProviderHelper<MODEL>? _helper;

  // State management
  AuthProviderState<MODEL> _state = const AuthProviderState.idle();

  // Getters
  AuthProviderState<MODEL> get authState => _state;
  @override
  ApiInfo? get requestQuery => _helper?.query;
  CancelToken? get cancelRequest => _helper?.cancelToken;

  // DataGenericProvider interface implementation
  @override
  DataProviderState<MODEL> get state => _convertToDataProviderState(_state);
  @override
  PagingController<int, MODEL>? get controller => _helper?.controller;

  // Latest event storage
  AuthEvent? _latestEvent;

  // Constructor
  AuthProvider() {
    _helper = BaseProviderHelper<MODEL>(provider: this);
  }

  // Update state and notify listeners
  void _updateState(AuthProviderState<MODEL> newState) {
    _state = newState;
    notifyListeners();
  }

  // Helper method to convert AuthProviderState to DataProviderState
  DataProviderState<MODEL> _convertToDataProviderState(
    AuthProviderState<MODEL> authState,
  ) {
    return authState.maybeWhen(
      idle: () => const DataProviderState.idle(),
      loading:
          (event, count, total, isInit) => DataProviderState.loading(
            count: count,
            total: total,
            isInit: isInit,
          ),
      success:
          (data, response, event) =>
              DataProviderState.successModel(data: data, response: response),
      error:
          (error, event, isUnAuth, isCancel) => DataProviderState.error(
            error: error,
            errorResponse: null,
            isUnAuth: isUnAuth,
          ),
      orElse: () => const DataProviderState.idle(),
    );
  }

  // Helper method to extract title from event
  String? _getEventTitle(AuthEvent event) {
    return event.maybeWhen(
      login: (authData) => null,
      logout: (authData) => null,
      delete: (authData) => null,
      forget: (authData) => null,
      checkCode: (authData) => null,
      sendCode: (authData) => null,
      update: (authData, title) => title,
      changePassword: (authData, title) => title,
      register: (authData, title) => title,
      orElse: () => null,
    );
  }

  // Helper method to create a dummy auth event for generic operations
  AuthEvent _createDummyAuthEvent() {
    return AuthEvent.login(authData: ApiInfo(endpoint: '/dummy'));
  }

  // State helpers
  bool get isIdle => _state is AuthProviderStateIdle;
  bool get isLoading => _state is AuthProviderStateLoading;
  bool get isSuccess => _state is AuthProviderStateSuccess;
  bool get isError => _state is AuthProviderStateError;
  bool get isUnAuthorized =>
      _state is AuthProviderStateError &&
      (_state as AuthProviderStateError).isUnAuth;

  // Get current data
  MODEL? get data {
    final currentState = _state;
    if (currentState is AuthProviderStateSuccess) {
      return currentState.data;
    }
    return null;
  }

  // Get current event
  AuthEvent? get currentEvent => _latestEvent;

  // Main API call method (based on AuthBloc._callApi)
  Future<void> _callApi(AuthEvent event) async {
    _latestEvent = event;
    _helper?.cancelToken = CancelToken();
    ProviderProgressModel? progressModel = _helper?.addProgress(
      title: _getEventTitle(event),
      cancelToken: _helper?.cancelToken,
    );

    _updateState(
      AuthProviderState.loading(
        event: event,
        count: null,
        total: null,
        isInit: true,
      ),
    );

    event.authData.body = _helper!.getDataForStore(event.authData);

    try {
      final DataState<ApiResponseModel<MODEL?>> dataState = await _helper!
          .authUserUseCase(
            event: event,
            cancel: cancelRequest,
            progress: (count, total) {
              injector<ProviderProgressHelper>().updateProgress(
                progressModel?.id,
                total: total,
                count: count,
              );
              _updateState(
                AuthProviderState.loading(
                  event: event,
                  count: count,
                  total: total,
                  isInit: false,
                ),
              );
            },
          );

      dataState.maybeWhen(
        success: (successState) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel?.id,
            success: true,
          );
          _updateState(
            AuthProviderState.success(
              data: successState.data,
              response: successState,
              event: event,
            ),
          );
        },
        failure: (error, errorResponse) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel?.id,
            success: false,
          );

          final isUnAuth =
              error?.code != null && error?.code == HttpStatus.unauthorized;
          _updateState(
            AuthProviderState.error(
              error: error,
              event: event,
              isUnAuth: isUnAuth,
              isCancel: cancelRequest?.isCancelled ?? false,
            ),
          );

          injector<UnauthorizedNotifier>().unauthorized(
            error?.code,
            error?.message,
          );
        },
        orElse: () {},
      );
    } catch (e) {
      _updateState(
        AuthProviderState.error(
          error: AppError(message: e.toString()),
          event: event,
          isUnAuth: false,
          isCancel: false,
        ),
      );
    } finally {
      _helper?.cancelToken = null;
      if (progressModel != null) {
        injector<ProviderProgressHelper>().removeProgress(progressModel.id);
      }
    }
  }

  // Public methods for authentication operations
  Future<void> login({required ApiInfo authData}) async {
    await _callApi(AuthEvent.login(authData: authData));
  }

  Future<void> logout({required ApiInfo authData}) async {
    await _callApi(AuthEvent.logout(authData: authData));
  }

  Future<void> register({required ApiInfo authData, String? title}) async {
    await _callApi(AuthEvent.register(authData: authData, title: title));
  }

  Future<void> forgetPassword({required ApiInfo authData}) async {
    await _callApi(AuthEvent.forget(authData: authData));
  }

  Future<void> checkCode({required ApiInfo authData}) async {
    await _callApi(AuthEvent.checkCode(authData: authData));
  }

  Future<void> sendCode({required ApiInfo authData}) async {
    await _callApi(AuthEvent.sendCode(authData: authData));
  }

  Future<void> updateProfile({required ApiInfo authData, String? title}) async {
    await _callApi(AuthEvent.update(authData: authData, title: title));
  }

  Future<void> deleteAccount({required ApiInfo authData}) async {
    await _callApi(AuthEvent.delete(authData: authData));
  }

  Future<void> changePassword({
    required ApiInfo authData,
    String? title,
  }) async {
    await _callApi(AuthEvent.changePassword(authData: authData, title: title));
  }

  // Reset state to idle
  void reset() {
    _updateState(const AuthProviderState.idle());
  }

  // Cancel current request
  void cancelCurrentRequest() {
    _helper?.cancelToken?.cancel();
  }

  // DataGenericProvider interface methods
  @override
  Future<void> handleEvent(ApiDataEvent event) async {
    await event.maybeWhen(
      general:
          (
            queryParams,
            eventId,
            deferentApi,
            keysData,
            interceptors,
            apiMethod,
          ) => getGeneralData(
            queryParams: queryParams,
            eventId: eventId,
            deferentApi: deferentApi ?? false,
            keysData: keysData,
            interceptors: interceptors,
            apiMethod: apiMethod ?? ApiRequestType.get,
          ),
      index:
          (queryParams, eventId, listWithoutPagination, apiMethod) =>
              getIndexData(
                queryParams: queryParams,
                eventId: eventId,
                listWithoutPagination: listWithoutPagination ?? false,
                apiMethod: apiMethod ?? ApiRequestType.get,
              ),
      store:
          (queryParams, id, title, apiMethod, deferentApi, interceptors) =>
              storeData(
                queryParams: queryParams,
                id: id,
                title: title,
                apiMethod: apiMethod ?? ApiRequestType.post,
                deferentApi: deferentApi ?? false,
                interceptors: interceptors,
              ),
      update:
          (queryParams, id, apiMethod) => updateData(
            queryParams: queryParams,
            id: id,
            apiMethod: apiMethod ?? ApiRequestType.post,
          ),
      orElse: () async {
        throw UnimplementedError('Unsupported ApiDataEvent type');
      },
    );
  }

  @override
  Future<void> getGeneralData({
    required ApiInfo queryParams,
    String? eventId,
    bool deferentApi = false,
    List<List<String>>? keysData,
    List<Interceptor>? interceptors,
    ApiRequestType apiMethod = ApiRequestType.get,
  }) async {
    try {
      // Create a dummy auth event for general data operations
      final event = _createDummyAuthEvent();

      // Update state to loading
      _updateState(
        AuthProviderState.loading(
          event: event,
          count: 0,
          total: 100,
          isInit: true,
        ),
      );

      // Initialize helper if needed
      _helper ??= BaseProviderHelper<MODEL>(provider: this, query: queryParams);

      // Add progress tracking
      final progressModel = ProviderProgressModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        cancelToken: _helper?.cancelToken,
        title: 'Loading Data',
        total: 100,
        count: 0,
        success: false,
      );
      injector<ProviderProgressHelper>().addNewProgress(progressModel);

      // Call the use case
      final useCase = injector<GetGeneralDataUseCase<MODEL>>();
      final apiEvent = ApiDataEvent.general(
        queryParams: queryParams,
        eventId: eventId,
        deferentApi: deferentApi,
        keysData: keysData,
        interceptors: interceptors,
        apiMethod: apiMethod,
      );
      final dataState = await useCase.call(
        event: apiEvent,
        cancel: _helper?.cancelToken,
      );

      // Handle the response
      dataState.maybeWhen(
        success: (successState) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel.id,
            success: true,
          );
          _updateState(
            AuthProviderState.success(
              data: successState.data,
              response: successState,
              event: event,
            ),
          );
        },
        failure: (error, errorResponse) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel.id,
            success: false,
          );

          final isUnAuth =
              error?.code != null && error?.code == HttpStatus.unauthorized;
          _updateState(
            AuthProviderState.error(
              error: error,
              event: event,
              isUnAuth: isUnAuth,
              isCancel: _helper?.cancelToken?.isCancelled ?? false,
            ),
          );

          injector<UnauthorizedNotifier>().unauthorized(
            error?.code,
            error?.message,
          );
        },
        orElse: () {},
      );
    } catch (e) {
      _updateState(
        AuthProviderState.error(
          error: AppError(message: e.toString()),
          event: _createDummyAuthEvent(),
          isUnAuth: false,
          isCancel: false,
        ),
      );
    }
  }

  @override
  Future<void> getIndexData({
    required ApiInfo queryParams,
    String? eventId,
    bool listWithoutPagination = false,
    ApiRequestType apiMethod = ApiRequestType.get,
  }) async {
    try {
      // Create a dummy auth event for index data operations
      final event = _createDummyAuthEvent();

      // Update state to loading
      _updateState(
        AuthProviderState.loading(
          event: event,
          count: 0,
          total: 100,
          isInit: true,
        ),
      );

      // Initialize helper if needed
      _helper ??= BaseProviderHelper<MODEL>(provider: this, query: queryParams);

      // Add progress tracking
      final progressModel = ProviderProgressModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        cancelToken: _helper?.cancelToken,
        title: 'Loading Index Data',
        total: 100,
        count: 0,
        success: false,
      );
      injector<ProviderProgressHelper>().addNewProgress(progressModel);

      // Call the use case
      final useCase = injector<GetIndexDataUseCase<MODEL>>();
      final apiEvent = ApiDataEvent.index(
        queryParams: queryParams,
        eventId: eventId,
        listWithoutPagination: listWithoutPagination,
        apiMethod: apiMethod,
      );
      final dataState = await useCase.call(
        event: apiEvent,
        cancel: _helper?.cancelToken,
      );

      // Handle the response
      dataState.maybeWhen(
        success: (successState) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel.id,
            success: true,
          );
          _updateState(
            AuthProviderState.success(
              data:
                  successState.data?.isNotEmpty == true
                      ? successState.data!.first
                      : null,
              response: successState as ApiResponseModel<MODEL?>,
              event: event,
            ),
          );
        },
        failure: (error, errorResponse) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel.id,
            success: false,
          );

          final isUnAuth =
              error?.code != null && error?.code == HttpStatus.unauthorized;
          _updateState(
            AuthProviderState.error(
              error: error,
              event: event,
              isUnAuth: isUnAuth,
              isCancel: _helper?.cancelToken?.isCancelled ?? false,
            ),
          );

          injector<UnauthorizedNotifier>().unauthorized(
            error?.code,
            error?.message,
          );
        },
        orElse: () {},
      );
    } catch (e) {
      _updateState(
        AuthProviderState.error(
          error: AppError(message: e.toString()),
          event: _createDummyAuthEvent(),
          isUnAuth: false,
          isCancel: false,
        ),
      );
    }
  }

  @override
  Future<void> storeData({
    required ApiInfo queryParams,
    String? id,
    String? title,
    ApiRequestType apiMethod = ApiRequestType.post,
    bool deferentApi = false,
    List<Interceptor>? interceptors,
  }) async {
    try {
      // Create a dummy auth event for store data operations
      final event = _createDummyAuthEvent();

      // Update state to loading
      _updateState(
        AuthProviderState.loading(
          event: event,
          count: 0,
          total: 100,
          isInit: true,
        ),
      );

      // Initialize helper if needed
      _helper ??= BaseProviderHelper<MODEL>(provider: this, query: queryParams);

      // Add progress tracking
      final progressModel = ProviderProgressModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        cancelToken: _helper?.cancelToken,
        title: title ?? 'Storing Data',
        total: 100,
        count: 0,
        success: false,
      );
      injector<ProviderProgressHelper>().addNewProgress(progressModel);

      // Call the use case
      final useCase = injector<StoreUseCase<MODEL>>();
      final apiEvent = ApiDataEvent.store(
        queryParams: queryParams,
        id: id,
        title: title,
        apiMethod: apiMethod,
        deferentApi: deferentApi,
        interceptors: interceptors,
      );
      final dataState = await useCase.call(
        event: apiEvent,
        cancel: _helper?.cancelToken,
      );

      // Handle the response
      dataState.maybeWhen(
        success: (successState) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel.id,
            success: true,
          );
          _updateState(
            AuthProviderState.success(
              data: successState.data,
              response: successState,
              event: event,
            ),
          );
        },
        failure: (error, errorResponse) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel.id,
            success: false,
          );

          final isUnAuth =
              error?.code != null && error?.code == HttpStatus.unauthorized;
          _updateState(
            AuthProviderState.error(
              error: error,
              event: event,
              isUnAuth: isUnAuth,
              isCancel: _helper?.cancelToken?.isCancelled ?? false,
            ),
          );

          injector<UnauthorizedNotifier>().unauthorized(
            error?.code,
            error?.message,
          );
        },
        orElse: () {},
      );
    } catch (e) {
      _updateState(
        AuthProviderState.error(
          error: AppError(message: e.toString()),
          event: _createDummyAuthEvent(),
          isUnAuth: false,
          isCancel: false,
        ),
      );
    }
  }

  @override
  Future<void> updateData({
    required ApiInfo queryParams,
    String? id,
    ApiRequestType apiMethod = ApiRequestType.post,
  }) async {
    try {
      // Create a dummy auth event for update data operations
      final event = _createDummyAuthEvent();

      // Update state to loading
      _updateState(
        AuthProviderState.loading(
          event: event,
          count: 0,
          total: 100,
          isInit: true,
        ),
      );

      // Initialize helper if needed
      _helper ??= BaseProviderHelper<MODEL>(provider: this, query: queryParams);

      // Add progress tracking
      final progressModel = ProviderProgressModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        cancelToken: _helper?.cancelToken,
        title: 'Updating Data',
        total: 100,
        count: 0,
        success: false,
      );
      injector<ProviderProgressHelper>().addNewProgress(progressModel);

      // Call the use case (using StoreUseCase for update operations)
      final useCase = injector<StoreUseCase<MODEL>>();
      final apiEvent = ApiDataEvent.update(
        queryParams: queryParams,
        id: id,
        apiMethod: apiMethod,
      );
      final dataState = await useCase.call(
        event: apiEvent,
        cancel: _helper?.cancelToken,
      );

      // Handle the response
      dataState.maybeWhen(
        success: (successState) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel.id,
            success: true,
          );
          _updateState(
            AuthProviderState.success(
              data: successState.data,
              response: successState,
              event: event,
            ),
          );
        },
        failure: (error, errorResponse) {
          injector<ProviderProgressHelper>().updateProgress(
            progressModel.id,
            success: false,
          );

          final isUnAuth =
              error?.code != null && error?.code == HttpStatus.unauthorized;
          _updateState(
            AuthProviderState.error(
              error: error,
              event: event,
              isUnAuth: isUnAuth,
              isCancel: _helper?.cancelToken?.isCancelled ?? false,
            ),
          );

          injector<UnauthorizedNotifier>().unauthorized(
            error?.code,
            error?.message,
          );
        },
        orElse: () {},
      );
    } catch (e) {
      _updateState(
        AuthProviderState.error(
          error: AppError(message: e.toString()),
          event: _createDummyAuthEvent(),
          isUnAuth: false,
          isCancel: false,
        ),
      );
    }
  }

  @override
  Future<void> refresh() async {
    if (_latestEvent != null) {
      await _callApi(_latestEvent!);
    }
  }

  @override
  void cancel(String cancelMessage) {
    _helper?.cancelToken?.cancel(cancelMessage);
  }

  @override
  void dispose() {
    _helper?.cancelToken?.cancel();
    _helper?.cancelToken = null;
    if (_helper?.dioService != null) {
      _helper?.dioService!.dio.close();
      _helper?.dioService = null;
    }
    super.dispose();
  }
}
