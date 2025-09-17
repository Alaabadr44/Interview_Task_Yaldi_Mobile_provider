// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_model.freezed.dart';
part 'contact_us_model.g.dart';

@freezed
class ContactUsModel with _$ContactUsModel {
  const factory ContactUsModel({
    required String phone,
    required String email,
    required String whatsapp,
    required String facebookLink,
    required String instagramLink,
  }) = _ContactUsModel;

  factory ContactUsModel.fromJson(Map<String, dynamic> json) => _$ContactUsModelFromJson(json);
}
