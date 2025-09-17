// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart'; // For JSON serialization

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    required String id,
    required String name,
    required AreaModel area,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);
}

@freezed
class AreaModel with _$AreaModel {
  const factory AreaModel({
    required String type,
    required List<List<List<double>>> coordinates,
  }) = _AreaModel;

  factory AreaModel.fromJson(Map<String, dynamic> json) => _$AreaModelFromJson(json);
}
