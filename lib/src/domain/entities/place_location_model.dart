// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_location_model.freezed.dart';
part 'place_location_model.g.dart'; // For JSON serialization

@freezed
class PlaceLocationModel with _$PlaceLocationModel {
  const factory PlaceLocationModel({
    @StringToDoubleConverter() required double lat,
    @StringToDoubleConverter() required double lng,
    final String? formattedAddress,
  }) = _PlaceLocationModel;

  factory PlaceLocationModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceLocationModelFromJson(json);
}

class StringToDoubleConverter implements JsonConverter<double, dynamic> {
  const StringToDoubleConverter();

  @override
  double fromJson(dynamic json) {
    if (json is String) {
      return double.tryParse(json) ?? 0.0;
    } else {
      return json;
    }
  }

  @override
  String toJson(double object) => object.toString();
}
