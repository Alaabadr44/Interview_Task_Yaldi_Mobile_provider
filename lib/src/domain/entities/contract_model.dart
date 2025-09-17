// To parse this JSON data, do
//
//     final contractModel = contractModelFromJson(jsonString);

import 'dart:convert';

ContractModel contractModelFromJson(String str) => ContractModel.fromJson(json.decode(str));

String contractModelToJson(ContractModel data) => json.encode(data.toJson());

class ContractModel {
    final int? id;
    final String? contractNumber;
    final int? vehicleId;
    final String? vehicleName;
    final String? brand;
    final String? model;
    final String? customer;
    final DateTime? departureDate;
    final String? departureTime;
    final int? departureKm;
    final DateTime? returnDate;
    final String? returnTime;
    final dynamic kmReturn;
    final String? cur;
    final String? subtotal;
    final String? discount;
    final String? amountAfterDiscount;
    final String? taxAmount;
    final String? total;
    final String? paidAmount;
    final String? remainingAmount;
    final String? status;
    final DateTime? contractDate;
    final dynamic customerReview;

    ContractModel({
        this.id,
        this.contractNumber,
        this.vehicleId,
        this.vehicleName,
        this.brand,
        this.model,
        this.customer,
        this.departureDate,
        this.departureTime,
        this.departureKm,
        this.returnDate,
        this.returnTime,
        this.kmReturn,
        this.cur,
        this.subtotal,
        this.discount,
        this.amountAfterDiscount,
        this.taxAmount,
        this.total,
        this.paidAmount,
        this.remainingAmount,
        this.status,
        this.contractDate,
        this.customerReview,
    });

    factory ContractModel.fromJson(Map<String, dynamic> json) => ContractModel(
        id: json["id"],
        contractNumber: json["contract_number"],
        vehicleId: json["vehicle_id"],
        vehicleName: json["vehicle_name"],
        brand: json["brand"],
        model: json["model"],
        customer: json["customer"],
        departureDate: json["departure_date"] == null ? null : DateTime.parse(json["departure_date"]),
        departureTime: json["departure_time"],
        departureKm: json["departure_km"],
        returnDate: json["return_date"] == null ? null : DateTime.parse(json["return_date"]),
        returnTime: json["return_time"],
        kmReturn: json["km_return"],
        cur: json["cur"],
        subtotal: json["subtotal"],
        discount: json["discount"],
        amountAfterDiscount: json["amount_after_discount"],
        taxAmount: json["tax_amount"],
        total: json["total"],
        paidAmount: json["paid_amount"],
        remainingAmount: json["remaining_amount"],
        status: json["status"],
        contractDate: json["contract_date"] == null ? null : DateTime.parse(json["contract_date"]),
        customerReview: json["customer_review"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "contract_number": contractNumber,
        "vehicle_id": vehicleId,
        "vehicle_name": vehicleName,
        "brand": brand,
        "model": model,
        "customer": customer,
        "departure_date": "${departureDate!.year.toString().padLeft(4, '0')}-${departureDate!.month.toString().padLeft(2, '0')}-${departureDate!.day.toString().padLeft(2, '0')}",
        "departure_time": departureTime,
        "departure_km": departureKm,
        "return_date": "${returnDate!.year.toString().padLeft(4, '0')}-${returnDate!.month.toString().padLeft(2, '0')}-${returnDate!.day.toString().padLeft(2, '0')}",
        "return_time": returnTime,
        "km_return": kmReturn,
        "cur": cur,
        "subtotal": subtotal,
        "discount": discount,
        "amount_after_discount": amountAfterDiscount,
        "tax_amount": taxAmount,
        "total": total,
        "paid_amount": paidAmount,
        "remaining_amount": remainingAmount,
        "status": status,
        "contract_date": "${contractDate!.year.toString().padLeft(4, '0')}-${contractDate!.month.toString().padLeft(2, '0')}-${contractDate!.day.toString().padLeft(2, '0')}",
        "customer_review": customerReview,
    };
}