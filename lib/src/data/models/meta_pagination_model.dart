// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_pagination_model.freezed.dart';
part 'meta_pagination_model.g.dart'; // For JSON serialization


@freezed
class MetaPaginationModel with _$MetaPaginationModel {
     const factory MetaPaginationModel({
        @JsonKey(name: "current_page")
        int? currentPage,
        @JsonKey(name: "per_page")
        int? perPage,
        @JsonKey(name: "total")
        int? total,
        @JsonKey(name: "last_page")
        int? lastPage,
    }) = _MetaPaginationModel;

  factory MetaPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$MetaPaginationModelFromJson(json);
}
