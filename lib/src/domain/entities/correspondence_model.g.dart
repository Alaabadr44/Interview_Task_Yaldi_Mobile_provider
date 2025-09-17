// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correspondence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CorrespondenceModelImpl _$$CorrespondenceModelImplFromJson(
  Map<String, dynamic> json,
) => _$CorrespondenceModelImpl(
  accident: Accident.fromJson(json['accident'] as Map<String, dynamic>),
  bankTransfer: BankTransfer.fromJson(
    json['bankTransfer'] as Map<String, dynamic>,
  ),
  carForm: json['carForm'] as String?,
  insuranceCertificate: json['insuranceCertificate'] as String?,
);

Map<String, dynamic> _$$CorrespondenceModelImplToJson(
  _$CorrespondenceModelImpl instance,
) => <String, dynamic>{
  'accident': instance.accident,
  'bankTransfer': instance.bankTransfer,
  'carForm': instance.carForm,
  'insuranceCertificate': instance.insuranceCertificate,
};

_$AccidentImpl _$$AccidentImplFromJson(Map<String, dynamic> json) =>
    _$AccidentImpl(key: json['key'] as String, value: json['value'] as String);

Map<String, dynamic> _$$AccidentImplToJson(_$AccidentImpl instance) =>
    <String, dynamic>{'key': instance.key, 'value': instance.value};

_$BankTransferImpl _$$BankTransferImplFromJson(Map<String, dynamic> json) =>
    _$BankTransferImpl(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$BankTransferImplToJson(_$BankTransferImpl instance) =>
    <String, dynamic>{'key': instance.key, 'value': instance.value};
