// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_suggestion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceSuggestionModelImpl _$$PlaceSuggestionModelImplFromJson(
  Map<String, dynamic> json,
) => _$PlaceSuggestionModelImpl(
  description: json['description'] as String,
  placeId: json['placeId'] as String,
  reference: json['reference'] as String,
  structuredFormatting: StructuredFormatting.fromJson(
    json['structuredFormatting'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$PlaceSuggestionModelImplToJson(
  _$PlaceSuggestionModelImpl instance,
) => <String, dynamic>{
  'description': instance.description,
  'placeId': instance.placeId,
  'reference': instance.reference,
  'structuredFormatting': instance.structuredFormatting,
};

_$StructuredFormattingImpl _$$StructuredFormattingImplFromJson(
  Map<String, dynamic> json,
) => _$StructuredFormattingImpl(
  mainText: json['mainText'] as String,
  secondaryText: json['secondaryText'] as String,
);

Map<String, dynamic> _$$StructuredFormattingImplToJson(
  _$StructuredFormattingImpl instance,
) => <String, dynamic>{
  'mainText': instance.mainText,
  'secondaryText': instance.secondaryText,
};
