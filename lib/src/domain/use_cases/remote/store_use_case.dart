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

class StoreUseCase<T> extends UseCase<Future<DataState<ApiResponseModel<T?>>>, ApiDataEvent> {
  final RemoteAppRepository _appRepository;

  StoreUseCase(this._appRepository);

  @override
  Future<DataState<ApiResponseModel<T?>>> call(
      {required ApiDataEvent event, ProgressCallback? progress, CancelToken? cancel}) async {
    try {
      final Response response = await _appRepository.callApi(event, onSendProgress: progress!, cancelRequest: cancel);
      // final responseModel = await compute(
      //   parseApiResponse<T>,
      //   response.data,
      // );
      final responseModel = parseApiResponse<T>(response.data);
      // ApiResponseModel<T?>.fromJson(
      //   response.data,
      //   (json) => ModelType.getModel<T>(json),
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
