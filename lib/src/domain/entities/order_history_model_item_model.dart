// To parse this JSON data, do
//
//     final orderHistoryModelItemModel = orderHistoryModelItemModelFromJson(jsonString);

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_model_item_model.freezed.dart';
part 'order_history_model_item_model.g.dart';

OrderHistoryModelItemModel orderHistoryModelItemModelFromJson(String str) =>
    OrderHistoryModelItemModel.fromJson(json.decode(str));

String orderHistoryModelItemModelToJson(OrderHistoryModelItemModel data) => json.encode(data.toJson());

@freezed
class OrderHistoryModelItemModel with _$OrderHistoryModelItemModel {
  const factory OrderHistoryModelItemModel({
    String? id,
    String? status,
    Car? car,
    Branch? pickupBranch,
    Branch? dropoffBranch,
    String? pickupDate,
    String? dropoffDate,
    String? time,
    int? finalPrice,
  }) = _OrderHistoryModelItemModel;

  factory OrderHistoryModelItemModel.fromJson(Map<String, dynamic> json) => _$OrderHistoryModelItemModelFromJson(json);
}

@freezed
class Car with _$Car {
  const factory Car({
    String? id,
    String? name,
    String? desc,
    String? icon,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}

@freezed
class Branch with _$Branch {
  const factory Branch({
    String? id,
    String? name,
  }) = _PickupBranch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
