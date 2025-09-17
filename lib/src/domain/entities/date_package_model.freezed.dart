// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DatePackageModel _$DatePackageModelFromJson(Map<String, dynamic> json) {
  return _DatePackageModel.fromJson(json);
}

/// @nodoc
mixin _$DatePackageModel {
  String get id => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this DatePackageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatePackageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatePackageModelCopyWith<DatePackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatePackageModelCopyWith<$Res> {
  factory $DatePackageModelCopyWith(
    DatePackageModel value,
    $Res Function(DatePackageModel) then,
  ) = _$DatePackageModelCopyWithImpl<$Res, DatePackageModel>;
  @useResult
  $Res call({String id, int duration, String unit});
}

/// @nodoc
class _$DatePackageModelCopyWithImpl<$Res, $Val extends DatePackageModel>
    implements $DatePackageModelCopyWith<$Res> {
  _$DatePackageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatePackageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? duration = null, Object? unit = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as int,
            unit:
                null == unit
                    ? _value.unit
                    : unit // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DatePackageModelImplCopyWith<$Res>
    implements $DatePackageModelCopyWith<$Res> {
  factory _$$DatePackageModelImplCopyWith(
    _$DatePackageModelImpl value,
    $Res Function(_$DatePackageModelImpl) then,
  ) = __$$DatePackageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int duration, String unit});
}

/// @nodoc
class __$$DatePackageModelImplCopyWithImpl<$Res>
    extends _$DatePackageModelCopyWithImpl<$Res, _$DatePackageModelImpl>
    implements _$$DatePackageModelImplCopyWith<$Res> {
  __$$DatePackageModelImplCopyWithImpl(
    _$DatePackageModelImpl _value,
    $Res Function(_$DatePackageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DatePackageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? duration = null, Object? unit = null}) {
    return _then(
      _$DatePackageModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as int,
        unit:
            null == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DatePackageModelImpl extends _DatePackageModel {
  const _$DatePackageModelImpl({
    required this.id,
    required this.duration,
    required this.unit,
  }) : super._();

  factory _$DatePackageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatePackageModelImplFromJson(json);

  @override
  final String id;
  @override
  final int duration;
  @override
  final String unit;

  @override
  String toString() {
    return 'DatePackageModel(id: $id, duration: $duration, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatePackageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, duration, unit);

  /// Create a copy of DatePackageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatePackageModelImplCopyWith<_$DatePackageModelImpl> get copyWith =>
      __$$DatePackageModelImplCopyWithImpl<_$DatePackageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DatePackageModelImplToJson(this);
  }
}

abstract class _DatePackageModel extends DatePackageModel {
  const factory _DatePackageModel({
    required final String id,
    required final int duration,
    required final String unit,
  }) = _$DatePackageModelImpl;
  const _DatePackageModel._() : super._();

  factory _DatePackageModel.fromJson(Map<String, dynamic> json) =
      _$DatePackageModelImpl.fromJson;

  @override
  String get id;
  @override
  int get duration;
  @override
  String get unit;

  /// Create a copy of DatePackageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatePackageModelImplCopyWith<_$DatePackageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
