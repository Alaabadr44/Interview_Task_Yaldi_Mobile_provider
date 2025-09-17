// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'policy_model.freezed.dart';
part 'policy_model.g.dart'; // For JSON serialization

@freezed
class PolicyModel with _$PolicyModel {
  const factory PolicyModel({
    required String id,
    required String title,
    required String desc,
  }) = _PolicyModel;

  factory PolicyModel.fromJson(Map<String, dynamic> json) =>
      _$PolicyModelFromJson(json);
}
