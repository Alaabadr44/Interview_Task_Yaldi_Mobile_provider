// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart'; // For JSON serialization

@freezed
class BranchModel with _$BranchModel {
  const factory BranchModel({
    required String id,
    required String name,
    ///[id - name]
    required Map<String, dynamic> city,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);
}

// car_item_model
