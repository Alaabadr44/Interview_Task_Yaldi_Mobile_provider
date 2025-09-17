// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlaceAutocompleteModel _$PlaceAutocompleteModelFromJson(
  Map<String, dynamic> json,
) {
  return _PlaceAutocompleteModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceAutocompleteModel {
  List<PlaceSuggestionModel> get predictions =>
      throw _privateConstructorUsedError;

  /// Serializes this PlaceAutocompleteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceAutocompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceAutocompleteModelCopyWith<PlaceAutocompleteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceAutocompleteModelCopyWith<$Res> {
  factory $PlaceAutocompleteModelCopyWith(
    PlaceAutocompleteModel value,
    $Res Function(PlaceAutocompleteModel) then,
  ) = _$PlaceAutocompleteModelCopyWithImpl<$Res, PlaceAutocompleteModel>;
  @useResult
  $Res call({List<PlaceSuggestionModel> predictions});
}

/// @nodoc
class _$PlaceAutocompleteModelCopyWithImpl<
  $Res,
  $Val extends PlaceAutocompleteModel
>
    implements $PlaceAutocompleteModelCopyWith<$Res> {
  _$PlaceAutocompleteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceAutocompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? predictions = null}) {
    return _then(
      _value.copyWith(
            predictions:
                null == predictions
                    ? _value.predictions
                    : predictions // ignore: cast_nullable_to_non_nullable
                        as List<PlaceSuggestionModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlaceAutocompleteModelImplCopyWith<$Res>
    implements $PlaceAutocompleteModelCopyWith<$Res> {
  factory _$$PlaceAutocompleteModelImplCopyWith(
    _$PlaceAutocompleteModelImpl value,
    $Res Function(_$PlaceAutocompleteModelImpl) then,
  ) = __$$PlaceAutocompleteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlaceSuggestionModel> predictions});
}

/// @nodoc
class __$$PlaceAutocompleteModelImplCopyWithImpl<$Res>
    extends
        _$PlaceAutocompleteModelCopyWithImpl<$Res, _$PlaceAutocompleteModelImpl>
    implements _$$PlaceAutocompleteModelImplCopyWith<$Res> {
  __$$PlaceAutocompleteModelImplCopyWithImpl(
    _$PlaceAutocompleteModelImpl _value,
    $Res Function(_$PlaceAutocompleteModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaceAutocompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? predictions = null}) {
    return _then(
      _$PlaceAutocompleteModelImpl(
        predictions:
            null == predictions
                ? _value._predictions
                : predictions // ignore: cast_nullable_to_non_nullable
                    as List<PlaceSuggestionModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceAutocompleteModelImpl implements _PlaceAutocompleteModel {
  const _$PlaceAutocompleteModelImpl({
    required final List<PlaceSuggestionModel> predictions,
  }) : _predictions = predictions;

  factory _$PlaceAutocompleteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceAutocompleteModelImplFromJson(json);

  final List<PlaceSuggestionModel> _predictions;
  @override
  List<PlaceSuggestionModel> get predictions {
    if (_predictions is EqualUnmodifiableListView) return _predictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_predictions);
  }

  @override
  String toString() {
    return 'PlaceAutocompleteModel(predictions: $predictions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceAutocompleteModelImpl &&
            const DeepCollectionEquality().equals(
              other._predictions,
              _predictions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_predictions),
  );

  /// Create a copy of PlaceAutocompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceAutocompleteModelImplCopyWith<_$PlaceAutocompleteModelImpl>
  get copyWith =>
      __$$PlaceAutocompleteModelImplCopyWithImpl<_$PlaceAutocompleteModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceAutocompleteModelImplToJson(this);
  }
}

abstract class _PlaceAutocompleteModel implements PlaceAutocompleteModel {
  const factory _PlaceAutocompleteModel({
    required final List<PlaceSuggestionModel> predictions,
  }) = _$PlaceAutocompleteModelImpl;

  factory _PlaceAutocompleteModel.fromJson(Map<String, dynamic> json) =
      _$PlaceAutocompleteModelImpl.fromJson;

  @override
  List<PlaceSuggestionModel> get predictions;

  /// Create a copy of PlaceAutocompleteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceAutocompleteModelImplCopyWith<_$PlaceAutocompleteModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
