// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarItemModelImpl _$$CarItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$CarItemModelImpl(
  id: json['id'] as String?,
  name: json['name'] as String?,
  desc: json['desc'] as String?,
  image: json['image'] as String?,
  size: json['size'] as String?,
  need: json['need'] as String?,
  price: (json['price'] as num?)?.toInt(),
  doorCount: (json['doorCount'] as num?)?.toInt(),
  color: json['color'] as String?,
  paletteNumber: (json['paletteNumber'] as num?)?.toInt(),
  isFavorite: json['isFavorite'] as bool?,
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
  deliveryTime:
      json['deliveryTime'] == null
          ? null
          : Insurance.fromJson(json['deliveryTime'] as Map<String, dynamic>),
  carGuarantee:
      json['carGuarantee'] == null
          ? null
          : Insurance.fromJson(json['carGuarantee'] as Map<String, dynamic>),
  deductibleInsurance:
      json['deductibleInsurance'] == null
          ? null
          : Insurance.fromJson(
            json['deductibleInsurance'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$CarItemModelImplToJson(_$CarItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'image': instance.image,
      'size': instance.size,
      'need': instance.need,
      'price': instance.price,
      'doorCount': instance.doorCount,
      'color': instance.color,
      'paletteNumber': instance.paletteNumber,
      'isFavorite': instance.isFavorite,
      'features': instance.features,
      'deliveryTime': instance.deliveryTime,
      'carGuarantee': instance.carGuarantee,
      'deductibleInsurance': instance.deductibleInsurance,
    };

_$FeatureImpl _$$FeatureImplFromJson(Map<String, dynamic> json) =>
    _$FeatureImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$FeatureImplToJson(_$FeatureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };

_$InsuranceImpl _$$InsuranceImplFromJson(Map<String, dynamic> json) =>
    _$InsuranceImpl(
      id: json['id'] as String?,
      key: json['key'] as String?,
      desc: json['desc'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$InsuranceImplToJson(_$InsuranceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'desc': instance.desc,
      'title': instance.title,
    };
