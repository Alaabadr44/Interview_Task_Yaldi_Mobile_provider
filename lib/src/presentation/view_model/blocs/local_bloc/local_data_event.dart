// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../core/utils/local_params.dart';

part 'local_data_event.freezed.dart';

@freezed
class LocalDataEvent with _$LocalDataEvent {
  const factory LocalDataEvent.store({required LocalParams localParams}) = LocalStoreData;
  const factory LocalDataEvent.index({required LocalParams localParams}) = LocalIndexData;

  const factory LocalDataEvent.remove({required LocalParams localParams}) = LocalRemoveData;

  const factory LocalDataEvent.clear({required LocalParams localParams}) = LocalClearData;
}
