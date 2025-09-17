// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_us_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ContactUsModel _$ContactUsModelFromJson(Map<String, dynamic> json) {
  return _ContactUsModel.fromJson(json);
}

/// @nodoc
mixin _$ContactUsModel {
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get whatsapp => throw _privateConstructorUsedError;
  String get facebookLink => throw _privateConstructorUsedError;
  String get instagramLink => throw _privateConstructorUsedError;

  /// Serializes this ContactUsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactUsModelCopyWith<ContactUsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsModelCopyWith<$Res> {
  factory $ContactUsModelCopyWith(
    ContactUsModel value,
    $Res Function(ContactUsModel) then,
  ) = _$ContactUsModelCopyWithImpl<$Res, ContactUsModel>;
  @useResult
  $Res call({
    String phone,
    String email,
    String whatsapp,
    String facebookLink,
    String instagramLink,
  });
}

/// @nodoc
class _$ContactUsModelCopyWithImpl<$Res, $Val extends ContactUsModel>
    implements $ContactUsModelCopyWith<$Res> {
  _$ContactUsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? email = null,
    Object? whatsapp = null,
    Object? facebookLink = null,
    Object? instagramLink = null,
  }) {
    return _then(
      _value.copyWith(
            phone:
                null == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            whatsapp:
                null == whatsapp
                    ? _value.whatsapp
                    : whatsapp // ignore: cast_nullable_to_non_nullable
                        as String,
            facebookLink:
                null == facebookLink
                    ? _value.facebookLink
                    : facebookLink // ignore: cast_nullable_to_non_nullable
                        as String,
            instagramLink:
                null == instagramLink
                    ? _value.instagramLink
                    : instagramLink // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContactUsModelImplCopyWith<$Res>
    implements $ContactUsModelCopyWith<$Res> {
  factory _$$ContactUsModelImplCopyWith(
    _$ContactUsModelImpl value,
    $Res Function(_$ContactUsModelImpl) then,
  ) = __$$ContactUsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String phone,
    String email,
    String whatsapp,
    String facebookLink,
    String instagramLink,
  });
}

/// @nodoc
class __$$ContactUsModelImplCopyWithImpl<$Res>
    extends _$ContactUsModelCopyWithImpl<$Res, _$ContactUsModelImpl>
    implements _$$ContactUsModelImplCopyWith<$Res> {
  __$$ContactUsModelImplCopyWithImpl(
    _$ContactUsModelImpl _value,
    $Res Function(_$ContactUsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? email = null,
    Object? whatsapp = null,
    Object? facebookLink = null,
    Object? instagramLink = null,
  }) {
    return _then(
      _$ContactUsModelImpl(
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        whatsapp:
            null == whatsapp
                ? _value.whatsapp
                : whatsapp // ignore: cast_nullable_to_non_nullable
                    as String,
        facebookLink:
            null == facebookLink
                ? _value.facebookLink
                : facebookLink // ignore: cast_nullable_to_non_nullable
                    as String,
        instagramLink:
            null == instagramLink
                ? _value.instagramLink
                : instagramLink // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactUsModelImpl implements _ContactUsModel {
  const _$ContactUsModelImpl({
    required this.phone,
    required this.email,
    required this.whatsapp,
    required this.facebookLink,
    required this.instagramLink,
  });

  factory _$ContactUsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactUsModelImplFromJson(json);

  @override
  final String phone;
  @override
  final String email;
  @override
  final String whatsapp;
  @override
  final String facebookLink;
  @override
  final String instagramLink;

  @override
  String toString() {
    return 'ContactUsModel(phone: $phone, email: $email, whatsapp: $whatsapp, facebookLink: $facebookLink, instagramLink: $instagramLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUsModelImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.facebookLink, facebookLink) ||
                other.facebookLink == facebookLink) &&
            (identical(other.instagramLink, instagramLink) ||
                other.instagramLink == instagramLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    phone,
    email,
    whatsapp,
    facebookLink,
    instagramLink,
  );

  /// Create a copy of ContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactUsModelImplCopyWith<_$ContactUsModelImpl> get copyWith =>
      __$$ContactUsModelImplCopyWithImpl<_$ContactUsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactUsModelImplToJson(this);
  }
}

abstract class _ContactUsModel implements ContactUsModel {
  const factory _ContactUsModel({
    required final String phone,
    required final String email,
    required final String whatsapp,
    required final String facebookLink,
    required final String instagramLink,
  }) = _$ContactUsModelImpl;

  factory _ContactUsModel.fromJson(Map<String, dynamic> json) =
      _$ContactUsModelImpl.fromJson;

  @override
  String get phone;
  @override
  String get email;
  @override
  String get whatsapp;
  @override
  String get facebookLink;
  @override
  String get instagramLink;

  /// Create a copy of ContactUsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactUsModelImplCopyWith<_$ContactUsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
