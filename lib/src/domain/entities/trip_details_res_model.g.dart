// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_details_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripDetailsResModelImpl _$$TripDetailsResModelImplFromJson(
  Map<String, dynamic> json,
) => _$TripDetailsResModelImpl(
  id: json['id'] as String?,
  status: json['status'] as String?,
  statusName: json['statusName'] as String?,
  car:
      json['car'] == null
          ? null
          : Car.fromJson(json['car'] as Map<String, dynamic>),
  datePackage:
      json['datePackage'] == null
          ? null
          : DatePackageModel.fromJson(
            json['datePackage'] as Map<String, dynamic>,
          ),
  voucherCode: json['voucherCode'],
  pickupLocation:
      json['pickupLocation'] == null
          ? null
          : Location.fromJson(json['pickupLocation'] as Map<String, dynamic>),
  dropoffLocation:
      json['dropoffLocation'] == null
          ? null
          : Location.fromJson(json['dropoffLocation'] as Map<String, dynamic>),
  pickupDate:
      json['pickupDate'] == null
          ? null
          : DateTime.parse(json['pickupDate'] as String),
  dropoffDate:
      json['dropoffDate'] == null
          ? null
          : DateTime.parse(json['dropoffDate'] as String),
  pickupTime: json['pickupTime'] as String?,
  dropoffTime: json['dropoffTime'] as String?,
  carPrice: json['carPrice'] as num?,
  deliveryPickup: json['deliveryPickup'] as num?,
  deliveryDropoff: json['deliveryDropoff'] as num?,
  deliveryAmount: json['deliveryAmount'] as num?,
  vatPercent: json['vatPercent'] as num?,
  vatAmount: json['vatAmount'] as num?,
  discountPercent: json['discountPercent'] as num?,
  discount: json['discount'] as num?,
  finalPrice: json['finalPrice'] as num?,
  paymentType: json['paymentType'] as String?,
  cancelReason: json['cancelReason'],
  services:
      (json['services'] as List<dynamic>?)
          ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$TripDetailsResModelImplToJson(
  _$TripDetailsResModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'statusName': instance.statusName,
  'car': instance.car,
  'datePackage': instance.datePackage,
  'voucherCode': instance.voucherCode,
  'pickupLocation': instance.pickupLocation,
  'dropoffLocation': instance.dropoffLocation,
  'pickupDate': instance.pickupDate?.toIso8601String(),
  'dropoffDate': instance.dropoffDate?.toIso8601String(),
  'pickupTime': instance.pickupTime,
  'dropoffTime': instance.dropoffTime,
  'carPrice': instance.carPrice,
  'deliveryPickup': instance.deliveryPickup,
  'deliveryDropoff': instance.deliveryDropoff,
  'deliveryAmount': instance.deliveryAmount,
  'vatPercent': instance.vatPercent,
  'vatAmount': instance.vatAmount,
  'discountPercent': instance.discountPercent,
  'discount': instance.discount,
  'finalPrice': instance.finalPrice,
  'paymentType': instance.paymentType,
  'cancelReason': instance.cancelReason,
  'services': instance.services,
};

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'formattedAddress': instance.formattedAddress,
    };

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
  id: json['id'] as String?,
  name: json['name'] as String?,
  desc: json['desc'] as String?,
  icon: json['icon'],
);

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'desc': instance.desc,
  'icon': instance.icon,
};
