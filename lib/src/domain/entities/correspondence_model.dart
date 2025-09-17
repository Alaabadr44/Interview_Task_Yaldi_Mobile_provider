// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'correspondence_model.freezed.dart';
part 'correspondence_model.g.dart';

@freezed
class CorrespondenceModel with _$CorrespondenceModel {
  const factory CorrespondenceModel({
    required Accident accident,
    required BankTransfer bankTransfer,
    required String? carForm,
    required String? insuranceCertificate,
  }) = _CorrespondenceModel;

  factory CorrespondenceModel.fromJson(Map<String, dynamic> json) => _$CorrespondenceModelFromJson(json);
}

@freezed
class Accident with _$Accident {
  const factory Accident({
    required String key,
    required String value,
  }) = _Accident;

  factory Accident.fromJson(Map<String, dynamic> json) => _$AccidentFromJson(json);
}

@freezed
class BankTransfer with _$BankTransfer {
  const factory BankTransfer({
    required String key,
    required String value,
  }) = _BankTransfer;

  factory BankTransfer.fromJson(Map<String, dynamic> json) => _$BankTransferFromJson(json);
}
