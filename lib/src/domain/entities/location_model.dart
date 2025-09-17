// To parse this JSON data, do
//
//     final locationModel = locationModelFromJson(jsonString);

import 'dart:convert';

LocationModel locationModelFromJson(String str) =>
    LocationModel.fromJson(json.decode(str));

String locationModelToJson(LocationModel data) => json.encode(data.toJson());

class LocationModel {
  final int? id;
  final String? locationType;
  final int? locationTypeId;
  final String? locationName;
  final String? governorate;
  final int? governorateId;
  final String? city;
  final int? cityId;

  LocationModel({
    this.id,
    this.locationType,
    this.locationTypeId,
    this.locationName,
    this.governorate,
    this.governorateId,
    this.city,
    this.cityId,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        id: json["id"],
        locationType: json["location_type"],
        locationTypeId: json["location_type_id"],
        locationName: json["location_name"],
        governorate: json["governorate"],
        governorateId: json["governorate_id"],
        city: json['city'],
        cityId: json["city_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "location_type": locationType,
        "location_type_id": locationTypeId,
        "location_name": locationName,
        "governorate": governorate,
        "governorate_id": governorateId,
        "city": city,
        "city_id": cityId,
      };
  String get dic => "$locationName - $governorate - $city";



}
