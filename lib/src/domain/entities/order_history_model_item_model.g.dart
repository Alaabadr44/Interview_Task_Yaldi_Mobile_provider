// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_model_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHistoryModelItemModelImpl _$$OrderHistoryModelItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$OrderHistoryModelItemModelImpl(
  id: json['id'] as String?,
  status: json['status'] as String?,
  car:
      json['car'] == null
          ? null
          : Car.fromJson(json['car'] as Map<String, dynamic>),
  pickupBranch:
      json['pickupBranch'] == null
          ? null
          : Branch.fromJson(json['pickupBranch'] as Map<String, dynamic>),
  dropoffBranch:
      json['dropoffBranch'] == null
          ? null
          : Branch.fromJson(json['dropoffBranch'] as Map<String, dynamic>),
  pickupDate: json['pickupDate'] as String?,
  dropoffDate: json['dropoffDate'] as String?,
  time: json['time'] as String?,
  finalPrice: (json['finalPrice'] as num?)?.toInt(),
);

Map<String, dynamic> _$$OrderHistoryModelItemModelImplToJson(
  _$OrderHistoryModelItemModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'car': instance.car,
  'pickupBranch': instance.pickupBranch,
  'dropoffBranch': instance.dropoffBranch,
  'pickupDate': instance.pickupDate,
  'dropoffDate': instance.dropoffDate,
  'time': instance.time,
  'finalPrice': instance.finalPrice,
};

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
  id: json['id'] as String?,
  name: json['name'] as String?,
  desc: json['desc'] as String?,
  icon: json['icon'] as String?,
);

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'desc': instance.desc,
  'icon': instance.icon,
};

_$PickupBranchImpl _$$PickupBranchImplFromJson(Map<String, dynamic> json) =>
    _$PickupBranchImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PickupBranchImplToJson(_$PickupBranchImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
