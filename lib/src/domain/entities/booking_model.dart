// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart'; // For JSON serialization

@freezed
class BookingModel with _$BookingModel {
  const BookingModel._();
  const factory BookingModel({
    required String? id,
    required String? status,
    required String? statusName,
    required CarModel? car,
    required String? pickupDate,
    required String? dropoffDate,
    required String? pickupTime,
    required String? dropoffTime,
    required int? finalPrice,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, dynamic> json) => _$BookingModelFromJson(json);

  bool get canEdit => ["in_completed", "confirmed"].any((element) => element == status);
  bool get canCancel => ["in_completed", "confirmed", "paid", "apply_contract"].any((element) => element == status);
}

@freezed
class CarModel with _$CarModel {
  const factory CarModel({
    String? id,
    String? name,
    String? desc,
    String? icon,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) => _$CarModelFromJson(json);
}
