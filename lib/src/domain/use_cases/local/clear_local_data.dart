/* // Project imports:

// Project imports:
import '../../../core/error/app_exception.dart';
import '../../../core/usecase/usecase.dart';
import '../../../core/utils/data_state.dart';
import '../../repositories/local_app_repository.dart';

class ClearLocalData<MODEL> extends UseCase<Future<DataState<MODEL>>, void> {
  final LocalAppRepository _localRepository;

  ClearLocalData(this._localRepository);

  @override
  Future<DataState<MODEL>> call({required void event}) async {
    try {
      final result = await _localRepository.clear();
      return DataState.success(result as MODEL);
    } on AppException catch (error) {
      return DataState.failure(AppException(error).handleError);
    }
  }
}
 */
