// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_autocomplete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceAutocompleteModelImpl _$$PlaceAutocompleteModelImplFromJson(
  Map<String, dynamic> json,
) => _$PlaceAutocompleteModelImpl(
  predictions:
      (json['predictions'] as List<dynamic>)
          .map((e) => PlaceSuggestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$PlaceAutocompleteModelImplToJson(
  _$PlaceAutocompleteModelImpl instance,
) => <String, dynamic>{'predictions': instance.predictions};
