// part of 'api_data_bloc.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../core/error/error.dart';
import 'local_data_event.dart';

part 'local_data_state.freezed.dart';

@freezed
class LocalDataState<T> with _$LocalDataState<T> {
  const factory LocalDataState.idle() = LocalDataIdle;

  const factory LocalDataState.loading({required LocalDataEvent event}) = LocalDataLoading;

  const factory LocalDataState.success({
    required T? data,
    required LocalDataEvent event,
  }) = LocalDataSuccess<T>;

  const factory LocalDataState.error({required AppError? error, required LocalDataEvent event}) = LocalDataError<T>;
}
