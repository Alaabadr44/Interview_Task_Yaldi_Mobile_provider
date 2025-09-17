// ignore_for_file: public_member_api_docs, sort_constructors_first

// Package imports:
import 'dart:developer';

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' show PrettyDioLogger;

// Project imports:
import '../utils/app_logger.dart';
import '../utils/constant.dart';
import '../utils/extension.dart';
import '../utils/interceptors/data_interceptor.dart';
import '../utils/interceptors/log_interceptor.dart' as interceptor;
import 'service_interface.dart';

class DioService implements ServiceInterface {
  late final Dio dio;
  static late BaseOptions baseOptions;

  @override
  String get name => "Dio Service";

  @override
  Future<void> initializeService({BaseOptions? newBaseOptions}) async {
    baseOptions = newBaseOptions ?? initBaseOptions();
    // initBaseOptions();
    dio = Dio(baseOptions);
    dio.interceptors.addAll([
      ChuckerDioInterceptor(),
      DataInterceptor(),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
        logPrint: (object) {
          log("Api print $object",name: "PrettyDioLogger");
        },
      )
      // interceptor.LogInterceptor(),
    ]);
    AppLogger.logDebug('$name Success initialization');
  }

  static BaseOptions initBaseOptions({
    String? baseUrl,
    Map<String, dynamic>? header,
  }) {
    Map<String, dynamic> headers = {
      'Accept': 'application/json',
      'Connection': 'keep-alive',
    };
    header != null && header.isNotEmpty ? headers.addAll(header) : null;
    baseOptions = BaseOptions(
      baseUrl: baseUrl ?? kBaseUrl,
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 30),
      sendTimeout: const Duration(minutes: 15),
      receiveDataWhenStatusError: true,
      contentType: "application/json",
      headers: headers,
    );
    return baseOptions;
  }

  // singleton
  // DioService.init();
  // static DioService? _instance;
  // factory DioService() => _instance ??= DioService.init();

  DioService copy(
      {required BaseOptions newBaseOptions,
      List<Interceptor>? newInterceptors}) {
    final dioService = DioService()
      ..initializeService(newBaseOptions: newBaseOptions)
      ..dio.interceptors.clear()
      ..dio.interceptors.addAll([
        if (newInterceptors.isNotNull) ...newInterceptors!,
        interceptor.LogInterceptor()
      ]);
    // dioService.dio.interceptors.clear();
    // dioService.dio.interceptors.add(interceptor.LogInterceptor());
    // newInterceptors.isNotNull ? dioService.dio.interceptors.addAll(newInterceptors!) : null;
    return dioService;
  }
}
