// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PolicyModel _$PolicyModelFromJson(Map<String, dynamic> json) {
  return _PolicyModel.fromJson(json);
}

/// @nodoc
mixin _$PolicyModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  /// Serializes this PolicyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PolicyModelCopyWith<PolicyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyModelCopyWith<$Res> {
  factory $PolicyModelCopyWith(
    PolicyModel value,
    $Res Function(PolicyModel) then,
  ) = _$PolicyModelCopyWithImpl<$Res, PolicyModel>;
  @useResult
  $Res call({String id, String title, String desc});
}

/// @nodoc
class _$PolicyModelCopyWithImpl<$Res, $Val extends PolicyModel>
    implements $PolicyModelCopyWith<$Res> {
  _$PolicyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null, Object? desc = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            desc:
                null == desc
                    ? _value.desc
                    : desc // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PolicyModelImplCopyWith<$Res>
    implements $PolicyModelCopyWith<$Res> {
  factory _$$PolicyModelImplCopyWith(
    _$PolicyModelImpl value,
    $Res Function(_$PolicyModelImpl) then,
  ) = __$$PolicyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String desc});
}

/// @nodoc
class __$$PolicyModelImplCopyWithImpl<$Res>
    extends _$PolicyModelCopyWithImpl<$Res, _$PolicyModelImpl>
    implements _$$PolicyModelImplCopyWith<$Res> {
  __$$PolicyModelImplCopyWithImpl(
    _$PolicyModelImpl _value,
    $Res Function(_$PolicyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null, Object? desc = null}) {
    return _then(
      _$PolicyModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        desc:
            null == desc
                ? _value.desc
                : desc // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyModelImpl implements _PolicyModel {
  const _$PolicyModelImpl({
    required this.id,
    required this.title,
    required this.desc,
  });

  factory _$PolicyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String desc;

  @override
  String toString() {
    return 'PolicyModel(id: $id, title: $title, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, desc);

  /// Create a copy of PolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyModelImplCopyWith<_$PolicyModelImpl> get copyWith =>
      __$$PolicyModelImplCopyWithImpl<_$PolicyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyModelImplToJson(this);
  }
}

abstract class _PolicyModel implements PolicyModel {
  const factory _PolicyModel({
    required final String id,
    required final String title,
    required final String desc,
  }) = _$PolicyModelImpl;

  factory _PolicyModel.fromJson(Map<String, dynamic> json) =
      _$PolicyModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get desc;

  /// Create a copy of PolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PolicyModelImplCopyWith<_$PolicyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
