// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocalDataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LocalDataEvent event) loading,
    required TResult Function(T? data, LocalDataEvent event) success,
    required TResult Function(AppError? error, LocalDataEvent event) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(LocalDataEvent event)? loading,
    TResult? Function(T? data, LocalDataEvent event)? success,
    TResult? Function(AppError? error, LocalDataEvent event)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LocalDataEvent event)? loading,
    TResult Function(T? data, LocalDataEvent event)? success,
    TResult Function(AppError? error, LocalDataEvent event)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalDataIdle<T> value) idle,
    required TResult Function(LocalDataLoading<T> value) loading,
    required TResult Function(LocalDataSuccess<T> value) success,
    required TResult Function(LocalDataError<T> value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalDataIdle<T> value)? idle,
    TResult? Function(LocalDataLoading<T> value)? loading,
    TResult? Function(LocalDataSuccess<T> value)? success,
    TResult? Function(LocalDataError<T> value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalDataIdle<T> value)? idle,
    TResult Function(LocalDataLoading<T> value)? loading,
    TResult Function(LocalDataSuccess<T> value)? success,
    TResult Function(LocalDataError<T> value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDataStateCopyWith<T, $Res> {
  factory $LocalDataStateCopyWith(
    LocalDataState<T> value,
    $Res Function(LocalDataState<T>) then,
  ) = _$LocalDataStateCopyWithImpl<T, $Res, LocalDataState<T>>;
}

/// @nodoc
class _$LocalDataStateCopyWithImpl<T, $Res, $Val extends LocalDataState<T>>
    implements $LocalDataStateCopyWith<T, $Res> {
  _$LocalDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LocalDataIdleImplCopyWith<T, $Res> {
  factory _$$LocalDataIdleImplCopyWith(
    _$LocalDataIdleImpl<T> value,
    $Res Function(_$LocalDataIdleImpl<T>) then,
  ) = __$$LocalDataIdleImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LocalDataIdleImplCopyWithImpl<T, $Res>
    extends _$LocalDataStateCopyWithImpl<T, $Res, _$LocalDataIdleImpl<T>>
    implements _$$LocalDataIdleImplCopyWith<T, $Res> {
  __$$LocalDataIdleImplCopyWithImpl(
    _$LocalDataIdleImpl<T> _value,
    $Res Function(_$LocalDataIdleImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocalDataIdleImpl<T> implements LocalDataIdle<T> {
  const _$LocalDataIdleImpl();

  @override
  String toString() {
    return 'LocalDataState<$T>.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocalDataIdleImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LocalDataEvent event) loading,
    required TResult Function(T? data, LocalDataEvent event) success,
    required TResult Function(AppError? error, LocalDataEvent event) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(LocalDataEvent event)? loading,
    TResult? Function(T? data, LocalDataEvent event)? success,
    TResult? Function(AppError? error, LocalDataEvent event)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LocalDataEvent event)? loading,
    TResult Function(T? data, LocalDataEvent event)? success,
    TResult Function(AppError? error, LocalDataEvent event)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalDataIdle<T> value) idle,
    required TResult Function(LocalDataLoading<T> value) loading,
    required TResult Function(LocalDataSuccess<T> value) success,
    required TResult Function(LocalDataError<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalDataIdle<T> value)? idle,
    TResult? Function(LocalDataLoading<T> value)? loading,
    TResult? Function(LocalDataSuccess<T> value)? success,
    TResult? Function(LocalDataError<T> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalDataIdle<T> value)? idle,
    TResult Function(LocalDataLoading<T> value)? loading,
    TResult Function(LocalDataSuccess<T> value)? success,
    TResult Function(LocalDataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class LocalDataIdle<T> implements LocalDataState<T> {
  const factory LocalDataIdle() = _$LocalDataIdleImpl<T>;
}

/// @nodoc
abstract class _$$LocalDataLoadingImplCopyWith<T, $Res> {
  factory _$$LocalDataLoadingImplCopyWith(
    _$LocalDataLoadingImpl<T> value,
    $Res Function(_$LocalDataLoadingImpl<T>) then,
  ) = __$$LocalDataLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({LocalDataEvent event});

  $LocalDataEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$LocalDataLoadingImplCopyWithImpl<T, $Res>
    extends _$LocalDataStateCopyWithImpl<T, $Res, _$LocalDataLoadingImpl<T>>
    implements _$$LocalDataLoadingImplCopyWith<T, $Res> {
  __$$LocalDataLoadingImplCopyWithImpl(
    _$LocalDataLoadingImpl<T> _value,
    $Res Function(_$LocalDataLoadingImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? event = null}) {
    return _then(
      _$LocalDataLoadingImpl<T>(
        event:
            null == event
                ? _value.event
                : event // ignore: cast_nullable_to_non_nullable
                    as LocalDataEvent,
      ),
    );
  }

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalDataEventCopyWith<$Res> get event {
    return $LocalDataEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$LocalDataLoadingImpl<T> implements LocalDataLoading<T> {
  const _$LocalDataLoadingImpl({required this.event});

  @override
  final LocalDataEvent event;

  @override
  String toString() {
    return 'LocalDataState<$T>.loading(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalDataLoadingImpl<T> &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalDataLoadingImplCopyWith<T, _$LocalDataLoadingImpl<T>> get copyWith =>
      __$$LocalDataLoadingImplCopyWithImpl<T, _$LocalDataLoadingImpl<T>>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LocalDataEvent event) loading,
    required TResult Function(T? data, LocalDataEvent event) success,
    required TResult Function(AppError? error, LocalDataEvent event) error,
  }) {
    return loading(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(LocalDataEvent event)? loading,
    TResult? Function(T? data, LocalDataEvent event)? success,
    TResult? Function(AppError? error, LocalDataEvent event)? error,
  }) {
    return loading?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LocalDataEvent event)? loading,
    TResult Function(T? data, LocalDataEvent event)? success,
    TResult Function(AppError? error, LocalDataEvent event)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalDataIdle<T> value) idle,
    required TResult Function(LocalDataLoading<T> value) loading,
    required TResult Function(LocalDataSuccess<T> value) success,
    required TResult Function(LocalDataError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalDataIdle<T> value)? idle,
    TResult? Function(LocalDataLoading<T> value)? loading,
    TResult? Function(LocalDataSuccess<T> value)? success,
    TResult? Function(LocalDataError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalDataIdle<T> value)? idle,
    TResult Function(LocalDataLoading<T> value)? loading,
    TResult Function(LocalDataSuccess<T> value)? success,
    TResult Function(LocalDataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocalDataLoading<T> implements LocalDataState<T> {
  const factory LocalDataLoading({required final LocalDataEvent event}) =
      _$LocalDataLoadingImpl<T>;

  LocalDataEvent get event;

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalDataLoadingImplCopyWith<T, _$LocalDataLoadingImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalDataSuccessImplCopyWith<T, $Res> {
  factory _$$LocalDataSuccessImplCopyWith(
    _$LocalDataSuccessImpl<T> value,
    $Res Function(_$LocalDataSuccessImpl<T>) then,
  ) = __$$LocalDataSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, LocalDataEvent event});

  $LocalDataEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$LocalDataSuccessImplCopyWithImpl<T, $Res>
    extends _$LocalDataStateCopyWithImpl<T, $Res, _$LocalDataSuccessImpl<T>>
    implements _$$LocalDataSuccessImplCopyWith<T, $Res> {
  __$$LocalDataSuccessImplCopyWithImpl(
    _$LocalDataSuccessImpl<T> _value,
    $Res Function(_$LocalDataSuccessImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = freezed, Object? event = null}) {
    return _then(
      _$LocalDataSuccessImpl<T>(
        data:
            freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as T?,
        event:
            null == event
                ? _value.event
                : event // ignore: cast_nullable_to_non_nullable
                    as LocalDataEvent,
      ),
    );
  }

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalDataEventCopyWith<$Res> get event {
    return $LocalDataEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$LocalDataSuccessImpl<T> implements LocalDataSuccess<T> {
  const _$LocalDataSuccessImpl({required this.data, required this.event});

  @override
  final T? data;
  @override
  final LocalDataEvent event;

  @override
  String toString() {
    return 'LocalDataState<$T>.success(data: $data, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalDataSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(data),
    event,
  );

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalDataSuccessImplCopyWith<T, _$LocalDataSuccessImpl<T>> get copyWith =>
      __$$LocalDataSuccessImplCopyWithImpl<T, _$LocalDataSuccessImpl<T>>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LocalDataEvent event) loading,
    required TResult Function(T? data, LocalDataEvent event) success,
    required TResult Function(AppError? error, LocalDataEvent event) error,
  }) {
    return success(data, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(LocalDataEvent event)? loading,
    TResult? Function(T? data, LocalDataEvent event)? success,
    TResult? Function(AppError? error, LocalDataEvent event)? error,
  }) {
    return success?.call(data, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LocalDataEvent event)? loading,
    TResult Function(T? data, LocalDataEvent event)? success,
    TResult Function(AppError? error, LocalDataEvent event)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalDataIdle<T> value) idle,
    required TResult Function(LocalDataLoading<T> value) loading,
    required TResult Function(LocalDataSuccess<T> value) success,
    required TResult Function(LocalDataError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalDataIdle<T> value)? idle,
    TResult? Function(LocalDataLoading<T> value)? loading,
    TResult? Function(LocalDataSuccess<T> value)? success,
    TResult? Function(LocalDataError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalDataIdle<T> value)? idle,
    TResult Function(LocalDataLoading<T> value)? loading,
    TResult Function(LocalDataSuccess<T> value)? success,
    TResult Function(LocalDataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LocalDataSuccess<T> implements LocalDataState<T> {
  const factory LocalDataSuccess({
    required final T? data,
    required final LocalDataEvent event,
  }) = _$LocalDataSuccessImpl<T>;

  T? get data;
  LocalDataEvent get event;

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalDataSuccessImplCopyWith<T, _$LocalDataSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalDataErrorImplCopyWith<T, $Res> {
  factory _$$LocalDataErrorImplCopyWith(
    _$LocalDataErrorImpl<T> value,
    $Res Function(_$LocalDataErrorImpl<T>) then,
  ) = __$$LocalDataErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({AppError? error, LocalDataEvent event});

  $AppErrorCopyWith<$Res>? get error;
  $LocalDataEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$LocalDataErrorImplCopyWithImpl<T, $Res>
    extends _$LocalDataStateCopyWithImpl<T, $Res, _$LocalDataErrorImpl<T>>
    implements _$$LocalDataErrorImplCopyWith<T, $Res> {
  __$$LocalDataErrorImplCopyWithImpl(
    _$LocalDataErrorImpl<T> _value,
    $Res Function(_$LocalDataErrorImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed, Object? event = null}) {
    return _then(
      _$LocalDataErrorImpl<T>(
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as AppError?,
        event:
            null == event
                ? _value.event
                : event // ignore: cast_nullable_to_non_nullable
                    as LocalDataEvent,
      ),
    );
  }

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalDataEventCopyWith<$Res> get event {
    return $LocalDataEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$LocalDataErrorImpl<T> implements LocalDataError<T> {
  const _$LocalDataErrorImpl({required this.error, required this.event});

  @override
  final AppError? error;
  @override
  final LocalDataEvent event;

  @override
  String toString() {
    return 'LocalDataState<$T>.error(error: $error, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalDataErrorImpl<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, event);

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalDataErrorImplCopyWith<T, _$LocalDataErrorImpl<T>> get copyWith =>
      __$$LocalDataErrorImplCopyWithImpl<T, _$LocalDataErrorImpl<T>>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(LocalDataEvent event) loading,
    required TResult Function(T? data, LocalDataEvent event) success,
    required TResult Function(AppError? error, LocalDataEvent event) error,
  }) {
    return error(this.error, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(LocalDataEvent event)? loading,
    TResult? Function(T? data, LocalDataEvent event)? success,
    TResult? Function(AppError? error, LocalDataEvent event)? error,
  }) {
    return error?.call(this.error, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(LocalDataEvent event)? loading,
    TResult Function(T? data, LocalDataEvent event)? success,
    TResult Function(AppError? error, LocalDataEvent event)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalDataIdle<T> value) idle,
    required TResult Function(LocalDataLoading<T> value) loading,
    required TResult Function(LocalDataSuccess<T> value) success,
    required TResult Function(LocalDataError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalDataIdle<T> value)? idle,
    TResult? Function(LocalDataLoading<T> value)? loading,
    TResult? Function(LocalDataSuccess<T> value)? success,
    TResult? Function(LocalDataError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalDataIdle<T> value)? idle,
    TResult Function(LocalDataLoading<T> value)? loading,
    TResult Function(LocalDataSuccess<T> value)? success,
    TResult Function(LocalDataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocalDataError<T> implements LocalDataState<T> {
  const factory LocalDataError({
    required final AppError? error,
    required final LocalDataEvent event,
  }) = _$LocalDataErrorImpl<T>;

  AppError? get error;
  LocalDataEvent get event;

  /// Create a copy of LocalDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalDataErrorImplCopyWith<T, _$LocalDataErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
