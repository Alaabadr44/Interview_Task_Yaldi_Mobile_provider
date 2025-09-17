// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../../../core/error/app_exception.dart';
import '../../../core/usecase/usecase.dart';
import '../../../core/utils/data_state.dart';
import '../../../data/models/api_response_model.dart';
import '../../../presentation/view_model/blocs/auth_provider/auth_event.dart';
import '../../repositories/remote_app_repository.dart';
import 'parsing_power.dart';

class AuthUserUseCase<T> extends UseCase<Future<DataState<ApiResponseModel<T?>>>, AuthEvent> {
  final RemoteAppRepository _appRepository;

  AuthUserUseCase(this._appRepository);

  @override
  Future<DataState<ApiResponseModel<T?>>> call(
      {required AuthEvent event, ProgressCallback? progress, CancelToken? cancel}) async {
    try {
      final Response response = await _appRepository.auth(event, progress!, cancel);
      // final responseModel = await compute(
      //   parseApiResponse<T>,
      //   response.data,
      // );

      final responseModel = parseApiResponse<T>(response.data);
      return DataState.success(responseModel);
    } on AppException catch (error) {
      return DataState.failure(error: AppException(error).handleError, errorResponse: AppException(error).response);
    } on TypeError catch (error) {
      return DataState.failure(error: AppException(error).handleError, errorResponse: AppException(error).response);
    } catch (error) {
      return DataState.failure(error: AppException(error).handleError, errorResponse: null);
    }
  }
}
