// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_suggestion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlaceSuggestionModel _$PlaceSuggestionModelFromJson(Map<String, dynamic> json) {
  return _PlaceSuggestionModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceSuggestionModel {
  String get description => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  StructuredFormatting get structuredFormatting =>
      throw _privateConstructorUsedError;

  /// Serializes this PlaceSuggestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceSuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceSuggestionModelCopyWith<PlaceSuggestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceSuggestionModelCopyWith<$Res> {
  factory $PlaceSuggestionModelCopyWith(
    PlaceSuggestionModel value,
    $Res Function(PlaceSuggestionModel) then,
  ) = _$PlaceSuggestionModelCopyWithImpl<$Res, PlaceSuggestionModel>;
  @useResult
  $Res call({
    String description,
    String placeId,
    String reference,
    StructuredFormatting structuredFormatting,
  });

  $StructuredFormattingCopyWith<$Res> get structuredFormatting;
}

/// @nodoc
class _$PlaceSuggestionModelCopyWithImpl<
  $Res,
  $Val extends PlaceSuggestionModel
>
    implements $PlaceSuggestionModelCopyWith<$Res> {
  _$PlaceSuggestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceSuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? placeId = null,
    Object? reference = null,
    Object? structuredFormatting = null,
  }) {
    return _then(
      _value.copyWith(
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            placeId:
                null == placeId
                    ? _value.placeId
                    : placeId // ignore: cast_nullable_to_non_nullable
                        as String,
            reference:
                null == reference
                    ? _value.reference
                    : reference // ignore: cast_nullable_to_non_nullable
                        as String,
            structuredFormatting:
                null == structuredFormatting
                    ? _value.structuredFormatting
                    : structuredFormatting // ignore: cast_nullable_to_non_nullable
                        as StructuredFormatting,
          )
          as $Val,
    );
  }

  /// Create a copy of PlaceSuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StructuredFormattingCopyWith<$Res> get structuredFormatting {
    return $StructuredFormattingCopyWith<$Res>(_value.structuredFormatting, (
      value,
    ) {
      return _then(_value.copyWith(structuredFormatting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceSuggestionModelImplCopyWith<$Res>
    implements $PlaceSuggestionModelCopyWith<$Res> {
  factory _$$PlaceSuggestionModelImplCopyWith(
    _$PlaceSuggestionModelImpl value,
    $Res Function(_$PlaceSuggestionModelImpl) then,
  ) = __$$PlaceSuggestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String description,
    String placeId,
    String reference,
    StructuredFormatting structuredFormatting,
  });

  @override
  $StructuredFormattingCopyWith<$Res> get structuredFormatting;
}

/// @nodoc
class __$$PlaceSuggestionModelImplCopyWithImpl<$Res>
    extends _$PlaceSuggestionModelCopyWithImpl<$Res, _$PlaceSuggestionModelImpl>
    implements _$$PlaceSuggestionModelImplCopyWith<$Res> {
  __$$PlaceSuggestionModelImplCopyWithImpl(
    _$PlaceSuggestionModelImpl _value,
    $Res Function(_$PlaceSuggestionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaceSuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? placeId = null,
    Object? reference = null,
    Object? structuredFormatting = null,
  }) {
    return _then(
      _$PlaceSuggestionModelImpl(
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        placeId:
            null == placeId
                ? _value.placeId
                : placeId // ignore: cast_nullable_to_non_nullable
                    as String,
        reference:
            null == reference
                ? _value.reference
                : reference // ignore: cast_nullable_to_non_nullable
                    as String,
        structuredFormatting:
            null == structuredFormatting
                ? _value.structuredFormatting
                : structuredFormatting // ignore: cast_nullable_to_non_nullable
                    as StructuredFormatting,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceSuggestionModelImpl implements _PlaceSuggestionModel {
  const _$PlaceSuggestionModelImpl({
    required this.description,
    required this.placeId,
    required this.reference,
    required this.structuredFormatting,
  });

  factory _$PlaceSuggestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceSuggestionModelImplFromJson(json);

  @override
  final String description;
  @override
  final String placeId;
  @override
  final String reference;
  @override
  final StructuredFormatting structuredFormatting;

  @override
  String toString() {
    return 'PlaceSuggestionModel(description: $description, placeId: $placeId, reference: $reference, structuredFormatting: $structuredFormatting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceSuggestionModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.structuredFormatting, structuredFormatting) ||
                other.structuredFormatting == structuredFormatting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    description,
    placeId,
    reference,
    structuredFormatting,
  );

  /// Create a copy of PlaceSuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceSuggestionModelImplCopyWith<_$PlaceSuggestionModelImpl>
  get copyWith =>
      __$$PlaceSuggestionModelImplCopyWithImpl<_$PlaceSuggestionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceSuggestionModelImplToJson(this);
  }
}

abstract class _PlaceSuggestionModel implements PlaceSuggestionModel {
  const factory _PlaceSuggestionModel({
    required final String description,
    required final String placeId,
    required final String reference,
    required final StructuredFormatting structuredFormatting,
  }) = _$PlaceSuggestionModelImpl;

  factory _PlaceSuggestionModel.fromJson(Map<String, dynamic> json) =
      _$PlaceSuggestionModelImpl.fromJson;

  @override
  String get description;
  @override
  String get placeId;
  @override
  String get reference;
  @override
  StructuredFormatting get structuredFormatting;

  /// Create a copy of PlaceSuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceSuggestionModelImplCopyWith<_$PlaceSuggestionModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

StructuredFormatting _$StructuredFormattingFromJson(Map<String, dynamic> json) {
  return _StructuredFormatting.fromJson(json);
}

/// @nodoc
mixin _$StructuredFormatting {
  String get mainText => throw _privateConstructorUsedError;
  String get secondaryText => throw _privateConstructorUsedError;

  /// Serializes this StructuredFormatting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StructuredFormatting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StructuredFormattingCopyWith<StructuredFormatting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructuredFormattingCopyWith<$Res> {
  factory $StructuredFormattingCopyWith(
    StructuredFormatting value,
    $Res Function(StructuredFormatting) then,
  ) = _$StructuredFormattingCopyWithImpl<$Res, StructuredFormatting>;
  @useResult
  $Res call({String mainText, String secondaryText});
}

/// @nodoc
class _$StructuredFormattingCopyWithImpl<
  $Res,
  $Val extends StructuredFormatting
>
    implements $StructuredFormattingCopyWith<$Res> {
  _$StructuredFormattingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StructuredFormatting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mainText = null, Object? secondaryText = null}) {
    return _then(
      _value.copyWith(
            mainText:
                null == mainText
                    ? _value.mainText
                    : mainText // ignore: cast_nullable_to_non_nullable
                        as String,
            secondaryText:
                null == secondaryText
                    ? _value.secondaryText
                    : secondaryText // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StructuredFormattingImplCopyWith<$Res>
    implements $StructuredFormattingCopyWith<$Res> {
  factory _$$StructuredFormattingImplCopyWith(
    _$StructuredFormattingImpl value,
    $Res Function(_$StructuredFormattingImpl) then,
  ) = __$$StructuredFormattingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mainText, String secondaryText});
}

/// @nodoc
class __$$StructuredFormattingImplCopyWithImpl<$Res>
    extends _$StructuredFormattingCopyWithImpl<$Res, _$StructuredFormattingImpl>
    implements _$$StructuredFormattingImplCopyWith<$Res> {
  __$$StructuredFormattingImplCopyWithImpl(
    _$StructuredFormattingImpl _value,
    $Res Function(_$StructuredFormattingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StructuredFormatting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mainText = null, Object? secondaryText = null}) {
    return _then(
      _$StructuredFormattingImpl(
        mainText:
            null == mainText
                ? _value.mainText
                : mainText // ignore: cast_nullable_to_non_nullable
                    as String,
        secondaryText:
            null == secondaryText
                ? _value.secondaryText
                : secondaryText // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StructuredFormattingImpl implements _StructuredFormatting {
  const _$StructuredFormattingImpl({
    required this.mainText,
    required this.secondaryText,
  });

  factory _$StructuredFormattingImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructuredFormattingImplFromJson(json);

  @override
  final String mainText;
  @override
  final String secondaryText;

  @override
  String toString() {
    return 'StructuredFormatting(mainText: $mainText, secondaryText: $secondaryText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructuredFormattingImpl &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mainText, secondaryText);

  /// Create a copy of StructuredFormatting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StructuredFormattingImplCopyWith<_$StructuredFormattingImpl>
  get copyWith =>
      __$$StructuredFormattingImplCopyWithImpl<_$StructuredFormattingImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StructuredFormattingImplToJson(this);
  }
}

abstract class _StructuredFormatting implements StructuredFormatting {
  const factory _StructuredFormatting({
    required final String mainText,
    required final String secondaryText,
  }) = _$StructuredFormattingImpl;

  factory _StructuredFormatting.fromJson(Map<String, dynamic> json) =
      _$StructuredFormattingImpl.fromJson;

  @override
  String get mainText;
  @override
  String get secondaryText;

  /// Create a copy of StructuredFormatting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StructuredFormattingImplCopyWith<_$StructuredFormattingImpl>
  get copyWith => throw _privateConstructorUsedError;
}
