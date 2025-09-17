// Package imports:
import 'package:dio/dio.dart';

import '../../../../core/error/error.dart';
import '../../../../data/models/api_response_model.dart';

// Project imports:

enum DataProviderStateType {
  idle,
  loading,
  successModel,
  successDeferentApi,
  successList,
  successPagination,
  error,
}

class DataProviderState<T> {
  final DataProviderStateType type;
  final T? data;
  final List<T>? listData;
  final ApiResponseModel<T?>? response;
  final ApiResponseModel<List<T>>? paginationResponse;
  final ApiResponseModel<List<T>?>? listResponse;
  final AppError? error;
  final Response? errorResponse;
  final bool isUnAuth;
  final int? count;
  final int? total;
  final bool isInit;

  const DataProviderState({
    required this.type,
    this.data,
    this.listData,
    this.response,
    this.paginationResponse,
    this.listResponse,
    this.error,
    this.errorResponse,
    this.isUnAuth = false,
    this.count,
    this.total,
    this.isInit = true,
  });

  // Convenience constructors
  const DataProviderState.idle()
    : type = DataProviderStateType.idle,
      data = null,
      listData = null,
      response = null,
      paginationResponse = null,
      listResponse = null,
      error = null,
      errorResponse = null,
      isUnAuth = false,
      count = null,
      total = null,
      isInit = true;

  const DataProviderState.loading({int? count, int? total, bool isInit = true})
    : type = DataProviderStateType.loading,
      data = null,
      listData = null,
      response = null,
      paginationResponse = null,
      listResponse = null,
      error = null,
      errorResponse = null,
      isUnAuth = false,
      count = count,
      total = total,
      isInit = isInit;

  const DataProviderState.successModel({
    T? data,
    required ApiResponseModel<T?> response,
  }) : type = DataProviderStateType.successModel,
       data = data,
       listData = null,
       response = response,
       paginationResponse = null,
       listResponse = null,
       error = null,
       errorResponse = null,
       isUnAuth = false,
       count = null,
       total = null,
       isInit = true;

  const DataProviderState.successDeferentApi({required T data})
    : type = DataProviderStateType.successDeferentApi,
      data = data,
      listData = null,
      response = null,
      paginationResponse = null,
      listResponse = null,
      error = null,
      errorResponse = null,
      isUnAuth = false,
      count = null,
      total = null,
      isInit = true;

  const DataProviderState.successList({
    List<T>? data,
    required ApiResponseModel<List<T>?> response,
  }) : type = DataProviderStateType.successList,
       data = null,
       listData = data,
       response = null,
       paginationResponse = null,
       listResponse = response,
       error = null,
       errorResponse = null,
       isUnAuth = false,
       count = null,
       total = null,
       isInit = true;

  const DataProviderState.successPagination({
    List<T>? data,
    required ApiResponseModel<List<T>> response,
  }) : type = DataProviderStateType.successPagination,
       data = null,
       listData = data,
       response = null,
       paginationResponse = response,
       listResponse = null,
       error = null,
       errorResponse = null,
       isUnAuth = false,
       count = null,
       total = null,
       isInit = true;

  const DataProviderState.error({
    required AppError? error,
    required Response? errorResponse,
    required bool isUnAuth,
  }) : type = DataProviderStateType.error,
       data = null,
       listData = null,
       response = null,
       paginationResponse = null,
       listResponse = null,
       error = error,
       errorResponse = errorResponse,
       isUnAuth = isUnAuth,
       count = null,
       total = null,
       isInit = true;

  // Helper methods
  bool get isIdle => type == DataProviderStateType.idle;
  bool get isLoading => type == DataProviderStateType.loading;
  bool get isSuccess =>
      type == DataProviderStateType.successModel ||
      type == DataProviderStateType.successDeferentApi ||
      type == DataProviderStateType.successList ||
      type == DataProviderStateType.successPagination;
  bool get isError => type == DataProviderStateType.error;

  // When methods for pattern matching
  R when<R>({
    required R Function() idle,
    required R Function(int? count, int? total, bool isInit) loading,
    required R Function(T? data, ApiResponseModel<T?> response) successModel,
    required R Function(T data) successDeferentApi,
    required R Function(List<T>? data, ApiResponseModel<List<T>?> response)
    successList,
    required R Function(List<T>? data, ApiResponseModel<List<T>> response)
    successPagination,
    required R Function(AppError? error, Response? errorResponse, bool isUnAuth)
    error,
  }) {
    switch (type) {
      case DataProviderStateType.idle:
        return idle();
      case DataProviderStateType.loading:
        return loading(count, total, isInit);
      case DataProviderStateType.successModel:
        return successModel(data, response!);
      case DataProviderStateType.successDeferentApi:
        return successDeferentApi(data as T);
      case DataProviderStateType.successList:
        return successList(listData, listResponse!);
      case DataProviderStateType.successPagination:
        return successPagination(listData, paginationResponse!);
      case DataProviderStateType.error:
        return error(this.error, errorResponse, isUnAuth);
    }
  }

  // MaybeWhen: optional handlers with a required fallback
  R maybeWhen<R>({
    R Function()? idle,
    R Function(int? count, int? total, bool isInit)? loading,
    R Function(T? data, ApiResponseModel<T?> response)? successModel,
    R Function(T data)? successDeferentApi,
    R Function(List<T>? data, ApiResponseModel<List<T>?> response)? successList,
    R Function(List<T>? data, ApiResponseModel<List<T>> response)?
    successPagination,
    R Function(AppError? error, Response? errorResponse, bool isUnAuth)? error,
    required R Function() orElse,
  }) {
    switch (type) {
      case DataProviderStateType.idle:
        return idle != null ? idle() : orElse();
      case DataProviderStateType.loading:
        return loading != null ? loading(count, total, isInit) : orElse();
      case DataProviderStateType.successModel:
        return successModel != null ? successModel(data, response!) : orElse();
      case DataProviderStateType.successDeferentApi:
        return successDeferentApi != null
            ? successDeferentApi(data as T)
            : orElse();
      case DataProviderStateType.successList:
        return successList != null
            ? successList(listData, listResponse!)
            : orElse();
      case DataProviderStateType.successPagination:
        return successPagination != null
            ? successPagination(listData, paginationResponse!)
            : orElse();
      case DataProviderStateType.error:
        return error != null
            ? error(this.error, errorResponse, isUnAuth)
            : orElse();
    }
  }

  // Copy method for state updates
  DataProviderState<T> copyWith({
    DataProviderStateType? type,
    T? data,
    List<T>? listData,
    ApiResponseModel<T?>? response,
    ApiResponseModel<List<T>>? paginationResponse,
    ApiResponseModel<List<T>?>? listResponse,
    AppError? error,
    Response? errorResponse,
    bool? isUnAuth,
    int? count,
    int? total,
    bool? isInit,
  }) {
    return DataProviderState<T>(
      type: type ?? this.type,
      data: data ?? this.data,
      listData: listData ?? this.listData,
      response: response ?? this.response,
      paginationResponse: paginationResponse ?? this.paginationResponse,
      listResponse: listResponse ?? this.listResponse,
      error: error ?? this.error,
      errorResponse: errorResponse ?? this.errorResponse,
      isUnAuth: isUnAuth ?? this.isUnAuth,
      count: count ?? this.count,
      total: total ?? this.total,
      isInit: isInit ?? this.isInit,
    );
  }
}
