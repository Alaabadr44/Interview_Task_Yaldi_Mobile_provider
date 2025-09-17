// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatePackageModelImpl _$$DatePackageModelImplFromJson(
  Map<String, dynamic> json,
) => _$DatePackageModelImpl(
  id: json['id'] as String,
  duration: (json['duration'] as num).toInt(),
  unit: json['unit'] as String,
);

Map<String, dynamic> _$$DatePackageModelImplToJson(
  _$DatePackageModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'duration': instance.duration,
  'unit': instance.unit,
};
