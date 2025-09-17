// To parse this JSON data, do
//
//     final inspectionModel = inspectionModelFromJson(jsonString);

import 'dart:convert';

InspectionModel inspectionModelFromJson(String str) => InspectionModel.fromJson(json.decode(str));

String inspectionModelToJson(InspectionModel data) => json.encode(data.toJson());

class InspectionModel {
    final int? id;
    final String? vehicle;
    final String? contractNumber;
    final String? inspectionDate;
    final String? inspectionBy;
    final String? status;

    InspectionModel({
        this.id,
        this.vehicle,
        this.contractNumber,
        this.inspectionDate,
        this.inspectionBy,
        this.status,
    });

    factory InspectionModel.fromJson(Map<String, dynamic> json) => InspectionModel(
        id: json["id"],
        vehicle: json["vehicle"],
        contractNumber: json["contract_number"],
        inspectionDate: json["inspection_date"],
        inspectionBy: json["inspection_by"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "vehicle": vehicle,
        "contract_number": contractNumber,
        "inspection_date": inspectionDate,
        "inspection_by": inspectionBy,
        "status": status,
    };
}