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

class GetListDataUseCase<T> extends UseCase<Future<DataState<ApiResponseModel<List<T>>>>, ApiDataEvent> {
  final RemoteAppRepository _appRepository;

  GetListDataUseCase(this._appRepository);

  @override
  Future<DataState<ApiResponseModel<List<T>>>> call({required ApiDataEvent event, CancelToken? cancel}) async {
    try {
      Response response = await _appRepository.callApi(event, cancelRequest: cancel);

      // final responseList = await compute(
      //   parseApiResponse<List>,
      //   response.data,
      // );
      // ApiResponseModel<List<T>> responseModel = await compute(
      //   parseApiList<T>,
      //   responseList,
      // );

      final responseList = parseApiResponse<List>(response.data);
      final responseModel = parseApiList<T>(responseList);

      // ApiResponseModel<List<T>>.fromJson(
      //   response.data,
      //   (json) => (json as List).map((e) => ModelType.getModel<T>(e)!).toList().cast<T>(),
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
