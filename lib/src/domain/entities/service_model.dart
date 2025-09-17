// To parse this JSON data, do
//
//     final serviceModel = serviceModelFromJson(jsonString);

// ignore_for_file: unnecessary_overrides

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

ServiceModel serviceModelFromJson(String str) =>
    ServiceModel.fromJson(json.decode(str));

String serviceModelToJson(ServiceModel data) => json.encode(data.toJson());

@freezed
class ServiceModel with _$ServiceModel {
  const ServiceModel._();
  const factory ServiceModel({
    String? id,
    String? name,
    // bool? isActive,
    int? price,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceModelImpl &&
            (identical(other.id, id) || other.id == id) );
  }

  @override
  int get hashCode => super.hashCode;
}
