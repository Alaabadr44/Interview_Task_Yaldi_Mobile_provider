// To parse this JSON data, do
//
//     final customerModel = customerModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'id_status_name_model.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

CustomerModel customerModelFromJson(String str) =>
    CustomerModel.fromJson(json.decode(str));

String customerModelToJson(CustomerModel data) => json.encode(data.toJson());

@freezed
class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "whatsapp_check") int? whatsappCheck,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "identity_number") String? identityNumber,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "country") IdStatusNameModel? country,
    @JsonKey(name: "company") IdStatusNameModel? company,
    @JsonKey(name: "classification") String? classification,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "license_number") String? licenseNumber,
    @JsonKey(name: "place_of_issue") String? placeOfIssue,
    @JsonKey(name: "issue_date") DateTime? issueDate,
    @JsonKey(name: "expiry_date") DateTime? expiryDate,
    @JsonKey(name: "license_front") String? licenseFront,
    @JsonKey(name: "license_back") String? licenseBack,
    @JsonKey(name: "id_front") String? idFront,
    @JsonKey(name: "id_back") String? idBack,
    @JsonKey(name: "passport_image") String? passportImage,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "extra_phones") List<ExtraPhone>? extraPhones,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}

@freezed
class ExtraPhone with _$ExtraPhone {
  const factory ExtraPhone({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "customer_id") int? customerId,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "country_code") String? countryCode,
    @JsonKey(name: "whatsapp") int? whatsapp,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _ExtraPhone;

  factory ExtraPhone.fromJson(Map<String, dynamic> json) =>
      _$ExtraPhoneFromJson(json);
}
