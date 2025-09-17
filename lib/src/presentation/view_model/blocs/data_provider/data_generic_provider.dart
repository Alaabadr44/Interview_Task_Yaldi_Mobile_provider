// Package imports:
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/src/core/utils/extension.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// Project imports:
import '../../../../core/config/injector.dart';
import '../../../../core/error/error.dart';
import '../../../../core/utils/api_info.dart';
import '../../../../core/utils/app_logger.dart';
import '../../../../core/utils/data_state.dart';
import '../../../../core/utils/enums.dart';
import '../../../../data/models/api_response_model.dart';
import '../assistance/base_provider_helper.dart';
import '../assistance/provider_progress_helper.dart';
import '../assistance/provider_progress_model.dart';
  import '../assistance/unauthorized_notifier.dart';
  // import '../data_provider/api_data_event.dart';
import '../auth_provider/api_data_event.dart';
import 'data_provider_state.dart';

class DataGenericProvider<MODEL> extends ChangeNotifier {
  BaseProviderHelper<MODEL>? _helper;

  // State management
  DataProviderState<MODEL> _state = const DataProviderState.idle();

  // Getters
  DataProviderState<MODEL> get state => _state;
  ApiInfo? get requestQuery => _helper?.query;
  PagingController<int, MODEL>? get controller => _helper?.controller;

  // Latest event storage
  ApiDataEvent? _event;

  // Constructor
  DataGenericProvider({ApiInfo? query}) {
    _helper = BaseProviderHelper<MODEL>(provider: this, query: query);
    if (query != null) {
      _helper!.initializeController();
    }
  }

  // Main event handling method
  Future<void> handleEvent(ApiDataEvent event) async {
    _event = event;

    if (event is ApiGeneralData) {
      await (event.deferentApi!
          ? _getDataFromDeferentApi(event)
          : _getGeneralData(event));
    } else if (event is ApiStoreData) {
      await (event.deferentApi! ? _storeDeferentApi(event) : _store(event));
    } else if (event is ApiIndexData) {
      ApiInfo? query = requestQuery ?? event.queryParams;
      query.queries = _helper?.initQueries(
        pQuery: query,
        isPagination: !event.listWithoutPagination!,
      );

      if (event.listWithoutPagination!) {
        await _getDataWithoutPagination(event);
      } else {
        await _getIndexData(
          event.copyWith(
            apiMethod: event.apiMethod,
            listWithoutPagination: event.listWithoutPagination,
            queryParams: query,
          ),
        );
      }
    }
  }

  Future<void> _getGeneralData(ApiGeneralData event) async {
    _helper?.cancelToken = CancelToken();
    _setState(const DataProviderState.loading());

    final DataState<ApiResponseModel<MODEL>> dataState = await _helper!
        .getGeneralDataUseCase(event: event, cancel: _helper?.cancelToken);

    dataState.when(
      success: (successState) {
        _setState(
          DataProviderState.successModel(
            data: successState.data,
            response: successState,
          ),
        );
      },
      failure: (error, errorResponse) {
        _emitError(error, errorResponse);
      },
    );
    _helper?.cancelToken = null;
  }

  Future<void> _getDataFromDeferentApi(ApiGeneralData event) async {
    _helper?.initDeferentApiUseCase(event.queryParams, event.interceptors);
    _helper?.cancelToken = CancelToken();
    _setState(const DataProviderState.loading());

    final DataState<MODEL> dataState = await _helper!
        .getDataDeferentApiUseCase!(event: event, cancel: _helper?.cancelToken);

    dataState.when(
      success: (successState) {
        _setState(DataProviderState.successDeferentApi(data: successState));
      },
      failure: (error, errorResponse) {
        _emitError(error, errorResponse);
      },
    );
    _helper?.cancelToken = null;
  }

  Future<void> _getIndexData(ApiIndexData event) async {
    _helper?.cancelToken = CancelToken();
    _setState(const DataProviderState.loading());

    final DataState<ApiResponseModel<List<MODEL>>> dataState = await _helper!
        .getIndexDataUseCase(event: event, cancel: _helper?.cancelToken);

    dataState.when(
      success: (successState) {
        _setState(
          DataProviderState.successPagination(
            data: successState.data,
            response: successState,
          ),
        );
        if (_helper!.controller != null && successState.data != null) {
          _helper!.newSettingForPagination(successState);
        }
      },
      failure: (error, errorResponse) {
        controller?.error = error;
        _emitError(error, errorResponse);
      },
    );
    _helper?.cancelToken = null;
  }

  Future<void> _getDataWithoutPagination(ApiIndexData event) async {
    _helper?.cancelToken = CancelToken();
    _setState(const DataProviderState.loading());

    final dataState = await _helper!.getListDataUseCase(
      event: event,
      cancel: _helper?.cancelToken,
    );

    dataState.when(
      success: (successState) {
        _setState(
          DataProviderState.successList(
            data: successState.data,
            response: successState,
          ),
        );
      },
      failure: (error, errorResponse) {
        _emitError(error, errorResponse);
      },
    );
    _helper?.cancelToken = null;
  }

  Future<void> _store(ApiStoreData event) async {
    _helper?.cancelToken = CancelToken();
    ProviderProgressModel? progressModel = _helper?.addProgress(
      title: event.title,
      cancelToken: _helper?.cancelToken,
    );
    _setState(const DataProviderState.loading());

    event.queryParams.body = _helper!.getDataForStore(event.queryParams);

    final DataState<ApiResponseModel<MODEL?>> dataState = await _helper!
        .storeUseCase(
          event: event,
          cancel: _helper?.cancelToken,
          progress: (count, total) {
            injector<ProviderProgressHelper>().updateProgress(
              progressModel?.id,
              total: total,
              count: count,
            );
            _setState(
              DataProviderState.loading(
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
        _setState(
          DataProviderState.successModel(
            data: successState.data,
            response: successState,
          ),
        );
      },
      failure: (error, errorResponse) {
        _emitError(error, errorResponse, id: progressModel?.id);
      },
    );
    _helper?.cancelToken = null;
    if (progressModel != null) {
      injector<ProviderProgressHelper>().removeProgress(progressModel.id);
    }
  }

  Future<void> _storeDeferentApi(ApiStoreData event) async {
    _helper?.initDeferentApiUseCase(event.queryParams, event.interceptors);
    _helper?.cancelToken = CancelToken();
    ProviderProgressModel? progressModel = _helper?.addProgress(
      title: event.title,
      cancelToken: _helper?.cancelToken,
    );
    _setState(const DataProviderState.loading());

    event.queryParams.body = _helper!.getDataForStore(event.queryParams);

    final DataState<MODEL> dataState = await _helper!.getDataDeferentApiUseCase!
        .storeInDeferentApi(
          event: event,
          cancel: _helper?.cancelToken,
          progress: (count, total) {
            injector<ProviderProgressHelper>().updateProgress(
              progressModel?.id,
              total: total,
              count: count,
            );
            _setState(DataProviderState.loading(count: count, total: total));
          },
        );

    dataState.when(
      success: (successState) {
        injector<ProviderProgressHelper>().updateProgress(
          progressModel?.id,
          success: true,
        );
        _setState(DataProviderState.successDeferentApi(data: successState));
      },
      failure: (error, errorResponse) {
        _emitError(error, errorResponse, id: progressModel?.id);
      },
    );
    _helper?.cancelToken = null;
    if (progressModel != null) {
      injector<ProviderProgressHelper>().removeProgress(progressModel.id);
    }
  }

  void _emitError(AppError? error, Response? errorResponse, {String? id}) {
    AppLogger.logError('Emit Error: \n${error?.toJson()}');
    if (id?.isNotNull ?? false) {
      injector<ProviderProgressHelper>().updateProgress(id!, success: false);
    }
    _setState(
      DataProviderState.error(
        error: error,
        errorResponse: errorResponse,
        isUnAuth: error?.code != null && error?.code == HttpStatus.unauthorized,
      ),
    );
    injector<UnauthorizedNotifier>().unauthorized(error?.code, error?.message);
  }

  void _setState(DataProviderState<MODEL> newState) {
    _state = newState;
    notifyListeners();
  }

  // Public methods for easier access
  Future<void> getGeneralData({
    required ApiInfo queryParams,
    String? eventId,
    bool deferentApi = false,
    List<List<String>>? keysData,
    List<Interceptor>? interceptors,
    ApiRequestType apiMethod = ApiRequestType.get,
  }) async {
    await handleEvent(
      ApiDataEvent.general(
        queryParams: queryParams,
        eventId: eventId,
        deferentApi: deferentApi,
        keysData: keysData,
        interceptors: interceptors,
        apiMethod: apiMethod,
      ),
    );
  }

  Future<void> getIndexData({
    required ApiInfo queryParams,
    String? eventId,
    bool listWithoutPagination = false,
    ApiRequestType apiMethod = ApiRequestType.get,
  }) async {
    await handleEvent(
      ApiDataEvent.index(
        queryParams: queryParams,
        eventId: eventId,
        listWithoutPagination: listWithoutPagination,
        apiMethod: apiMethod,
      ),
    );
  }

  Future<void> storeData({
    required ApiInfo queryParams,
    String? id,
    String? title,
    ApiRequestType apiMethod = ApiRequestType.post,
    bool deferentApi = false,
    List<Interceptor>? interceptors,
  }) async {
    await handleEvent(
      ApiDataEvent.store(
        queryParams: queryParams,
        id: id,
        title: title,
        apiMethod: apiMethod,
        deferentApi: deferentApi,
        interceptors: interceptors,
      ),
    );
  }

  Future<void> updateData({
    required ApiInfo queryParams,
    String? id,
    ApiRequestType apiMethod = ApiRequestType.post,
  }) async {
    await handleEvent(
      ApiDataEvent.update(
        queryParams: queryParams,
        id: id,
        apiMethod: apiMethod,
      ),
    );
  }

  // Refresh method
  Future<void> refresh() async {
    if (_event != null) {
      if (_event is ApiIndexData) {
        final indexEvent = _event as ApiIndexData;
        if (indexEvent.listWithoutPagination!) {
          await handleEvent(_event!);
        } else {
          controller?.refresh();
        }
      } else {
        await handleEvent(_event!);
      }
    }
  }

  // Cancel method
  void cancel(String cancelMessage) {
    if (_helper?.cancelToken != null && !_helper!.cancelToken!.isCancelled) {
      _helper?.cancelToken?.cancel(cancelMessage);
    }
  }

  @override
  void dispose() {
    _helper?.disposeController();
    _helper?.cancelToken = null;
    if (_helper?.dioService != null) {
      _helper?.dioService!.dio.close();
      _helper?.dioService = null;
    }
    super.dispose();
  }
}
