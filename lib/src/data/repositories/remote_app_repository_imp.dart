// Dart imports:
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../../core/error/app_exception.dart';
import '../../core/utils/enums.dart';
import '../../domain/repositories/remote_app_repository.dart';
import '../../presentation/view_model/blocs/auth_provider/auth_event.dart';
import '../../presentation/view_model/blocs/auth_provider/api_data_event.dart';
import '../data_sources/remote/dio_api_service.dart';

class RemoteAppRepositoryImp extends RemoteAppRepository {
  // final RetrofitApiService _apiService;
  final DioApiService _dioApiService;

  RemoteAppRepositoryImp(this._dioApiService);

  // @override
  // Future<HttpResponse> getGeneralData(ApiDataEvent event) async {
  //   try {
  //     final response = await _apiService.getData(endpoint: event.queryParams.endpoint, queries: event.queryParams.queries
  //         // page: params.page,
  //         // pageSize: params.pageSize,
  //         // userToken: getToken,
  //         );
  //     if (response.response.statusCode == HttpStatus.ok) {
  //       return response;
  //     }
  //     throw (AppException(response.data));
  //   } catch (error) {
  //     throw (AppException(error));
  //   }
  // }

  // @override
  // Future<HttpResponse> store(QueryParams query) async{
  //   try {
  //     final response = await _apiService.store(
  //       // userToken: getToken,
  //       endpoint: query.endpoint,
  //       body: query.body!,
  //     );
  //     if(response.response.statusCode == HttpStatus.ok){
  //       return response;
  //     }
  //     throw(AppException(response.data));
  //   } catch (error) {
  //     throw(AppException(error));
  //   }
  // }

  @override
  Future<Response> callApi(
    ApiDataEvent event, {
    ProgressCallback? onSendProgress,
    CancelToken? cancelRequest,
  }) async {
    try {
      final response = await _dioApiService.action(
        query: event.queryParams,
        onSendProgress: onSendProgress,
        cancelRequest: cancelRequest,
        methodType: event.apiMethod!,
      );
      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return response;
      }
      throw (AppException(response.data));
    } catch (error) {
      throw (AppException(error));
    }
  }

  @override
  Future<Response> auth(
    AuthEvent event,
    ProgressCallback onSendProgress, [
    CancelToken? cancelRequest,
  ]) async {
    try {
      final response = await _dioApiService.action(
        query: event.authData,
        onSendProgress: onSendProgress,
        cancelRequest: cancelRequest,
        methodType: ApiRequestType.post,
      );
      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return response;
      }
      throw (AppException(response.data));
    } catch (error) {
      throw (AppException(error));
    }
  }
}
