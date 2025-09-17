// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerModelImpl _$$CustomerModelImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerModelImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  whatsappCheck: (json['whatsapp_check'] as num?)?.toInt(),
  email: json['email'] as String?,
  identityNumber: json['identity_number'] as String?,
  address: json['address'] as String?,
  country:
      json['country'] == null
          ? null
          : IdStatusNameModel.fromJson(json['country'] as Map<String, dynamic>),
  company:
      json['company'] == null
          ? null
          : IdStatusNameModel.fromJson(json['company'] as Map<String, dynamic>),
  classification: json['classification'] as String?,
  gender: json['gender'] as String?,
  licenseNumber: json['license_number'] as String?,
  placeOfIssue: json['place_of_issue'] as String?,
  issueDate:
      json['issue_date'] == null
          ? null
          : DateTime.parse(json['issue_date'] as String),
  expiryDate:
      json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
  licenseFront: json['license_front'] as String?,
  licenseBack: json['license_back'] as String?,
  idFront: json['id_front'] as String?,
  idBack: json['id_back'] as String?,
  passportImage: json['passport_image'] as String?,
  note: json['note'] as String?,
  extraPhones:
      (json['extra_phones'] as List<dynamic>?)
          ?.map((e) => ExtraPhone.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'whatsapp_check': instance.whatsappCheck,
      'email': instance.email,
      'identity_number': instance.identityNumber,
      'address': instance.address,
      'country': instance.country,
      'company': instance.company,
      'classification': instance.classification,
      'gender': instance.gender,
      'license_number': instance.licenseNumber,
      'place_of_issue': instance.placeOfIssue,
      'issue_date': instance.issueDate?.toIso8601String(),
      'expiry_date': instance.expiryDate?.toIso8601String(),
      'license_front': instance.licenseFront,
      'license_back': instance.licenseBack,
      'id_front': instance.idFront,
      'id_back': instance.idBack,
      'passport_image': instance.passportImage,
      'note': instance.note,
      'extra_phones': instance.extraPhones,
    };

_$ExtraPhoneImpl _$$ExtraPhoneImplFromJson(Map<String, dynamic> json) =>
    _$ExtraPhoneImpl(
      id: (json['id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      phone: json['phone'] as String?,
      countryCode: json['country_code'] as String?,
      whatsapp: (json['whatsapp'] as num?)?.toInt(),
      createdAt:
          json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
      updatedAt:
          json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ExtraPhoneImplToJson(_$ExtraPhoneImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customerId,
      'phone': instance.phone,
      'country_code': instance.countryCode,
      'whatsapp': instance.whatsapp,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
