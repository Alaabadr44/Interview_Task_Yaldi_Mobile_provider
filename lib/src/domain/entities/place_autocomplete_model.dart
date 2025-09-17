// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'place_suggestion_model.dart';

part 'place_autocomplete_model.freezed.dart';
part 'place_autocomplete_model.g.dart';

@freezed
class PlaceAutocompleteModel with _$PlaceAutocompleteModel {
  const factory PlaceAutocompleteModel({
    required List<PlaceSuggestionModel> predictions,
  }) = _PlaceAutocompleteModel;

  factory PlaceAutocompleteModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceAutocompleteModelFromJson(json);
}
