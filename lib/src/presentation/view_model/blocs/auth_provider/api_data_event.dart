// ignore_for_file: public_member_api_docs, sort_constructors_first
// part of 'api_data_bloc.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../core/utils/api_info.dart';
import '../../../../core/utils/enums.dart';

part 'api_data_event.freezed.dart';

@freezed
class ApiDataEvent with _$ApiDataEvent {
  /// Used to get data from type Pagination and if data is List but not Pagination
  const factory ApiDataEvent.index({
    required ApiInfo queryParams,
    String? eventId,
    @Default(false) bool? listWithoutPagination,
    @Default(ApiRequestType.get) ApiRequestType? apiMethod,
  }) = ApiIndexData;

  // const factory ApiDataEvent.show({required int id}) = ApiShowData;

  /// Used to get data from type Object [Map]
  const factory ApiDataEvent.general({
    required ApiInfo queryParams,
    String? eventId,
    @Default(false) bool? deferentApi,
    List<List<String>>? keysData,
    List<Interceptor>? interceptors,
    @Default(ApiRequestType.get) ApiRequestType? apiMethod,
  }) = ApiGeneralData;

  const factory ApiDataEvent.store({
    required ApiInfo queryParams,
    String? id,
    String? title,
    @Default(ApiRequestType.post) ApiRequestType? apiMethod,
    @Default(false) bool? deferentApi,
    List<Interceptor>? interceptors,
  }) = ApiStoreData;

  const factory ApiDataEvent.update({
    required ApiInfo queryParams,
    String? id,
    @Default(ApiRequestType.post) ApiRequestType? apiMethod,
  }) = ApiUpdateData;
}
