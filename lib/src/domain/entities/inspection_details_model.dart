// To parse this JSON data, do
//
//     final inspectionDetailsModel = inspectionDetailsModelFromJson(jsonString);

import 'dart:convert';

InspectionDetailsModel inspectionDetailsModelFromJson(String str) =>
    InspectionDetailsModel.fromJson(json.decode(str));

String inspectionDetailsModelToJson(InspectionDetailsModel data) =>
    json.encode(data.toJson());

class InspectionDetailsModel {
  final int? id;
  final String? vehicle;
  final String? contractNumber;
  final String? inspectionDate;
  final String? inspectionBy;
  final String? status;
  final int? meterReadingIncoming;
  final String? notes;
  final List<InspectionsChecklist>? inspectionsChecklist;

  InspectionDetailsModel({
    this.id,
    this.vehicle,
    this.contractNumber,
    this.inspectionDate,
    this.inspectionBy,
    this.status,
    this.meterReadingIncoming,
    this.notes,
    this.inspectionsChecklist,
  });

  factory InspectionDetailsModel.fromJson(Map<String, dynamic> json) =>
      InspectionDetailsModel(
        id: json["id"],
        vehicle: json["vehicle"],
        contractNumber: json["contract_number"],
        inspectionDate: json["inspection_date"],
        inspectionBy: json["inspection_by"],
        status: json["status"],
        meterReadingIncoming: json["meter_reading_incoming"],
        notes: json["notes"],
        inspectionsChecklist: json["inspections_checklist"] == null
            ? []
            : List<InspectionsChecklist>.from(json["inspections_checklist"]!
                .map((x) => InspectionsChecklist.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vehicle": vehicle,
        "contract_number": contractNumber,
        "inspection_date": inspectionDate,
        "inspection_by": inspectionBy,
        "status": status,
        "meter_reading_incoming": meterReadingIncoming,
        "notes": notes,
        "inspections_checklist": inspectionsChecklist == null
            ? []
            : List<dynamic>.from(inspectionsChecklist!.map((x) => x.toJson())),
      };
}

class InspectionsChecklist {
  final String? type;
  final List<InspectionDetail>? inspectionDetails;
  final String? result;

  InspectionsChecklist({
    this.type,
    this.inspectionDetails,
    this.result,
  });

  bool get isOk => result?.toLowerCase() == "ok".toLowerCase();
  bool get isBad => result?.toLowerCase() == "bad".toLowerCase();

  factory InspectionsChecklist.fromJson(Map<String, dynamic> json) =>
      InspectionsChecklist(
        type: json["type"],
        result: json['result'],
        inspectionDetails: json["inspectiondetails"] == null
            ? []
            : List<InspectionDetail>.from(json["inspectiondetails"]!
                .map((x) => InspectionDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "inspectiondetails": inspectionDetails == null
            ? []
            : List<dynamic>.from(inspectionDetails!.map((x) => x.toJson())),
      };
}

class InspectionDetail {
  final dynamic note;
  final dynamic cost;
  final String? image;

  InspectionDetail({
    this.note,
    this.cost,
    this.image,
  });

  bool get isNoData {
    return note == null && cost == null && image == "لا توجد صورة";
  }

  bool get isNoNote {
    return note == null;
  }

  bool get isNoCost {
    return cost == null;
  }

  bool get isNoImage {
    return image == "لا توجد صورة";
  }

  factory InspectionDetail.fromJson(Map<String, dynamic> json) =>
      InspectionDetail(
        note: json["note"],
        cost: json["cost"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "note": note,
        "cost": cost,
        "image": image,
      };
}
