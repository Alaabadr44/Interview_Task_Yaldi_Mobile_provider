/* // Project imports:

// Project imports:
import '../../../core/error/app_exception.dart';
import '../../../core/usecase/usecase.dart';
import '../../../core/utils/data_state.dart';
import '../../../core/utils/local_params.dart';
import '../../repositories/local_app_repository.dart';

class StoreLocalData<MODEL> extends UseCase<Future<DataState<MODEL>>, LocalParams> {
  final LocalAppRepository _localRepository;

  StoreLocalData(this._localRepository);

  @override
  Future<DataState<MODEL>> call({required LocalParams event}) async {
    try {
      final result = await _localRepository.store(event);
      return DataState.success(result as MODEL);
    } on AppException catch (error) {
      return DataState.failure(AppException(error).handleError);
    }
  }
}
 */
