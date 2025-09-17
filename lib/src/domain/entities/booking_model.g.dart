// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      id: json['id'] as String?,
      status: json['status'] as String?,
      statusName: json['statusName'] as String?,
      car:
          json['car'] == null
              ? null
              : CarModel.fromJson(json['car'] as Map<String, dynamic>),
      pickupDate: json['pickupDate'] as String?,
      dropoffDate: json['dropoffDate'] as String?,
      pickupTime: json['pickupTime'] as String?,
      dropoffTime: json['dropoffTime'] as String?,
      finalPrice: (json['finalPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'statusName': instance.statusName,
      'car': instance.car,
      'pickupDate': instance.pickupDate,
      'dropoffDate': instance.dropoffDate,
      'pickupTime': instance.pickupTime,
      'dropoffTime': instance.dropoffTime,
      'finalPrice': instance.finalPrice,
    };

_$CarModelImpl _$$CarModelImplFromJson(Map<String, dynamic> json) =>
    _$CarModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      desc: json['desc'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$CarModelImplToJson(_$CarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'icon': instance.icon,
    };
