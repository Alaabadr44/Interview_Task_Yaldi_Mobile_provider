// To parse this JSON data, do
//
//     final carItemModel = carItemModelFromJson(jsonString);

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_item_model.freezed.dart';
part 'car_item_model.g.dart';

CarItemModel carItemModelFromJson(String str) => CarItemModel.fromJson(json.decode(str));

String carItemModelToJson(CarItemModel data) => json.encode(data.toJson());

@freezed
class CarItemModel with _$CarItemModel {
    const factory CarItemModel({
        String? id,
        String? name,
        String? desc,
        String? image,
        String? size,
        String? need,
        int? price,
        int? doorCount,
        String? color,
        int? paletteNumber,
        bool? isFavorite,
        List<Feature>? features,
            Insurance? deliveryTime,
    Insurance? carGuarantee,
    Insurance? deductibleInsurance,

    }) = _CarItemModel;

    factory CarItemModel.fromJson(Map<String, dynamic> json) => _$CarItemModelFromJson(json);
}

@freezed
class Feature with _$Feature {
    const factory Feature({
        String? id,
        String? name,
        String? icon,
    }) = _Feature;

    factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}


@freezed
class Insurance with _$Insurance {
  const factory Insurance({
    String? id,
    String? key,
    String? desc,
    String? title,
  }) = _Insurance;

  factory Insurance.fromJson(Map<String, dynamic> json) => _$InsuranceFromJson(json);
}
