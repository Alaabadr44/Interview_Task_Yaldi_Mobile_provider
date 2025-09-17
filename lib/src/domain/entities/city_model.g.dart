// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityModelImpl _$$CityModelImplFromJson(Map<String, dynamic> json) =>
    _$CityModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      area: AreaModel.fromJson(json['area'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CityModelImplToJson(_$CityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'area': instance.area,
    };

_$AreaModelImpl _$$AreaModelImplFromJson(Map<String, dynamic> json) =>
    _$AreaModelImpl(
      type: json['type'] as String,
      coordinates:
          (json['coordinates'] as List<dynamic>)
              .map(
                (e) =>
                    (e as List<dynamic>)
                        .map(
                          (e) =>
                              (e as List<dynamic>)
                                  .map((e) => (e as num).toDouble())
                                  .toList(),
                        )
                        .toList(),
              )
              .toList(),
    );

Map<String, dynamic> _$$AreaModelImplToJson(_$AreaModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
