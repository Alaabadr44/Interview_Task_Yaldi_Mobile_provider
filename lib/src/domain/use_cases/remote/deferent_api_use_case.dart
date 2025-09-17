// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../../../core/error/app_exception.dart';
import '../../../core/usecase/usecase.dart';
import '../../../core/utils/data_state.dart';
import '../../../core/utils/extension.dart';
import '../../../presentation/view_model/blocs/auth_provider/api_data_event.dart';
import '../../repositories/remote_app_repository.dart';
import 'parsing_power.dart';

class DeferentApiUseCase<T> extends UseCase<Future<DataState<T>>, ApiDataEvent> {
  final RemoteAppRepository _appRepository;

  DeferentApiUseCase(this._appRepository);

  @override
  Future<DataState<T>> call({required ApiDataEvent event, CancelToken? cancel}) async {
    try {
      Response response = await _appRepository.callApi(event, cancelRequest: cancel);
      var data = response.data;
      if (event is ApiGeneralData && event.keysData.isNotNull) {
        Map<String, dynamic> filterData = {};
        for (var list in event.keysData!) {
          var result = response.data;
          for (var key in list) {
            if (result[key] is List) {
              result = result[key].first;
            } else if (result[key] is! Map) {
              result = {key: result[key]};
            } else {
              result = result[key];
            }
          }
          filterData.addAll(result);
        }
        data = filterData;
        /* event.keysData?.forEach((element) {
          data = data[element];
        }); */
      }
      final responseModel = parseModel<T>(data);
      return DataState.success(responseModel);
    } on AppException catch (error) {
      return DataState.failure(errorResponse: AppException(error).response);
    } on TypeError catch (error) {
      return DataState.failure(errorResponse: AppException(error).response);
    }
  }

  Future<DataState<T>> storeInDeferentApi({
    required ApiDataEvent event,
    ProgressCallback? progress,
    CancelToken? cancel,
  }) async {
    try {
      final Response response = await _appRepository.callApi(event, onSendProgress: progress!, cancelRequest: cancel);
      final responseModel = parseModel<T>(response.data);
      return DataState.success(responseModel);
    } on AppException catch (error) {
      return DataState.failure(errorResponse: AppException(error).response);
    } on TypeError catch (error) {
      return DataState.failure(errorResponse: AppException(error).response);
    } catch (error) {
      return DataState.failure(error: AppException(error).handleError, errorResponse: null);
    }
  }
}
