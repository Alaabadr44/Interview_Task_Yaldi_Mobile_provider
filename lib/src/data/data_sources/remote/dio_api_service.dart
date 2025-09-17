// Package imports:
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

// Project imports:
import '../../../core/utils/api_info.dart';
import '../../../core/utils/app_logger.dart';
import '../../../core/utils/dummy_responses.dart';
import '../../../core/utils/enums.dart';
import '../../../core/utils/file_model.dart';

class DioApiService {
  final Dio dio;
  DioApiService({required this.dio});

  Future<Response> action({
    required ApiInfo query,
    required ApiRequestType methodType,
    ProgressCallback? onSendProgress,
    CancelToken? cancelRequest,
  }) async {
    switch (methodType) {
      case ApiRequestType.post:
        return await _storeFile(
          query: query,
          onSendProgress: onSendProgress,
          cancelRequest: cancelRequest,
        );
      case ApiRequestType.get:
        return await _getData(query: query, cancelRequest: cancelRequest);
      case ApiRequestType.put:
        return await _update(query: query, cancelRequest: cancelRequest);
      case ApiRequestType.delete:
        return await _delete(query: query, cancelRequest: cancelRequest);
    }
  }

  Future<Response> _update({
    required ApiInfo query,
    CancelToken? cancelRequest,
  }) async {
    Map<String, dynamic>? file = extractFiles(query.body);
    FormData formData;
    if (file != null) {
      formData = _handleDataBeforeStore(query.copyWith(files: file));
    } else {
      formData = _handleDataBeforeStore(query);
    }
    if (query.isDummyData!) {
      final dioAdapter = DioAdapter(dio: dio);
      dioAdapter.onPut(
        query.endpoint,
        (server) => server.reply(
          200,
          DummyResponses.dummyRes?[query.endpoint],
          // Reply would wait for one-sec before returning data.
          delay: const Duration(seconds: 1),
        ),
        headers: query.header,
        queryParameters: query.queries,
      );
    }
    final response = await dio.put(
      query.endpoint,
      cancelToken: cancelRequest,
      data: formData,
      queryParameters: query.queries,
    );
    return response;
  }

  Future<Response> _getData({
    required ApiInfo query,
    CancelToken? cancelRequest,
  }) async {
    if (query.isDummyData!) {
      final dioAdapter = DioAdapter(dio: dio);
      dioAdapter.onGet(
        query.endpoint,
        (server) => server.reply(
          200,
          DummyResponses.dummyRes?[query.endpoint],
          // Reply would wait for one-sec before returning data.
          delay: const Duration(seconds: 1),
        ),
        headers: query.header,
        queryParameters: query.queries,
      );
    }
    final response = await dio.get(
      query.endpoint,
      cancelToken: cancelRequest,
      queryParameters: query.queries,
    );
    return response;
  }

  Future<Response> _delete({
    required ApiInfo query,
    CancelToken? cancelRequest,
  }) async {
    if (query.isDummyData!) {
      final dioAdapter = DioAdapter(dio: dio);
      dioAdapter.onDelete(
        query.endpoint,
        (server) => server.reply(
          200,
          {"status": 200, "message": "تم التسجيل بنجاح"},
          // Reply would wait for one-sec before returning data.
          delay: const Duration(seconds: 1),
        ),
        headers: query.header,
        queryParameters: query.queries,
      );
    }
    final response = await dio.delete(
      query.endpoint,
      queryParameters: query.queries,
      cancelToken: cancelRequest,
    );
    return response;
  }

  Future<Response> _storeFile({
    required ApiInfo query,
    ProgressCallback? onSendProgress,
    CancelToken? cancelRequest,
  }) async {
    Map<String, dynamic>? file = extractFiles(query.body);

    // Check if there are files to upload
    if (file != null && file.isNotEmpty) {
      // Use FormData for file uploads
      FormData formData = _handleDataBeforeStore(query.copyWith(files: file));
      if (query.isDummyData!) {
        final dioAdapter = DioAdapter(dio: dio);
        dioAdapter.onPost(
          query.endpoint,
          (server) => server.reply(
            200,
            DummyResponses.dummyRes?[query.endpoint],
            // Reply would wait for one-sec before returning data.
            delay: const Duration(seconds: 1),
          ),
          headers: query.header,
          queryParameters: query.queries,
          data: formData,
        );
      }
      final response = await dio.post(
        query.endpoint,
        onSendProgress: onSendProgress,
        cancelToken: cancelRequest,
        options: Options(
          headers: {'Content-Type': Headers.formUrlEncodedContentType},
        ),
        data: formData,
        queryParameters: query.queries,
      );
      return response;
    } else {
      // Use JSON for regular data (like login)
      if (query.isDummyData!) {
        final dioAdapter = DioAdapter(dio: dio);
        dioAdapter.onPost(
          query.endpoint,
          (server) => server.reply(
            200,
            DummyResponses.dummyRes?[query.endpoint],
            // Reply would wait for one-sec before returning data.
            delay: const Duration(seconds: 1),
          ),
          headers: query.header,
          queryParameters: query.queries,
          data: query.body,
        );
      }
      final response = await dio.post(
        query.endpoint,
        onSendProgress: onSendProgress,
        cancelToken: cancelRequest,
        data: query.body, // Send as JSON
        queryParameters: query.queries,
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return response;
    }
  }

  Map<String, dynamic>? extractFiles(Map<String, dynamic>? body) {
    Map<String, dynamic> files = {};
    if (body != null) {
      for (var element in body.entries) {
        if (element.value is List<FileModel>) {
          files[element.key] = element.value;
          // break;
        } else if (element.value is FileModel) {
          files[element.key] = element.value;
          // break;
        }
      }
      if (files.isNotEmpty) {
        files.forEach((key, value) {
          if (value is List<FileModel>) {
            value.removeWhere(
              (element) => element.file.path.startsWith('http'),
            );
            // for (var element in value) {
            //   if (element.file.path.startsWith('http')) {
            //     value.remove(element);
            //   }
            // }
          } else if (value is FileModel) {
            if (value.file.path.startsWith('http')) {
              files[key] = null;
            }
          }
        });
      }
    }
    return files;
  }

  FormData _handleDataBeforeStore(ApiInfo query) {
    Map<String, dynamic> data = query.body ?? {};

    if (query.files != null && query.files!.isNotEmpty) {
      query.files?.forEach((key, value) {
        if (value is List<FileModel>) {
          List<MultipartFile> files = [];
          for (var i = 0; i < value.length; i++) {
            files.add(
              MultipartFile.fromFileSync(
                value[i].file.path,
                filename: '${i + 1}-${value[i].name}',
              ),
            );
          }
          data[key] = files;
        } else if (value is FileModel) {
          data[key] = MultipartFile.fromFileSync(
            value.file.path,
            filename: value.name,
          );
        } else {
          data.remove(key);
        }
      });
    }
    AppLogger.logVerbose(data);
    return FormData.fromMap(data, ListFormat.multiCompatible);
  }
}
