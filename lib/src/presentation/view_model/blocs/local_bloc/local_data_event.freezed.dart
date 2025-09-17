// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocalDataEvent {
  LocalParams get localParams => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalParams localParams) store,
    required TResult Function(LocalParams localParams) index,
    required TResult Function(LocalParams localParams) remove,
    required TResult Function(LocalParams localParams) clear,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalParams localParams)? store,
    TResult? Function(LocalParams localParams)? index,
    TResult? Function(LocalParams localParams)? remove,
    TResult? Function(LocalParams localParams)? clear,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalParams localParams)? store,
    TResult Function(LocalParams localParams)? index,
    TResult Function(LocalParams localParams)? remove,
    TResult Function(LocalParams localParams)? clear,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalStoreData value) store,
    required TResult Function(LocalIndexData value) index,
    required TResult Function(LocalRemoveData value) remove,
    required TResult Function(LocalClearData value) clear,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalStoreData value)? store,
    TResult? Function(LocalIndexData value)? index,
    TResult? Function(LocalRemoveData value)? remove,
    TResult? Function(LocalClearData value)? clear,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalStoreData value)? store,
    TResult Function(LocalIndexData value)? index,
    TResult Function(LocalRemoveData value)? remove,
    TResult Function(LocalClearData value)? clear,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalDataEventCopyWith<LocalDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDataEventCopyWith<$Res> {
  factory $LocalDataEventCopyWith(
    LocalDataEvent value,
    $Res Function(LocalDataEvent) then,
  ) = _$LocalDataEventCopyWithImpl<$Res, LocalDataEvent>;
  @useResult
  $Res call({LocalParams localParams});
}

/// @nodoc
class _$LocalDataEventCopyWithImpl<$Res, $Val extends LocalDataEvent>
    implements $LocalDataEventCopyWith<$Res> {
  _$LocalDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? localParams = null}) {
    return _then(
      _value.copyWith(
            localParams:
                null == localParams
                    ? _value.localParams
                    : localParams // ignore: cast_nullable_to_non_nullable
                        as LocalParams,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalStoreDataImplCopyWith<$Res>
    implements $LocalDataEventCopyWith<$Res> {
  factory _$$LocalStoreDataImplCopyWith(
    _$LocalStoreDataImpl value,
    $Res Function(_$LocalStoreDataImpl) then,
  ) = __$$LocalStoreDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalParams localParams});
}

/// @nodoc
class __$$LocalStoreDataImplCopyWithImpl<$Res>
    extends _$LocalDataEventCopyWithImpl<$Res, _$LocalStoreDataImpl>
    implements _$$LocalStoreDataImplCopyWith<$Res> {
  __$$LocalStoreDataImplCopyWithImpl(
    _$LocalStoreDataImpl _value,
    $Res Function(_$LocalStoreDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? localParams = null}) {
    return _then(
      _$LocalStoreDataImpl(
        localParams:
            null == localParams
                ? _value.localParams
                : localParams // ignore: cast_nullable_to_non_nullable
                    as LocalParams,
      ),
    );
  }
}

/// @nodoc

class _$LocalStoreDataImpl implements LocalStoreData {
  const _$LocalStoreDataImpl({required this.localParams});

  @override
  final LocalParams localParams;

  @override
  String toString() {
    return 'LocalDataEvent.store(localParams: $localParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalStoreDataImpl &&
            (identical(other.localParams, localParams) ||
                other.localParams == localParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localParams);

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalStoreDataImplCopyWith<_$LocalStoreDataImpl> get copyWith =>
      __$$LocalStoreDataImplCopyWithImpl<_$LocalStoreDataImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalParams localParams) store,
    required TResult Function(LocalParams localParams) index,
    required TResult Function(LocalParams localParams) remove,
    required TResult Function(LocalParams localParams) clear,
  }) {
    return store(localParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalParams localParams)? store,
    TResult? Function(LocalParams localParams)? index,
    TResult? Function(LocalParams localParams)? remove,
    TResult? Function(LocalParams localParams)? clear,
  }) {
    return store?.call(localParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalParams localParams)? store,
    TResult Function(LocalParams localParams)? index,
    TResult Function(LocalParams localParams)? remove,
    TResult Function(LocalParams localParams)? clear,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(localParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalStoreData value) store,
    required TResult Function(LocalIndexData value) index,
    required TResult Function(LocalRemoveData value) remove,
    required TResult Function(LocalClearData value) clear,
  }) {
    return store(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalStoreData value)? store,
    TResult? Function(LocalIndexData value)? index,
    TResult? Function(LocalRemoveData value)? remove,
    TResult? Function(LocalClearData value)? clear,
  }) {
    return store?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalStoreData value)? store,
    TResult Function(LocalIndexData value)? index,
    TResult Function(LocalRemoveData value)? remove,
    TResult Function(LocalClearData value)? clear,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(this);
    }
    return orElse();
  }
}

abstract class LocalStoreData implements LocalDataEvent {
  const factory LocalStoreData({required final LocalParams localParams}) =
      _$LocalStoreDataImpl;

  @override
  LocalParams get localParams;

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalStoreDataImplCopyWith<_$LocalStoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalIndexDataImplCopyWith<$Res>
    implements $LocalDataEventCopyWith<$Res> {
  factory _$$LocalIndexDataImplCopyWith(
    _$LocalIndexDataImpl value,
    $Res Function(_$LocalIndexDataImpl) then,
  ) = __$$LocalIndexDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalParams localParams});
}

/// @nodoc
class __$$LocalIndexDataImplCopyWithImpl<$Res>
    extends _$LocalDataEventCopyWithImpl<$Res, _$LocalIndexDataImpl>
    implements _$$LocalIndexDataImplCopyWith<$Res> {
  __$$LocalIndexDataImplCopyWithImpl(
    _$LocalIndexDataImpl _value,
    $Res Function(_$LocalIndexDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? localParams = null}) {
    return _then(
      _$LocalIndexDataImpl(
        localParams:
            null == localParams
                ? _value.localParams
                : localParams // ignore: cast_nullable_to_non_nullable
                    as LocalParams,
      ),
    );
  }
}

/// @nodoc

class _$LocalIndexDataImpl implements LocalIndexData {
  const _$LocalIndexDataImpl({required this.localParams});

  @override
  final LocalParams localParams;

  @override
  String toString() {
    return 'LocalDataEvent.index(localParams: $localParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalIndexDataImpl &&
            (identical(other.localParams, localParams) ||
                other.localParams == localParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localParams);

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalIndexDataImplCopyWith<_$LocalIndexDataImpl> get copyWith =>
      __$$LocalIndexDataImplCopyWithImpl<_$LocalIndexDataImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalParams localParams) store,
    required TResult Function(LocalParams localParams) index,
    required TResult Function(LocalParams localParams) remove,
    required TResult Function(LocalParams localParams) clear,
  }) {
    return index(localParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalParams localParams)? store,
    TResult? Function(LocalParams localParams)? index,
    TResult? Function(LocalParams localParams)? remove,
    TResult? Function(LocalParams localParams)? clear,
  }) {
    return index?.call(localParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalParams localParams)? store,
    TResult Function(LocalParams localParams)? index,
    TResult Function(LocalParams localParams)? remove,
    TResult Function(LocalParams localParams)? clear,
    required TResult orElse(),
  }) {
    if (index != null) {
      return index(localParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalStoreData value) store,
    required TResult Function(LocalIndexData value) index,
    required TResult Function(LocalRemoveData value) remove,
    required TResult Function(LocalClearData value) clear,
  }) {
    return index(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalStoreData value)? store,
    TResult? Function(LocalIndexData value)? index,
    TResult? Function(LocalRemoveData value)? remove,
    TResult? Function(LocalClearData value)? clear,
  }) {
    return index?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalStoreData value)? store,
    TResult Function(LocalIndexData value)? index,
    TResult Function(LocalRemoveData value)? remove,
    TResult Function(LocalClearData value)? clear,
    required TResult orElse(),
  }) {
    if (index != null) {
      return index(this);
    }
    return orElse();
  }
}

abstract class LocalIndexData implements LocalDataEvent {
  const factory LocalIndexData({required final LocalParams localParams}) =
      _$LocalIndexDataImpl;

  @override
  LocalParams get localParams;

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalIndexDataImplCopyWith<_$LocalIndexDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalRemoveDataImplCopyWith<$Res>
    implements $LocalDataEventCopyWith<$Res> {
  factory _$$LocalRemoveDataImplCopyWith(
    _$LocalRemoveDataImpl value,
    $Res Function(_$LocalRemoveDataImpl) then,
  ) = __$$LocalRemoveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalParams localParams});
}

/// @nodoc
class __$$LocalRemoveDataImplCopyWithImpl<$Res>
    extends _$LocalDataEventCopyWithImpl<$Res, _$LocalRemoveDataImpl>
    implements _$$LocalRemoveDataImplCopyWith<$Res> {
  __$$LocalRemoveDataImplCopyWithImpl(
    _$LocalRemoveDataImpl _value,
    $Res Function(_$LocalRemoveDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? localParams = null}) {
    return _then(
      _$LocalRemoveDataImpl(
        localParams:
            null == localParams
                ? _value.localParams
                : localParams // ignore: cast_nullable_to_non_nullable
                    as LocalParams,
      ),
    );
  }
}

/// @nodoc

class _$LocalRemoveDataImpl implements LocalRemoveData {
  const _$LocalRemoveDataImpl({required this.localParams});

  @override
  final LocalParams localParams;

  @override
  String toString() {
    return 'LocalDataEvent.remove(localParams: $localParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalRemoveDataImpl &&
            (identical(other.localParams, localParams) ||
                other.localParams == localParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localParams);

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalRemoveDataImplCopyWith<_$LocalRemoveDataImpl> get copyWith =>
      __$$LocalRemoveDataImplCopyWithImpl<_$LocalRemoveDataImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalParams localParams) store,
    required TResult Function(LocalParams localParams) index,
    required TResult Function(LocalParams localParams) remove,
    required TResult Function(LocalParams localParams) clear,
  }) {
    return remove(localParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalParams localParams)? store,
    TResult? Function(LocalParams localParams)? index,
    TResult? Function(LocalParams localParams)? remove,
    TResult? Function(LocalParams localParams)? clear,
  }) {
    return remove?.call(localParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalParams localParams)? store,
    TResult Function(LocalParams localParams)? index,
    TResult Function(LocalParams localParams)? remove,
    TResult Function(LocalParams localParams)? clear,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(localParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalStoreData value) store,
    required TResult Function(LocalIndexData value) index,
    required TResult Function(LocalRemoveData value) remove,
    required TResult Function(LocalClearData value) clear,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalStoreData value)? store,
    TResult? Function(LocalIndexData value)? index,
    TResult? Function(LocalRemoveData value)? remove,
    TResult? Function(LocalClearData value)? clear,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalStoreData value)? store,
    TResult Function(LocalIndexData value)? index,
    TResult Function(LocalRemoveData value)? remove,
    TResult Function(LocalClearData value)? clear,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class LocalRemoveData implements LocalDataEvent {
  const factory LocalRemoveData({required final LocalParams localParams}) =
      _$LocalRemoveDataImpl;

  @override
  LocalParams get localParams;

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalRemoveDataImplCopyWith<_$LocalRemoveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalClearDataImplCopyWith<$Res>
    implements $LocalDataEventCopyWith<$Res> {
  factory _$$LocalClearDataImplCopyWith(
    _$LocalClearDataImpl value,
    $Res Function(_$LocalClearDataImpl) then,
  ) = __$$LocalClearDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalParams localParams});
}

/// @nodoc
class __$$LocalClearDataImplCopyWithImpl<$Res>
    extends _$LocalDataEventCopyWithImpl<$Res, _$LocalClearDataImpl>
    implements _$$LocalClearDataImplCopyWith<$Res> {
  __$$LocalClearDataImplCopyWithImpl(
    _$LocalClearDataImpl _value,
    $Res Function(_$LocalClearDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? localParams = null}) {
    return _then(
      _$LocalClearDataImpl(
        localParams:
            null == localParams
                ? _value.localParams
                : localParams // ignore: cast_nullable_to_non_nullable
                    as LocalParams,
      ),
    );
  }
}

/// @nodoc

class _$LocalClearDataImpl implements LocalClearData {
  const _$LocalClearDataImpl({required this.localParams});

  @override
  final LocalParams localParams;

  @override
  String toString() {
    return 'LocalDataEvent.clear(localParams: $localParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalClearDataImpl &&
            (identical(other.localParams, localParams) ||
                other.localParams == localParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localParams);

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalClearDataImplCopyWith<_$LocalClearDataImpl> get copyWith =>
      __$$LocalClearDataImplCopyWithImpl<_$LocalClearDataImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalParams localParams) store,
    required TResult Function(LocalParams localParams) index,
    required TResult Function(LocalParams localParams) remove,
    required TResult Function(LocalParams localParams) clear,
  }) {
    return clear(localParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalParams localParams)? store,
    TResult? Function(LocalParams localParams)? index,
    TResult? Function(LocalParams localParams)? remove,
    TResult? Function(LocalParams localParams)? clear,
  }) {
    return clear?.call(localParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalParams localParams)? store,
    TResult Function(LocalParams localParams)? index,
    TResult Function(LocalParams localParams)? remove,
    TResult Function(LocalParams localParams)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(localParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalStoreData value) store,
    required TResult Function(LocalIndexData value) index,
    required TResult Function(LocalRemoveData value) remove,
    required TResult Function(LocalClearData value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalStoreData value)? store,
    TResult? Function(LocalIndexData value)? index,
    TResult? Function(LocalRemoveData value)? remove,
    TResult? Function(LocalClearData value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalStoreData value)? store,
    TResult Function(LocalIndexData value)? index,
    TResult Function(LocalRemoveData value)? remove,
    TResult Function(LocalClearData value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class LocalClearData implements LocalDataEvent {
  const factory LocalClearData({required final LocalParams localParams}) =
      _$LocalClearDataImpl;

  @override
  LocalParams get localParams;

  /// Create a copy of LocalDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalClearDataImplCopyWith<_$LocalClearDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
