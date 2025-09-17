// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_application_1/src/core/services/setting_service.dart';

NotificationModel notificationModelFromJson(String str) =>
    NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) =>
    json.encode(data.toJson());

class NotificationModel {
  final int? id;
  final String? vehicleName;
  final String? type;
  final DateTime? expiryDate;
  final DateTime? notifiedAt;

  String get message {
    if (SettingService.isRTL) {
      /* 
  
                                                يتم انتهاء الترخيص يوم
                                                                                                2025-04-02
                                                                                            
   */
      return "يتم انتهاء الترخيص يوم ${expiryDate?.toLocal().toString().split(" ")[0]}";
    } else {
      return "The license expires on ${expiryDate?.toLocal().toString().split(" ")[0]}";
    }
  }

  NotificationModel({
    this.id,
    this.vehicleName,
    this.type,
    this.expiryDate,
    this.notifiedAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        id: json["id"],
        vehicleName: json["vehicle_name"],
        type: json["type"],
        expiryDate:
            json["expiry_date"] == null
                ? null
                : DateTime.parse(json["expiry_date"]),
        notifiedAt:
            json["notified_at"] == null
                ? null
                : DateTime.parse(json["notified_at"]),
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "vehicle_name": vehicleName,
    "type": type,
    "expiry_date":
        "${expiryDate!.year.toString().padLeft(4, '0')}-${expiryDate!.month.toString().padLeft(2, '0')}-${expiryDate!.day.toString().padLeft(2, '0')}",
    "notified_at": notifiedAt?.toIso8601String(),
  };
}
