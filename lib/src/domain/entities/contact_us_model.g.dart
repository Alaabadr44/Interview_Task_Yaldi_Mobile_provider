// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactUsModelImpl _$$ContactUsModelImplFromJson(Map<String, dynamic> json) =>
    _$ContactUsModelImpl(
      phone: json['phone'] as String,
      email: json['email'] as String,
      whatsapp: json['whatsapp'] as String,
      facebookLink: json['facebookLink'] as String,
      instagramLink: json['instagramLink'] as String,
    );

Map<String, dynamic> _$$ContactUsModelImplToJson(
  _$ContactUsModelImpl instance,
) => <String, dynamic>{
  'phone': instance.phone,
  'email': instance.email,
  'whatsapp': instance.whatsapp,
  'facebookLink': instance.facebookLink,
  'instagramLink': instance.instagramLink,
};
