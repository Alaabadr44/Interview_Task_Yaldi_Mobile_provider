// To parse this JSON data, do
//
//     final paymentModel = paymentModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_application_1/src/core/utils/extension.dart';

import '../../core/utils/enums.dart';

PaymentModel paymentModelFromJson(String str) =>
    PaymentModel.fromJson(json.decode(str));

String paymentModelToJson(PaymentModel data) => json.encode(data.toJson());

class PaymentModel {
  final int? id;
  final String? paymentNumber;
  final String? customerName;
  final String? customerPhone;
  final String? contractNumber;
  final String? totalAmount;
  final String? amount;
  final String? remainingAmount;
  final DateTime? paymentDate;
  final String? paymentMethod;
  final String? chequeNumber;
  final String? invoiceUrl;
  final DateTime? createdAt;
  final String? currency;

  PaymentModel({
    this.id,
    this.paymentNumber,
    this.customerName,
    this.customerPhone,
    this.contractNumber,
    this.amount,
    this.totalAmount,
    this.remainingAmount,
    this.paymentDate,
    this.paymentMethod,
    this.chequeNumber,
    this.invoiceUrl,
    this.createdAt,
    this.currency,
  });

  factory PaymentModel.fromJson(Map<String, dynamic> json) => PaymentModel(
    id: json["id"],
    paymentNumber: json["payment_number"],
    customerName: json["customer_name"],
    totalAmount: json["total"],
    customerPhone: json["customer_phone"],
    contractNumber: json["contract_number"],
    amount: json["amount"],
    remainingAmount: json["remaining_amount"],
    paymentDate:
        json["payment_date"] == null
            ? null
            : DateTime.parse(json["payment_date"]),
    paymentMethod: json["payment_method"],
    chequeNumber: json["cheque_number"],
    invoiceUrl: json["invoice_url"],
    createdAt:
        json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    currency: json["currency"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "payment_number": paymentNumber,
    "customer_name": customerName,
    "customer_phone": customerPhone,
    "contract_number": contractNumber,
    "amount": amount,
    "remaining_amount": remainingAmount,
    "payment_date":
        paymentDate == null
            ? null
            : "${paymentDate!.year.toString().padLeft(4, '0')}-${paymentDate!.month.toString().padLeft(2, '0')}-${paymentDate!.day.toString().padLeft(2, '0')}",
    "payment_method": paymentMethod,
    "cheque_number": chequeNumber,
    "invoice_url": invoiceUrl,
    "created_at": createdAt?.toIso8601String(),
    "currency": currency,
  };

  // Helper getters
  String get displayAmount => "${amount ?? '0'} ${currency ?? ''}";
  String get displayRemainingAmount =>
      "${remainingAmount ?? '0'} ${currency ?? ''}";
  String get displayTotalAmount => "${totalAmount ?? '0'} ${currency ?? ''}";

  PaymentMethodType get paymentMethodType {
    return PaymentMethodType.getByApiType(paymentMethod ?? '')!;
  }

  bool get isCashPayment {
    // return paymentMethod?.toLowerCase() == 'cash';
    return paymentMethodType.isCash;
  }

  bool get isCheckPayment {
    return paymentMethodType.isCheck;
  }

  String get paymentMethodDisplay {
    return paymentMethodType.name.tr();
  }
}
