/* // ignore_for_file: public_member_api_docs, sort_constructors_first

// Package imports:
import 'package:hive/hive.dart';

// Project imports:
import '../../core/error/app_exception.dart';
import '../../core/utils/local_params.dart';
import '../../domain/repositories/local_app_repository.dart';
import '../data_sources/local/hive_local_service.dart';

class LocalAppRepositoryImpl implements LocalAppRepository {
  final HiveLocalService _localService;
  LocalAppRepositoryImpl(this._localService);

  @override
  Future<bool> clear() async {
    try {
      return await _localService.clear();
    } catch (error) {
      throw (AppException(error));
    }
  }

  @override
  Future<Box<String>> get(LocalParams params) async {
    try {
      Box<String>? b = await _localService.getBox(box: params.boxName);
      if (b != null) {
        return b;
      }
      throw (AppException(HiveError('Box not found')));
    } catch (error) {
      throw (AppException(error));
    }
  }

  @override
  Future<bool> removeBox(LocalParams params) async {
    try {
      return await _localService.deleteBox(box: params.boxName);
    } catch (error) {
      throw (AppException(error));
    }
  }

  @override
  Future<bool> removeKey(LocalParams params) async {
    try {
      return await _localService.deleteKey(box: params.boxName, key: params.dataKey!);
    } catch (error) {
      throw (AppException(error));
    }
  }

  @override
  Future<bool> store(LocalParams params) async {
    try {
      return await _localService.store(box: params.boxName, key: params.dataKey!, value: params.dataValue);
    } catch (error) {
      throw (AppException(error));
    }
  }
}
 */
