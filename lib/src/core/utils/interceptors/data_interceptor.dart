// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/core/utils/enums.dart';
import 'package:flutter_application_1/src/core/utils/extension.dart';

import '../../config/injector.dart';
import '../../services/dio_service.dart';
import '../../services/storage_service.dart';
import '../../services/user_service.dart';
import '../app_logger.dart';
import '../constant.dart';

 String _kRefreshEndpoint = ApiRoute.refresh.route;

class DataInterceptor extends Interceptor {
  DataInterceptor();

  bool isBackEndDidHandelResSchema = false;
  static bool _isRefreshing = false;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(apiHeader);
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final Map<String, dynamic>? res = _asMap(response.data);
    if (res == null) {
      handler.next(response);
      return;
    }

    if (_isUnauthorized(response.statusCode)) {
      _normalizeUnauthorizedResponse(response, res);
    } else if (_isSuccess(response.statusCode)) {
      _normalizeSuccessResponse(response, res);
    }

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    AppLogger.logDebug("onError status code: ${err.response?.statusCode}");

    // Attempt refresh on 401 and retry the original request
    if (_isUnauthorized(err.response?.statusCode) && !_isRefreshing) {
      final RequestOptions failedRequest = err.requestOptions;

      // Avoid loops with the refresh endpoint itself
      if (failedRequest.path.contains(_kRefreshEndpoint)) {
        _normalizeUnauthorizedError(err);
        handler.next(err);
        return;
      }

      final String? refreshToken = UserService.currentUser?.refreshToken;
      if (refreshToken?.isNotNull ?? false) {
        _isRefreshing = true;
        () async {
          try {
            final Response? retry = await _tryRefreshAndRetry(
              failedRequest: failedRequest,
              refreshToken: refreshToken!,
            );
            if (retry != null) {
              _isRefreshing = false;
              handler.resolve(retry);
              return;
            }
          } catch (e) {
            AppLogger.logError('Refresh token failed: $e');
          } finally {
            _isRefreshing = false;
          }
          // Fallback to normalized error
          _normalizeUnauthorizedError(err);
          handler.next(err);
        }();
        return;
      }
    }

    // Fallback normalization for 401 when no refresh flow is possible
    _normalizeUnauthorizedError(err);
    handler.next(err);
  }

  // Helpers
  bool _isSuccess(int? code) => code == 200 || code == 201;
  bool _isUnauthorized(int? code) => code == 401;

  Map<String, dynamic>? _asMap(dynamic data) {
    if (data is Map<String, dynamic>) return data;
    return null;
  }

  void _normalizeUnauthorizedResponse(
    Response response,
    Map<String, dynamic> res,
  ) {
    res.addAll({
      "data": null,
      "message": res['message'],
      "code": response.statusCode,
    });
    response.data = res;
  }

  void _normalizeSuccessResponse(Response response, Map<String, dynamic> res) {
    if (!res.containsKey("data")) {
      final Map<String, dynamic> data = <String, dynamic>{};
      for (final entry in res.entries) {
        if (entry.key != "data" &&
            entry.key != "message" &&
            entry.key != "code") {
          data[entry.key] = entry.value;
        }
      }
      res.addAll({
        "data": data,
        "message": "success",
        "code": 200,
        "status": "success",
      });
      response.data = res;
      return;
    }

    final dynamic data = res["data"];
    if (data is Map && data.isNotEmpty) {
      final dynamic firstValue = (data as Map).entries.first.value;
      if (firstValue is List) {
        response.data.addAll({
          "data": firstValue,
          "message": "success",
          "code": 200,
          if ((data).containsKey("pagination")) ...{"meta": data["pagination"]},
        });
      }
    }
  }

  void _normalizeUnauthorizedError(DioException err) {
    if (!_isUnauthorized(err.response?.statusCode) ||
        isBackEndDidHandelResSchema)
      return;
    final Map<String, dynamic>? res = _asMap(err.response?.data);
    if (res == null) return;

    err.response?.statusCode = 422;
    res.addAll({"data": null, "message": res['message'], "code": 422});
    err.response?.data = res;
  }

  Future<Response?> _tryRefreshAndRetry({
    required RequestOptions failedRequest,
    required String refreshToken,
  }) async {
    final String? newAccessToken = await _performRefresh(refreshToken);
    if (newAccessToken == null || newAccessToken.isEmpty) return null;

    // Update global token
    UserService.accessToken = newAccessToken;
    await injector<StorageService>().saveString(kUserToken, newAccessToken);

    final Options newOptions = Options(
      method: failedRequest.method,
      headers: Map<String, dynamic>.from(failedRequest.headers)..update(
        'Authorization',
        (value) => 'Bearer $newAccessToken',
        ifAbsent: () => 'Bearer $newAccessToken',
      ),
      responseType: failedRequest.responseType,
      contentType: failedRequest.contentType,
      sendTimeout: failedRequest.sendTimeout,
      receiveTimeout: failedRequest.receiveTimeout,
    );

    return injector<DioService>().dio.request(
      failedRequest.path,
      data: failedRequest.data,
      queryParameters: failedRequest.queryParameters,
      options: newOptions,
      cancelToken: failedRequest.cancelToken,
      onReceiveProgress: failedRequest.onReceiveProgress,
      onSendProgress: failedRequest.onSendProgress,
    );
  }

  Future<String?> _performRefresh(String refreshToken) async {
    final Dio tempDio = Dio(DioService.baseOptions)..interceptors.clear();
    final Response res = await tempDio.post(
      _kRefreshEndpoint,
      data: {'refreshToken': refreshToken},
      options: Options(headers: {'Authorization': null}),
    );
    if (!_isSuccess(res.statusCode)) return null;

    final dynamic body = res.data;
    if (body is Map && body['accessToken'] is String) {
      return body['accessToken'] as String;
    }
    if (body is Map &&
        body['data'] is Map &&
        body['data']['accessToken'] is String) {
      return body['data']['accessToken'] as String;
    }
    return null;
  }
}
