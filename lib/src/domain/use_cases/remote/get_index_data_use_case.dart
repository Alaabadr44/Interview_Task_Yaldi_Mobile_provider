// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../../../core/error/app_exception.dart';
import '../../../core/usecase/usecase.dart';
import '../../../core/utils/data_state.dart';
import '../../../data/models/api_response_model.dart';
import '../../../presentation/view_model/blocs/auth_provider/api_data_event.dart';
import '../../repositories/remote_app_repository.dart';
import 'parsing_power.dart';

class GetIndexDataUseCase<T> extends UseCase<Future<DataState<ApiResponseModel<List<T>>>>, ApiDataEvent> {
  final RemoteAppRepository _appRepository;

  GetIndexDataUseCase(this._appRepository);

  @override
  Future<DataState<ApiResponseModel<List<T>>>> call({required ApiDataEvent event, CancelToken? cancel}) async {
    try {
      Response response = await _appRepository.callApi(event, cancelRequest: cancel);
      // final apiResponseParsing = await compute(
      //   parseApiResponse<ApiPaginationModel>,
      //   response.data,
      // );
      // ApiResponseModel<ApiPaginationModel<T>> responseModel = await compute(
      //   parseApiPagination<T>,
      //   apiResponseParsing,
      // );

      final apiResponseParsing = parseApiResponse<List>(response.data);
      final responseModel = parseApiList<T>(apiResponseParsing);
      // final responseModel = parseApiPagination<T>(apiResponseParsing, event.queryParams.filter);

      // ApiResponseModel<ApiPaginationModel<T>>.fromJson(
      //   response.data,
      //   (json) => ApiPaginationModel<T>.fromJson(
      //     json as Map<String, dynamic>,
      //     (json) => ModelType.getModel<T>(json)!,
      //   ),
      // );
      return DataState.success(responseModel);
    } on AppException catch (error, s) {
      log('Stack Trace  ', stackTrace: s);

      return DataState.failure(error: AppException(error).handleError, errorResponse: AppException(error).response);
    } on TypeError catch (error, s) {
      log('Stack Trace  ', stackTrace: s);

      return DataState.failure(error: AppException(error).handleError, errorResponse: AppException(error).response);
    } catch (error, s) {
      log('Stack Trace  ', stackTrace: s);

      return DataState.failure(error: AppException(error).handleError, errorResponse: null);
    }
  }
}
