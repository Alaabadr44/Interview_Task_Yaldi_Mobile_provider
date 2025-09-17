// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/presentation/view_model/blocs/auth_provider/api_data_event.dart';
import 'package:flutter_application_1/src/presentation/view_model/blocs/auth_provider/auth_event.dart';

// Project imports:

abstract class RemoteAppRepository {
  // Future<HttpResponse> getIndexData(QueryParams params);
  // Future<HttpResponse> getShowData(QueryParams params);
  // Future<HttpResponse> getGeneralData(ApiDataEvent event);
  // Future<HttpResponse> store(QueryParams query);
  Future<Response> callApi(ApiDataEvent event, {ProgressCallback? onSendProgress, CancelToken? cancelRequest});
  Future<Response> auth(AuthEvent event, ProgressCallback onSendProgress, [CancelToken? cancelRequest]);
}
