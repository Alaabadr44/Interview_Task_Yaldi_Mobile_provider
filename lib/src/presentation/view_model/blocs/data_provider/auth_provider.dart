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
import '../auth_provider/api_data_event.dart';
import '../auth_provider/auth_event.dart';
import '../auth_provider/auth_provider_state.dart';
import '../../../../core/utils/enums.dart';

import '../data_provider/data_generic_provider.dart';
import '../data_provider/data_provider_state.dart';

class AuthProvider<MODEL> extends ChangeNotifier
    implements DataGenericProvider<MODEL> {
  BaseProviderHelper<MODEL>? _helper;

  // State management
  AuthProviderState<MODEL> _state = const AuthProviderState.idle();

  // Getters
  AuthProviderState<MODEL> get authState => _state;
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
    return authState.when(
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
    );
  }

  // Helper method to extract title from event
  String? _getEventTitle(AuthEvent event) {
    return event.when(
      login: (authData) => null,
      logout: (authData) => null,
      delete: (authData) => null,
      forget: (authData) => null,
      checkCode: (authData) => null,
      sendCode: (authData) => null,
      update: (authData, title) => title,
      changePassword: (authData, title) => title,
      register: (authData, title) => title,
    );
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

      dataState.when(
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
    // Not implemented for AuthProvider - use specific auth methods instead
    throw UnimplementedError(
      'Use specific authentication methods instead of handleEvent',
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
    // Not implemented for AuthProvider
    throw UnimplementedError('getGeneralData not supported in AuthProvider');
  }

  @override
  Future<void> getIndexData({
    required ApiInfo queryParams,
    String? eventId,
    bool listWithoutPagination = false,
    ApiRequestType apiMethod = ApiRequestType.get,
  }) async {
    // Not implemented for AuthProvider
    throw UnimplementedError('getIndexData not supported in AuthProvider');
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
    // Not implemented for AuthProvider
    throw UnimplementedError('storeData not supported in AuthProvider');
  }

  @override
  Future<void> updateData({
    required ApiInfo queryParams,
    String? id,
    ApiRequestType apiMethod = ApiRequestType.post,
  }) async {
    // Not implemented for AuthProvider
    throw UnimplementedError('updateData not supported in AuthProvider');
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
