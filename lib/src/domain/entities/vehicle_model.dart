// To parse this JSON data, do
//
//     final vehicleModel = vehicleModelFromJson(jsonString);

import 'dart:convert';

VehicleModel vehicleModelFromJson(String str) =>
    VehicleModel.fromJson(json.decode(str));

String vehicleModelToJson(VehicleModel data) => json.encode(data.toJson());

class VehicleModel {
  int? id;
  String? name;
  String? licensePlate;
  int? brandId;
  int? modelId;
  int? categoryId;
  int? manufactureYearId;
  int? regionalSpecificationId;
  int? transmissionTypeId;
  int? fuelTypeId;
  int? engineCapacityId;
  int? internalColorId;
  int? externalColorId;
  List<int>? interiorFeatures;
  List<int>? exteriorFeatures;
  List<int>? technicalFeatures;
  int? bodyTypeId;
  int? seatsCountId;
  int? cylinders;
  String? status;
  int? carConditionId;
  String? kilometers;
  int? insuranceCompanyId;
  int? insuranceTypeId;
  DateTime? insuranceExpiryDate;
  int? dailyRate;
  String? yearOfRstImmatriculation;
  String? engineType;
  String? engineNo;
  DateTime? registrationExpiryDate;
  dynamic notes;
  String? ownershipType;
  String? purchasePrice;
  dynamic agencyId;
  dynamic rentalCostPerDay;
  dynamic rentalDays;
  dynamic document;
  dynamic rentalOwner;
  List<dynamic>? maintenanceParts;
  dynamic targetKm;
  int? contractsCount;
  DateTime? createdAt;

  VehicleModel({
    this.id,
    this.name,
    this.licensePlate,
    this.brandId,
    this.modelId,
    this.categoryId,
    this.manufactureYearId,
    this.regionalSpecificationId,
    this.transmissionTypeId,
    this.fuelTypeId,
    this.engineCapacityId,
    this.internalColorId,
    this.externalColorId,
    this.interiorFeatures,
    this.exteriorFeatures,
    this.technicalFeatures,
    this.bodyTypeId,
    this.seatsCountId,
    this.cylinders,
    this.status,
    this.carConditionId,
    this.kilometers,
    this.insuranceCompanyId,
    this.insuranceTypeId,
    this.insuranceExpiryDate,
    this.dailyRate,
    this.yearOfRstImmatriculation,
    this.engineType,
    this.engineNo,
    this.registrationExpiryDate,
    this.notes,
    this.ownershipType,
    this.purchasePrice,
    this.agencyId,
    this.rentalCostPerDay,
    this.rentalDays,
    this.document,
    this.rentalOwner,
    this.maintenanceParts,
    this.targetKm,
    this.contractsCount,
    this.createdAt,
  });

  factory VehicleModel.fromJson(Map<String, dynamic> json) => VehicleModel(
        id: json["id"],
        name: json["name"],
        licensePlate: json["license_plate"],
        brandId: json["brand_id"],
        modelId: json["model_id"],
        categoryId: json["category_id"],
        manufactureYearId: json["manufacture_year_id"],
        regionalSpecificationId: json["regional_specification_id"],
        transmissionTypeId: json["transmission_type_id"],
        fuelTypeId: json["fuel_type_id"],
        engineCapacityId: json["engine_capacity_id"],
        internalColorId: json["internal_color_id"],
        externalColorId: json["external_color_id"],
        interiorFeatures: json["interior_features"] == null
            ? []
            : List<int>.from(json["interior_features"]!.map((x) => x)),
        exteriorFeatures: json["exterior_features"] == null
            ? []
            : List<int>.from(json["exterior_features"]!.map((x) => x)),
        technicalFeatures: json["technical_features"] == null
            ? []
            : List<int>.from(json["technical_features"]!.map((x) => x)),
        bodyTypeId: json["body_type_id"],
        seatsCountId: json["seats_count_id"],
        cylinders: json["cylinders"],
        status: json["status"],
        carConditionId: json["car_condition_id"],
        kilometers: json["kilometers"],
        insuranceCompanyId: json["insurance_company_id"],
        insuranceTypeId: json["insurance_type_id"],
        insuranceExpiryDate: json["insurance_expiry_date"] == null
            ? null
            : DateTime.parse(json["insurance_expiry_date"]),
        dailyRate: json["daily_rate"],
        yearOfRstImmatriculation: json["year_of_ﬁrst_immatriculation"],
        engineType: json["engine_type"],
        engineNo: json["engine_no"],
        registrationExpiryDate: json["registration_expiry_date"] == null
            ? null
            : DateTime.parse(json["registration_expiry_date"]),
        notes: json["notes"],
        ownershipType: json["ownership_type"],
        purchasePrice: json["purchase_price"],
        agencyId: json["agency_id"],
        rentalCostPerDay: json["rental_cost_per_day"],
        rentalDays: json["rental_days"],
        document: json["document"],
        rentalOwner: json["rental_owner"],
        maintenanceParts: json["maintenance_parts"] == null
            ? []
            : List<dynamic>.from(json["maintenance_parts"]!.map((x) => x)),
        targetKm: json["target_km"],
        contractsCount: json["contracts_count"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "license_plate": licensePlate,
        "brand_id": brandId,
        "model_id": modelId,
        "category_id": categoryId,
        "manufacture_year_id": manufactureYearId,
        "regional_specification_id": regionalSpecificationId,
        "transmission_type_id": transmissionTypeId,
        "fuel_type_id": fuelTypeId,
        "engine_capacity_id": engineCapacityId,
        "internal_color_id": internalColorId,
        "external_color_id": externalColorId,
        "interior_features": interiorFeatures == null
            ? []
            : List<dynamic>.from(interiorFeatures!.map((x) => x)),
        "exterior_features": exteriorFeatures == null
            ? []
            : List<dynamic>.from(exteriorFeatures!.map((x) => x)),
        "technical_features": technicalFeatures == null
            ? []
            : List<dynamic>.from(technicalFeatures!.map((x) => x)),
        "body_type_id": bodyTypeId,
        "seats_count_id": seatsCountId,
        "cylinders": cylinders,
        "status": status,
        "car_condition_id": carConditionId,
        "kilometers": kilometers,
        "insurance_company_id": insuranceCompanyId,
        "insurance_type_id": insuranceTypeId,
        "insurance_expiry_date":
            "${insuranceExpiryDate!.year.toString().padLeft(4, '0')}-${insuranceExpiryDate!.month.toString().padLeft(2, '0')}-${insuranceExpiryDate!.day.toString().padLeft(2, '0')}",
        "daily_rate": dailyRate,
        "year_of_ﬁrst_immatriculation": yearOfRstImmatriculation,
        "engine_type": engineType,
        "engine_no": engineNo,
        "registration_expiry_date":
            "${registrationExpiryDate!.year.toString().padLeft(4, '0')}-${registrationExpiryDate!.month.toString().padLeft(2, '0')}-${registrationExpiryDate!.day.toString().padLeft(2, '0')}",
        "notes": notes,
        "ownership_type": ownershipType,
        "purchase_price": purchasePrice,
        "agency_id": agencyId,
        "rental_cost_per_day": rentalCostPerDay,
        "rental_days": rentalDays,
        "document": document,
        "rental_owner": rentalOwner,
        "maintenance_parts": maintenanceParts == null
            ? []
            : List<dynamic>.from(maintenanceParts!.map((x) => x)),
        "target_km": targetKm,
        "contracts_count": contractsCount,
        "created_at": createdAt?.toIso8601String(),
      };
}
