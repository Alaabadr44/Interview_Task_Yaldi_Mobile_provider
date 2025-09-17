// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_suggestion_model.freezed.dart';
part 'place_suggestion_model.g.dart';

@freezed

class PlaceSuggestionModel with _$PlaceSuggestionModel {
  const factory PlaceSuggestionModel({
    required String description,
    required String placeId,
    required String reference,
    required StructuredFormatting structuredFormatting,
  }) = _PlaceSuggestionModel;

  factory PlaceSuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceSuggestionModelFromJson(json);
}

@freezed
class StructuredFormatting with _$StructuredFormatting {
  const factory StructuredFormatting({
    required String mainText,
    required String secondaryText,
  }) = _StructuredFormatting;

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);
}
