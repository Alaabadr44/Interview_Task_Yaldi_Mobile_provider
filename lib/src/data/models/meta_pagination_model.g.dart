// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaPaginationModelImpl _$$MetaPaginationModelImplFromJson(
  Map<String, dynamic> json,
) => _$MetaPaginationModelImpl(
  currentPage: (json['current_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
);

Map<String, dynamic> _$$MetaPaginationModelImplToJson(
  _$MetaPaginationModelImpl instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'per_page': instance.perPage,
  'total': instance.total,
  'last_page': instance.lastPage,
};
