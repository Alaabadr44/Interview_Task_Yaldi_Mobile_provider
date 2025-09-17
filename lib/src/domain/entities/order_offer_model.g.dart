// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderOfferModelImpl _$$OrderOfferModelImplFromJson(
  Map<String, dynamic> json,
) => _$OrderOfferModelImpl(
  id: json['id'] as String,
  carPrice: json['carPrice'] as num,
  deliveryAmount: json['deliveryAmount'] as num,
  vatPercent: json['vatPercent'] as num,
  vatAmount: json['vatAmount'] as num,
  discount: json['discount'] as num,
  finalPrice: json['finalPrice'] as num,
);

Map<String, dynamic> _$$OrderOfferModelImplToJson(
  _$OrderOfferModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'carPrice': instance.carPrice,
  'deliveryAmount': instance.deliveryAmount,
  'vatPercent': instance.vatPercent,
  'vatAmount': instance.vatAmount,
  'discount': instance.discount,
  'finalPrice': instance.finalPrice,
};
