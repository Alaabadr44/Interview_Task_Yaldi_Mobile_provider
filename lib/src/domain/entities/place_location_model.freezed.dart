// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlaceLocationModel _$PlaceLocationModelFromJson(Map<String, dynamic> json) {
  return _PlaceLocationModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceLocationModel {
  @StringToDoubleConverter()
  double get lat => throw _privateConstructorUsedError;
  @StringToDoubleConverter()
  double get lng => throw _privateConstructorUsedError;
  String? get formattedAddress => throw _privateConstructorUsedError;

  /// Serializes this PlaceLocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceLocationModelCopyWith<PlaceLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceLocationModelCopyWith<$Res> {
  factory $PlaceLocationModelCopyWith(
    PlaceLocationModel value,
    $Res Function(PlaceLocationModel) then,
  ) = _$PlaceLocationModelCopyWithImpl<$Res, PlaceLocationModel>;
  @useResult
  $Res call({
    @StringToDoubleConverter() double lat,
    @StringToDoubleConverter() double lng,
    String? formattedAddress,
  });
}

/// @nodoc
class _$PlaceLocationModelCopyWithImpl<$Res, $Val extends PlaceLocationModel>
    implements $PlaceLocationModelCopyWith<$Res> {
  _$PlaceLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? formattedAddress = freezed,
  }) {
    return _then(
      _value.copyWith(
            lat:
                null == lat
                    ? _value.lat
                    : lat // ignore: cast_nullable_to_non_nullable
                        as double,
            lng:
                null == lng
                    ? _value.lng
                    : lng // ignore: cast_nullable_to_non_nullable
                        as double,
            formattedAddress:
                freezed == formattedAddress
                    ? _value.formattedAddress
                    : formattedAddress // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlaceLocationModelImplCopyWith<$Res>
    implements $PlaceLocationModelCopyWith<$Res> {
  factory _$$PlaceLocationModelImplCopyWith(
    _$PlaceLocationModelImpl value,
    $Res Function(_$PlaceLocationModelImpl) then,
  ) = __$$PlaceLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @StringToDoubleConverter() double lat,
    @StringToDoubleConverter() double lng,
    String? formattedAddress,
  });
}

/// @nodoc
class __$$PlaceLocationModelImplCopyWithImpl<$Res>
    extends _$PlaceLocationModelCopyWithImpl<$Res, _$PlaceLocationModelImpl>
    implements _$$PlaceLocationModelImplCopyWith<$Res> {
  __$$PlaceLocationModelImplCopyWithImpl(
    _$PlaceLocationModelImpl _value,
    $Res Function(_$PlaceLocationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaceLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? formattedAddress = freezed,
  }) {
    return _then(
      _$PlaceLocationModelImpl(
        lat:
            null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                    as double,
        lng:
            null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                    as double,
        formattedAddress:
            freezed == formattedAddress
                ? _value.formattedAddress
                : formattedAddress // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceLocationModelImpl implements _PlaceLocationModel {
  const _$PlaceLocationModelImpl({
    @StringToDoubleConverter() required this.lat,
    @StringToDoubleConverter() required this.lng,
    this.formattedAddress,
  });

  factory _$PlaceLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceLocationModelImplFromJson(json);

  @override
  @StringToDoubleConverter()
  final double lat;
  @override
  @StringToDoubleConverter()
  final double lng;
  @override
  final String? formattedAddress;

  @override
  String toString() {
    return 'PlaceLocationModel(lat: $lat, lng: $lng, formattedAddress: $formattedAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceLocationModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, formattedAddress);

  /// Create a copy of PlaceLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceLocationModelImplCopyWith<_$PlaceLocationModelImpl> get copyWith =>
      __$$PlaceLocationModelImplCopyWithImpl<_$PlaceLocationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceLocationModelImplToJson(this);
  }
}

abstract class _PlaceLocationModel implements PlaceLocationModel {
  const factory _PlaceLocationModel({
    @StringToDoubleConverter() required final double lat,
    @StringToDoubleConverter() required final double lng,
    final String? formattedAddress,
  }) = _$PlaceLocationModelImpl;

  factory _PlaceLocationModel.fromJson(Map<String, dynamic> json) =
      _$PlaceLocationModelImpl.fromJson;

  @override
  @StringToDoubleConverter()
  double get lat;
  @override
  @StringToDoubleConverter()
  double get lng;
  @override
  String? get formattedAddress;

  /// Create a copy of PlaceLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceLocationModelImplCopyWith<_$PlaceLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
