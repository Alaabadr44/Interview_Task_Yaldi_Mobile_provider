// To parse this JSON data, do
//
//     final tripDetailsResModel = tripDetailsResModelFromJson(jsonString);

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

// Project imports:
import '../../core/utils/app_logger.dart';
import 'date_package_model.dart';
import 'place_location_model.dart';
import 'service_model.dart';

part 'trip_details_res_model.freezed.dart';
part 'trip_details_res_model.g.dart';

TripDetailsResModel tripDetailsResModelFromJson(String str) => TripDetailsResModel.fromJson(json.decode(str));

String tripDetailsResModelToJson(TripDetailsResModel data) => json.encode(data.toJson());

@freezed
class TripDetailsResModel with _$TripDetailsResModel {
  const TripDetailsResModel._();
  const factory TripDetailsResModel({
    String? id,
    String? status,
    String? statusName,
    Car? car,
    DatePackageModel? datePackage,
    dynamic voucherCode,
    Location? pickupLocation,
    Location? dropoffLocation,
    DateTime? pickupDate,
    DateTime? dropoffDate,
    String? pickupTime,
    String? dropoffTime,
    num? carPrice,
    num? deliveryPickup,
    num? deliveryDropoff,
    num? deliveryAmount,
    num? vatPercent,
    num? vatAmount,
    num? discountPercent,
    num? discount,
    num? finalPrice,
    String? paymentType,
    dynamic cancelReason,
    List<ServiceModel>? services,
  }) = _TripDetailsResModel;

  factory TripDetailsResModel.fromJson(Map<String, dynamic> json) => _$TripDetailsResModelFromJson(json);

  Map<String, dynamic> toFromKeyValues() {
    Map<String, dynamic> data = {
      "services": services,
      'date_package_id': datePackage,
      'car_id': car?.id,
      "car_name": car?.name,
      'pickup_location': pickupLocation?.toFormKey().toJson(),
      'dropoff_location': dropoffLocation?.toFormKey().toJson(),
      'pickup_date': pickupDate,
      'dropoff_date': dropoffDate,
      'pickup_time': pickUpDT,
      'dropoff_time': dropoffDT,
      "payment_type": paymentType,
      "order_id": id,
      "voucher_code": voucherCode
    };
    AppLogger.logDebug(" getOrderData: Trip ::$data");
    return data;
  }

  DateTime get pickUpDT => DateTime.parse("${DateFormat('yyyy-MM-dd', "en").format(pickupDate!)} $pickupTime");
  DateTime get dropoffDT => DateTime.parse("${DateFormat('yyyy-MM-dd', "en").format(dropoffDate!)} $dropoffTime");

  bool get isCanceledOrder => status == "cancelled";
}

@freezed
class Location with _$Location {
  const Location._();
  const factory Location({
    String? lat,
    String? lng,
    String? formattedAddress,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  PlaceLocationModel toFormKey() {
    return PlaceLocationModel(
      lat: double.tryParse(lat ?? "") ?? 0.0,
      lng: double.tryParse(lng ?? "") ?? 0.0,
      formattedAddress: formattedAddress,
    );
  }
}

@freezed
class Car with _$Car {
  const factory Car({
    String? id,
    String? name,
    String? desc,
    dynamic icon,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
