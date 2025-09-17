/* // ignore_for_file: public_member_api_docs, sort_constructors_first

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import '../../../core/error/app_exception.dart';
import '../../../core/usecase/usecase.dart';
import '../../../core/utils/data_state.dart';
import '../../../core/utils/extension.dart';
import '../../../core/utils/local_params.dart';
import '../../repositories/local_app_repository.dart';
import '../../repositories/model_type.dart';

class GetLocalData<T> extends UseCase<Future<DataState<T>>, LocalParams> {
  final LocalAppRepository _localRepository;

  GetLocalData(this._localRepository);

  @override
  Future<DataState<T>> call({required LocalParams event}) async {
    T result;
    try {
      final Box<String> boxData = await _localRepository.get(event);
      result = _getData(boxData, event.dataKey);
      return DataState.success(result);
    } on AppException catch (error) {
      return DataState.failure(AppException(error).handleError);
    }
  }

  T _getData(Box<String> boxData, String? dataKey) {
    Map<String, dynamic> data = {};
    if (dataKey.isNotNull) {
      data.addAll(_convertToMap(boxData, dataKey!));
    } else {
      for (var key in boxData.keys) {
        data.addAll(_convertToMap(boxData, key));
      }
    }
    return ModelType.getModel<T>(data);
  }

  Map<String, dynamic> _convertToMap(Box<String> boxData, String key) {
    String? data = boxData.get(key);
    if (data.isNotNull) {
      return {key: jsonDecode(data!) as Map<String, dynamic>};
    }
    return {key: null};
  }
}
 */
