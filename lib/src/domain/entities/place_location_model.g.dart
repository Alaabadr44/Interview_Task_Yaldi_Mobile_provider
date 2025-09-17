// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceLocationModelImpl _$$PlaceLocationModelImplFromJson(
  Map<String, dynamic> json,
) => _$PlaceLocationModelImpl(
  lat: const StringToDoubleConverter().fromJson(json['lat']),
  lng: const StringToDoubleConverter().fromJson(json['lng']),
  formattedAddress: json['formattedAddress'] as String?,
);

Map<String, dynamic> _$$PlaceLocationModelImplToJson(
  _$PlaceLocationModelImpl instance,
) => <String, dynamic>{
  'lat': const StringToDoubleConverter().toJson(instance.lat),
  'lng': const StringToDoubleConverter().toJson(instance.lng),
  'formattedAddress': instance.formattedAddress,
};
