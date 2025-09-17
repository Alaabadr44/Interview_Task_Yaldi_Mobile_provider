// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  ApiInfo get authData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({ApiInfo authData});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null}) {
    return _then(
      _value.copyWith(
            authData:
                null == authData
                    ? _value.authData
                    : authData // ignore: cast_nullable_to_non_nullable
                        as ApiInfo,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserLoginEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$UserLoginEventImplCopyWith(
    _$UserLoginEventImpl value,
    $Res Function(_$UserLoginEventImpl) then,
  ) = __$$UserLoginEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo authData});
}

/// @nodoc
class __$$UserLoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserLoginEventImpl>
    implements _$$UserLoginEventImplCopyWith<$Res> {
  __$$UserLoginEventImplCopyWithImpl(
    _$UserLoginEventImpl _value,
    $Res Function(_$UserLoginEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null}) {
    return _then(
      _$UserLoginEventImpl(
        authData:
            null == authData
                ? _value.authData
                : authData // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
      ),
    );
  }
}

/// @nodoc

class _$UserLoginEventImpl implements UserLoginEvent {
  const _$UserLoginEventImpl({required this.authData});

  @override
  final ApiInfo authData;

  @override
  String toString() {
    return 'AuthEvent.login(authData: $authData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginEventImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginEventImplCopyWith<_$UserLoginEventImpl> get copyWith =>
      __$$UserLoginEventImplCopyWithImpl<_$UserLoginEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) {
    return login(authData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) {
    return login?.call(authData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(authData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class UserLoginEvent implements AuthEvent {
  const factory UserLoginEvent({required final ApiInfo authData}) =
      _$UserLoginEventImpl;

  @override
  ApiInfo get authData;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginEventImplCopyWith<_$UserLoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLogoutEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$UserLogoutEventImplCopyWith(
    _$UserLogoutEventImpl value,
    $Res Function(_$UserLogoutEventImpl) then,
  ) = __$$UserLogoutEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo authData});
}

/// @nodoc
class __$$UserLogoutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserLogoutEventImpl>
    implements _$$UserLogoutEventImplCopyWith<$Res> {
  __$$UserLogoutEventImplCopyWithImpl(
    _$UserLogoutEventImpl _value,
    $Res Function(_$UserLogoutEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null}) {
    return _then(
      _$UserLogoutEventImpl(
        authData:
            null == authData
                ? _value.authData
                : authData // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
      ),
    );
  }
}

/// @nodoc

class _$UserLogoutEventImpl implements UserLogoutEvent {
  const _$UserLogoutEventImpl({required this.authData});

  @override
  final ApiInfo authData;

  @override
  String toString() {
    return 'AuthEvent.logout(authData: $authData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLogoutEventImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLogoutEventImplCopyWith<_$UserLogoutEventImpl> get copyWith =>
      __$$UserLogoutEventImplCopyWithImpl<_$UserLogoutEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) {
    return logout(authData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) {
    return logout?.call(authData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(authData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class UserLogoutEvent implements AuthEvent {
  const factory UserLogoutEvent({required final ApiInfo authData}) =
      _$UserLogoutEventImpl;

  @override
  ApiInfo get authData;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLogoutEventImplCopyWith<_$UserLogoutEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDeleteEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$UserDeleteEventImplCopyWith(
    _$UserDeleteEventImpl value,
    $Res Function(_$UserDeleteEventImpl) then,
  ) = __$$UserDeleteEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo authData});
}

/// @nodoc
class __$$UserDeleteEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserDeleteEventImpl>
    implements _$$UserDeleteEventImplCopyWith<$Res> {
  __$$UserDeleteEventImplCopyWithImpl(
    _$UserDeleteEventImpl _value,
    $Res Function(_$UserDeleteEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null}) {
    return _then(
      _$UserDeleteEventImpl(
        authData:
            null == authData
                ? _value.authData
                : authData // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
      ),
    );
  }
}

/// @nodoc

class _$UserDeleteEventImpl implements UserDeleteEvent {
  const _$UserDeleteEventImpl({required this.authData});

  @override
  final ApiInfo authData;

  @override
  String toString() {
    return 'AuthEvent.delete(authData: $authData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDeleteEventImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDeleteEventImplCopyWith<_$UserDeleteEventImpl> get copyWith =>
      __$$UserDeleteEventImplCopyWithImpl<_$UserDeleteEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) {
    return delete(authData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) {
    return delete?.call(authData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(authData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class UserDeleteEvent implements AuthEvent {
  const factory UserDeleteEvent({required final ApiInfo authData}) =
      _$UserDeleteEventImpl;

  @override
  ApiInfo get authData;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDeleteEventImplCopyWith<_$UserDeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgetPasswordEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$ForgetPasswordEventImplCopyWith(
    _$ForgetPasswordEventImpl value,
    $Res Function(_$ForgetPasswordEventImpl) then,
  ) = __$$ForgetPasswordEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo authData});
}

/// @nodoc
class __$$ForgetPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgetPasswordEventImpl>
    implements _$$ForgetPasswordEventImplCopyWith<$Res> {
  __$$ForgetPasswordEventImplCopyWithImpl(
    _$ForgetPasswordEventImpl _value,
    $Res Function(_$ForgetPasswordEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null}) {
    return _then(
      _$ForgetPasswordEventImpl(
        authData:
            null == authData
                ? _value.authData
                : authData // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
      ),
    );
  }
}

/// @nodoc

class _$ForgetPasswordEventImpl implements ForgetPasswordEvent {
  const _$ForgetPasswordEventImpl({required this.authData});

  @override
  final ApiInfo authData;

  @override
  String toString() {
    return 'AuthEvent.forget(authData: $authData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordEventImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordEventImplCopyWith<_$ForgetPasswordEventImpl> get copyWith =>
      __$$ForgetPasswordEventImplCopyWithImpl<_$ForgetPasswordEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) {
    return forget(authData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) {
    return forget?.call(authData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) {
    if (forget != null) {
      return forget(authData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) {
    return forget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) {
    return forget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (forget != null) {
      return forget(this);
    }
    return orElse();
  }
}

abstract class ForgetPasswordEvent implements AuthEvent {
  const factory ForgetPasswordEvent({required final ApiInfo authData}) =
      _$ForgetPasswordEventImpl;

  @override
  ApiInfo get authData;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgetPasswordEventImplCopyWith<_$ForgetPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckCodeEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$CheckCodeEventImplCopyWith(
    _$CheckCodeEventImpl value,
    $Res Function(_$CheckCodeEventImpl) then,
  ) = __$$CheckCodeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo authData});
}

/// @nodoc
class __$$CheckCodeEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckCodeEventImpl>
    implements _$$CheckCodeEventImplCopyWith<$Res> {
  __$$CheckCodeEventImplCopyWithImpl(
    _$CheckCodeEventImpl _value,
    $Res Function(_$CheckCodeEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null}) {
    return _then(
      _$CheckCodeEventImpl(
        authData:
            null == authData
                ? _value.authData
                : authData // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
      ),
    );
  }
}

/// @nodoc

class _$CheckCodeEventImpl implements CheckCodeEvent {
  const _$CheckCodeEventImpl({required this.authData});

  @override
  final ApiInfo authData;

  @override
  String toString() {
    return 'AuthEvent.checkCode(authData: $authData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCodeEventImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCodeEventImplCopyWith<_$CheckCodeEventImpl> get copyWith =>
      __$$CheckCodeEventImplCopyWithImpl<_$CheckCodeEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) {
    return checkCode(authData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) {
    return checkCode?.call(authData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) {
    if (checkCode != null) {
      return checkCode(authData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) {
    return checkCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) {
    return checkCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (checkCode != null) {
      return checkCode(this);
    }
    return orElse();
  }
}

abstract class CheckCodeEvent implements AuthEvent {
  const factory CheckCodeEvent({required final ApiInfo authData}) =
      _$CheckCodeEventImpl;

  @override
  ApiInfo get authData;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckCodeEventImplCopyWith<_$CheckCodeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendCodeEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$SendCodeEventImplCopyWith(
    _$SendCodeEventImpl value,
    $Res Function(_$SendCodeEventImpl) then,
  ) = __$$SendCodeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo authData});
}

/// @nodoc
class __$$SendCodeEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendCodeEventImpl>
    implements _$$SendCodeEventImplCopyWith<$Res> {
  __$$SendCodeEventImplCopyWithImpl(
    _$SendCodeEventImpl _value,
    $Res Function(_$SendCodeEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null}) {
    return _then(
      _$SendCodeEventImpl(
        authData:
            null == authData
                ? _value.authData
                : authData // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
      ),
    );
  }
}

/// @nodoc

class _$SendCodeEventImpl implements SendCodeEvent {
  const _$SendCodeEventImpl({required this.authData});

  @override
  final ApiInfo authData;

  @override
  String toString() {
    return 'AuthEvent.sendCode(authData: $authData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeEventImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeEventImplCopyWith<_$SendCodeEventImpl> get copyWith =>
      __$$SendCodeEventImplCopyWithImpl<_$SendCodeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) {
    return sendCode(authData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) {
    return sendCode?.call(authData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(authData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class SendCodeEvent implements AuthEvent {
  const factory SendCodeEvent({required final ApiInfo authData}) =
      _$SendCodeEventImpl;

  @override
  ApiInfo get authData;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendCodeEventImplCopyWith<_$SendCodeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdateEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$UserUpdateEventImplCopyWith(
    _$UserUpdateEventImpl value,
    $Res Function(_$UserUpdateEventImpl) then,
  ) = __$$UserUpdateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo authData, String? title});
}

/// @nodoc
class __$$UserUpdateEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserUpdateEventImpl>
    implements _$$UserUpdateEventImplCopyWith<$Res> {
  __$$UserUpdateEventImplCopyWithImpl(
    _$UserUpdateEventImpl _value,
    $Res Function(_$UserUpdateEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null, Object? title = freezed}) {
    return _then(
      _$UserUpdateEventImpl(
        authData:
            null == authData
                ? _value.authData
                : authData // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$UserUpdateEventImpl implements UserUpdateEvent {
  const _$UserUpdateEventImpl({required this.authData, this.title});

  @override
  final ApiInfo authData;
  @override
  final String? title;

  @override
  String toString() {
    return 'AuthEvent.update(authData: $authData, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateEventImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData, title);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateEventImplCopyWith<_$UserUpdateEventImpl> get copyWith =>
      __$$UserUpdateEventImplCopyWithImpl<_$UserUpdateEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) {
    return update(authData, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) {
    return update?.call(authData, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(authData, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UserUpdateEvent implements AuthEvent {
  const factory UserUpdateEvent({
    required final ApiInfo authData,
    final String? title,
  }) = _$UserUpdateEventImpl;

  @override
  ApiInfo get authData;
  String? get title;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdateEventImplCopyWith<_$UserUpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$ChangePasswordEventImplCopyWith(
    _$ChangePasswordEventImpl value,
    $Res Function(_$ChangePasswordEventImpl) then,
  ) = __$$ChangePasswordEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo authData, String? title});
}

/// @nodoc
class __$$ChangePasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangePasswordEventImpl>
    implements _$$ChangePasswordEventImplCopyWith<$Res> {
  __$$ChangePasswordEventImplCopyWithImpl(
    _$ChangePasswordEventImpl _value,
    $Res Function(_$ChangePasswordEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null, Object? title = freezed}) {
    return _then(
      _$ChangePasswordEventImpl(
        authData:
            null == authData
                ? _value.authData
                : authData // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$ChangePasswordEventImpl implements ChangePasswordEvent {
  const _$ChangePasswordEventImpl({required this.authData, this.title});

  @override
  final ApiInfo authData;
  @override
  final String? title;

  @override
  String toString() {
    return 'AuthEvent.changePassword(authData: $authData, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordEventImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData, title);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordEventImplCopyWith<_$ChangePasswordEventImpl> get copyWith =>
      __$$ChangePasswordEventImplCopyWithImpl<_$ChangePasswordEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) {
    return changePassword(authData, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) {
    return changePassword?.call(authData, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(authData, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordEvent implements AuthEvent {
  const factory ChangePasswordEvent({
    required final ApiInfo authData,
    final String? title,
  }) = _$ChangePasswordEventImpl;

  @override
  ApiInfo get authData;
  String? get title;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordEventImplCopyWith<_$ChangePasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegisterEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$UserRegisterEventImplCopyWith(
    _$UserRegisterEventImpl value,
    $Res Function(_$UserRegisterEventImpl) then,
  ) = __$$UserRegisterEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo authData, String? title});
}

/// @nodoc
class __$$UserRegisterEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserRegisterEventImpl>
    implements _$$UserRegisterEventImplCopyWith<$Res> {
  __$$UserRegisterEventImplCopyWithImpl(
    _$UserRegisterEventImpl _value,
    $Res Function(_$UserRegisterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authData = null, Object? title = freezed}) {
    return _then(
      _$UserRegisterEventImpl(
        authData:
            null == authData
                ? _value.authData
                : authData // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$UserRegisterEventImpl implements UserRegisterEvent {
  const _$UserRegisterEventImpl({required this.authData, this.title});

  @override
  final ApiInfo authData;
  @override
  final String? title;

  @override
  String toString() {
    return 'AuthEvent.register(authData: $authData, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterEventImpl &&
            (identical(other.authData, authData) ||
                other.authData == authData) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authData, title);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterEventImplCopyWith<_$UserRegisterEventImpl> get copyWith =>
      __$$UserRegisterEventImplCopyWithImpl<_$UserRegisterEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiInfo authData) login,
    required TResult Function(ApiInfo authData) logout,
    required TResult Function(ApiInfo authData) delete,
    required TResult Function(ApiInfo authData) forget,
    required TResult Function(ApiInfo authData) checkCode,
    required TResult Function(ApiInfo authData) sendCode,
    required TResult Function(ApiInfo authData, String? title) update,
    required TResult Function(ApiInfo authData, String? title) changePassword,
    required TResult Function(ApiInfo authData, String? title) register,
  }) {
    return register(authData, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiInfo authData)? login,
    TResult? Function(ApiInfo authData)? logout,
    TResult? Function(ApiInfo authData)? delete,
    TResult? Function(ApiInfo authData)? forget,
    TResult? Function(ApiInfo authData)? checkCode,
    TResult? Function(ApiInfo authData)? sendCode,
    TResult? Function(ApiInfo authData, String? title)? update,
    TResult? Function(ApiInfo authData, String? title)? changePassword,
    TResult? Function(ApiInfo authData, String? title)? register,
  }) {
    return register?.call(authData, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiInfo authData)? login,
    TResult Function(ApiInfo authData)? logout,
    TResult Function(ApiInfo authData)? delete,
    TResult Function(ApiInfo authData)? forget,
    TResult Function(ApiInfo authData)? checkCode,
    TResult Function(ApiInfo authData)? sendCode,
    TResult Function(ApiInfo authData, String? title)? update,
    TResult Function(ApiInfo authData, String? title)? changePassword,
    TResult Function(ApiInfo authData, String? title)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(authData, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserDeleteEvent value) delete,
    required TResult Function(ForgetPasswordEvent value) forget,
    required TResult Function(CheckCodeEvent value) checkCode,
    required TResult Function(SendCodeEvent value) sendCode,
    required TResult Function(UserUpdateEvent value) update,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UserRegisterEvent value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? login,
    TResult? Function(UserLogoutEvent value)? logout,
    TResult? Function(UserDeleteEvent value)? delete,
    TResult? Function(ForgetPasswordEvent value)? forget,
    TResult? Function(CheckCodeEvent value)? checkCode,
    TResult? Function(SendCodeEvent value)? sendCode,
    TResult? Function(UserUpdateEvent value)? update,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UserRegisterEvent value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserDeleteEvent value)? delete,
    TResult Function(ForgetPasswordEvent value)? forget,
    TResult Function(CheckCodeEvent value)? checkCode,
    TResult Function(SendCodeEvent value)? sendCode,
    TResult Function(UserUpdateEvent value)? update,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UserRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class UserRegisterEvent implements AuthEvent {
  const factory UserRegisterEvent({
    required final ApiInfo authData,
    final String? title,
  }) = _$UserRegisterEventImpl;

  @override
  ApiInfo get authData;
  String? get title;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegisterEventImplCopyWith<_$UserRegisterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
