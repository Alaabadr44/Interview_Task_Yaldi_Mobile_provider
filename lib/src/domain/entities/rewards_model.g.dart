// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardsModelImpl _$$RewardsModelImplFromJson(Map<String, dynamic> json) =>
    _$RewardsModelImpl(
      vouchers:
          (json['vouchers'] as List<dynamic>?)
              ?.map((e) => Voucher.fromJson(e as Map<String, dynamic>))
              .toList(),
      loyalties:
          (json['loyalties'] as List<dynamic>?)
              ?.map((e) => Loyalty.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$RewardsModelImplToJson(_$RewardsModelImpl instance) =>
    <String, dynamic>{
      'vouchers': instance.vouchers,
      'loyalties': instance.loyalties,
    };

_$VoucherImpl _$$VoucherImplFromJson(Map<String, dynamic> json) =>
    _$VoucherImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      code: json['code'] as String,
      discount: (json['discount'] as num).toInt(),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$VoucherImplToJson(_$VoucherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'code': instance.code,
      'discount': instance.discount,
      'isActive': instance.isActive,
    };

_$LoyaltyImpl _$$LoyaltyImplFromJson(Map<String, dynamic> json) =>
    _$LoyaltyImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      price: json['price'] as String,
      des: json['des'] as String,
      image: json['image'] as String,
      freeMaintenance: (json['freeMaintenance'] as num).toInt(),
      isActive: json['isActive'] as bool,
      services:
          (json['services'] as List<dynamic>)
              .map((e) => Service.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$LoyaltyImplToJson(_$LoyaltyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'des': instance.des,
      'image': instance.image,
      'freeMaintenance': instance.freeMaintenance,
      'isActive': instance.isActive,
      'services': instance.services,
    };

_$ServiceImpl _$$ServiceImplFromJson(Map<String, dynamic> json) =>
    _$ServiceImpl(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
