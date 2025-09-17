// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_data_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ApiDataEvent {
  ApiInfo get queryParams => throw _privateConstructorUsedError;
  ApiRequestType? get apiMethod => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )
    index,
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )
    general,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )
    store,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )
    update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiDataEventCopyWith<ApiDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataEventCopyWith<$Res> {
  factory $ApiDataEventCopyWith(
    ApiDataEvent value,
    $Res Function(ApiDataEvent) then,
  ) = _$ApiDataEventCopyWithImpl<$Res, ApiDataEvent>;
  @useResult
  $Res call({ApiInfo queryParams, ApiRequestType? apiMethod});
}

/// @nodoc
class _$ApiDataEventCopyWithImpl<$Res, $Val extends ApiDataEvent>
    implements $ApiDataEventCopyWith<$Res> {
  _$ApiDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? queryParams = null, Object? apiMethod = freezed}) {
    return _then(
      _value.copyWith(
            queryParams:
                null == queryParams
                    ? _value.queryParams
                    : queryParams // ignore: cast_nullable_to_non_nullable
                        as ApiInfo,
            apiMethod:
                freezed == apiMethod
                    ? _value.apiMethod
                    : apiMethod // ignore: cast_nullable_to_non_nullable
                        as ApiRequestType?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiIndexDataImplCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiIndexDataImplCopyWith(
    _$ApiIndexDataImpl value,
    $Res Function(_$ApiIndexDataImpl) then,
  ) = __$$ApiIndexDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ApiInfo queryParams,
    String? eventId,
    bool? listWithoutPagination,
    ApiRequestType? apiMethod,
  });
}

/// @nodoc
class __$$ApiIndexDataImplCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiIndexDataImpl>
    implements _$$ApiIndexDataImplCopyWith<$Res> {
  __$$ApiIndexDataImplCopyWithImpl(
    _$ApiIndexDataImpl _value,
    $Res Function(_$ApiIndexDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
    Object? eventId = freezed,
    Object? listWithoutPagination = freezed,
    Object? apiMethod = freezed,
  }) {
    return _then(
      _$ApiIndexDataImpl(
        queryParams:
            null == queryParams
                ? _value.queryParams
                : queryParams // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
        eventId:
            freezed == eventId
                ? _value.eventId
                : eventId // ignore: cast_nullable_to_non_nullable
                    as String?,
        listWithoutPagination:
            freezed == listWithoutPagination
                ? _value.listWithoutPagination
                : listWithoutPagination // ignore: cast_nullable_to_non_nullable
                    as bool?,
        apiMethod:
            freezed == apiMethod
                ? _value.apiMethod
                : apiMethod // ignore: cast_nullable_to_non_nullable
                    as ApiRequestType?,
      ),
    );
  }
}

/// @nodoc

class _$ApiIndexDataImpl implements ApiIndexData {
  const _$ApiIndexDataImpl({
    required this.queryParams,
    this.eventId,
    this.listWithoutPagination = false,
    this.apiMethod = ApiRequestType.get,
  });

  @override
  final ApiInfo queryParams;
  @override
  final String? eventId;
  @override
  @JsonKey()
  final bool? listWithoutPagination;
  @override
  @JsonKey()
  final ApiRequestType? apiMethod;

  @override
  String toString() {
    return 'ApiDataEvent.index(queryParams: $queryParams, eventId: $eventId, listWithoutPagination: $listWithoutPagination, apiMethod: $apiMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiIndexDataImpl &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.listWithoutPagination, listWithoutPagination) ||
                other.listWithoutPagination == listWithoutPagination) &&
            (identical(other.apiMethod, apiMethod) ||
                other.apiMethod == apiMethod));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    queryParams,
    eventId,
    listWithoutPagination,
    apiMethod,
  );

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiIndexDataImplCopyWith<_$ApiIndexDataImpl> get copyWith =>
      __$$ApiIndexDataImplCopyWithImpl<_$ApiIndexDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )
    index,
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )
    general,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )
    store,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )
    update,
  }) {
    return index(queryParams, eventId, listWithoutPagination, apiMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
  }) {
    return index?.call(queryParams, eventId, listWithoutPagination, apiMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
    required TResult orElse(),
  }) {
    if (index != null) {
      return index(queryParams, eventId, listWithoutPagination, apiMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) {
    return index(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) {
    return index?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) {
    if (index != null) {
      return index(this);
    }
    return orElse();
  }
}

abstract class ApiIndexData implements ApiDataEvent {
  const factory ApiIndexData({
    required final ApiInfo queryParams,
    final String? eventId,
    final bool? listWithoutPagination,
    final ApiRequestType? apiMethod,
  }) = _$ApiIndexDataImpl;

  @override
  ApiInfo get queryParams;
  String? get eventId;
  bool? get listWithoutPagination;
  @override
  ApiRequestType? get apiMethod;

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiIndexDataImplCopyWith<_$ApiIndexDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiGeneralDataImplCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiGeneralDataImplCopyWith(
    _$ApiGeneralDataImpl value,
    $Res Function(_$ApiGeneralDataImpl) then,
  ) = __$$ApiGeneralDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ApiInfo queryParams,
    String? eventId,
    bool? deferentApi,
    List<List<String>>? keysData,
    List<Interceptor>? interceptors,
    ApiRequestType? apiMethod,
  });
}

/// @nodoc
class __$$ApiGeneralDataImplCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiGeneralDataImpl>
    implements _$$ApiGeneralDataImplCopyWith<$Res> {
  __$$ApiGeneralDataImplCopyWithImpl(
    _$ApiGeneralDataImpl _value,
    $Res Function(_$ApiGeneralDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
    Object? eventId = freezed,
    Object? deferentApi = freezed,
    Object? keysData = freezed,
    Object? interceptors = freezed,
    Object? apiMethod = freezed,
  }) {
    return _then(
      _$ApiGeneralDataImpl(
        queryParams:
            null == queryParams
                ? _value.queryParams
                : queryParams // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
        eventId:
            freezed == eventId
                ? _value.eventId
                : eventId // ignore: cast_nullable_to_non_nullable
                    as String?,
        deferentApi:
            freezed == deferentApi
                ? _value.deferentApi
                : deferentApi // ignore: cast_nullable_to_non_nullable
                    as bool?,
        keysData:
            freezed == keysData
                ? _value._keysData
                : keysData // ignore: cast_nullable_to_non_nullable
                    as List<List<String>>?,
        interceptors:
            freezed == interceptors
                ? _value._interceptors
                : interceptors // ignore: cast_nullable_to_non_nullable
                    as List<Interceptor>?,
        apiMethod:
            freezed == apiMethod
                ? _value.apiMethod
                : apiMethod // ignore: cast_nullable_to_non_nullable
                    as ApiRequestType?,
      ),
    );
  }
}

/// @nodoc

class _$ApiGeneralDataImpl implements ApiGeneralData {
  const _$ApiGeneralDataImpl({
    required this.queryParams,
    this.eventId,
    this.deferentApi = false,
    final List<List<String>>? keysData,
    final List<Interceptor>? interceptors,
    this.apiMethod = ApiRequestType.get,
  }) : _keysData = keysData,
       _interceptors = interceptors;

  @override
  final ApiInfo queryParams;
  @override
  final String? eventId;
  @override
  @JsonKey()
  final bool? deferentApi;
  final List<List<String>>? _keysData;
  @override
  List<List<String>>? get keysData {
    final value = _keysData;
    if (value == null) return null;
    if (_keysData is EqualUnmodifiableListView) return _keysData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Interceptor>? _interceptors;
  @override
  List<Interceptor>? get interceptors {
    final value = _interceptors;
    if (value == null) return null;
    if (_interceptors is EqualUnmodifiableListView) return _interceptors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final ApiRequestType? apiMethod;

  @override
  String toString() {
    return 'ApiDataEvent.general(queryParams: $queryParams, eventId: $eventId, deferentApi: $deferentApi, keysData: $keysData, interceptors: $interceptors, apiMethod: $apiMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiGeneralDataImpl &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.deferentApi, deferentApi) ||
                other.deferentApi == deferentApi) &&
            const DeepCollectionEquality().equals(other._keysData, _keysData) &&
            const DeepCollectionEquality().equals(
              other._interceptors,
              _interceptors,
            ) &&
            (identical(other.apiMethod, apiMethod) ||
                other.apiMethod == apiMethod));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    queryParams,
    eventId,
    deferentApi,
    const DeepCollectionEquality().hash(_keysData),
    const DeepCollectionEquality().hash(_interceptors),
    apiMethod,
  );

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiGeneralDataImplCopyWith<_$ApiGeneralDataImpl> get copyWith =>
      __$$ApiGeneralDataImplCopyWithImpl<_$ApiGeneralDataImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )
    index,
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )
    general,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )
    store,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )
    update,
  }) {
    return general(
      queryParams,
      eventId,
      deferentApi,
      keysData,
      interceptors,
      apiMethod,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
  }) {
    return general?.call(
      queryParams,
      eventId,
      deferentApi,
      keysData,
      interceptors,
      apiMethod,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(
        queryParams,
        eventId,
        deferentApi,
        keysData,
        interceptors,
        apiMethod,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class ApiGeneralData implements ApiDataEvent {
  const factory ApiGeneralData({
    required final ApiInfo queryParams,
    final String? eventId,
    final bool? deferentApi,
    final List<List<String>>? keysData,
    final List<Interceptor>? interceptors,
    final ApiRequestType? apiMethod,
  }) = _$ApiGeneralDataImpl;

  @override
  ApiInfo get queryParams;
  String? get eventId;
  bool? get deferentApi;
  List<List<String>>? get keysData;
  List<Interceptor>? get interceptors;
  @override
  ApiRequestType? get apiMethod;

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiGeneralDataImplCopyWith<_$ApiGeneralDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiStoreDataImplCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiStoreDataImplCopyWith(
    _$ApiStoreDataImpl value,
    $Res Function(_$ApiStoreDataImpl) then,
  ) = __$$ApiStoreDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ApiInfo queryParams,
    String? id,
    String? title,
    ApiRequestType? apiMethod,
    bool? deferentApi,
    List<Interceptor>? interceptors,
  });
}

/// @nodoc
class __$$ApiStoreDataImplCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiStoreDataImpl>
    implements _$$ApiStoreDataImplCopyWith<$Res> {
  __$$ApiStoreDataImplCopyWithImpl(
    _$ApiStoreDataImpl _value,
    $Res Function(_$ApiStoreDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
    Object? id = freezed,
    Object? title = freezed,
    Object? apiMethod = freezed,
    Object? deferentApi = freezed,
    Object? interceptors = freezed,
  }) {
    return _then(
      _$ApiStoreDataImpl(
        queryParams:
            null == queryParams
                ? _value.queryParams
                : queryParams // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        apiMethod:
            freezed == apiMethod
                ? _value.apiMethod
                : apiMethod // ignore: cast_nullable_to_non_nullable
                    as ApiRequestType?,
        deferentApi:
            freezed == deferentApi
                ? _value.deferentApi
                : deferentApi // ignore: cast_nullable_to_non_nullable
                    as bool?,
        interceptors:
            freezed == interceptors
                ? _value._interceptors
                : interceptors // ignore: cast_nullable_to_non_nullable
                    as List<Interceptor>?,
      ),
    );
  }
}

/// @nodoc

class _$ApiStoreDataImpl implements ApiStoreData {
  const _$ApiStoreDataImpl({
    required this.queryParams,
    this.id,
    this.title,
    this.apiMethod = ApiRequestType.post,
    this.deferentApi = false,
    final List<Interceptor>? interceptors,
  }) : _interceptors = interceptors;

  @override
  final ApiInfo queryParams;
  @override
  final String? id;
  @override
  final String? title;
  @override
  @JsonKey()
  final ApiRequestType? apiMethod;
  @override
  @JsonKey()
  final bool? deferentApi;
  final List<Interceptor>? _interceptors;
  @override
  List<Interceptor>? get interceptors {
    final value = _interceptors;
    if (value == null) return null;
    if (_interceptors is EqualUnmodifiableListView) return _interceptors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ApiDataEvent.store(queryParams: $queryParams, id: $id, title: $title, apiMethod: $apiMethod, deferentApi: $deferentApi, interceptors: $interceptors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiStoreDataImpl &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.apiMethod, apiMethod) ||
                other.apiMethod == apiMethod) &&
            (identical(other.deferentApi, deferentApi) ||
                other.deferentApi == deferentApi) &&
            const DeepCollectionEquality().equals(
              other._interceptors,
              _interceptors,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    queryParams,
    id,
    title,
    apiMethod,
    deferentApi,
    const DeepCollectionEquality().hash(_interceptors),
  );

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiStoreDataImplCopyWith<_$ApiStoreDataImpl> get copyWith =>
      __$$ApiStoreDataImplCopyWithImpl<_$ApiStoreDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )
    index,
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )
    general,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )
    store,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )
    update,
  }) {
    return store(queryParams, id, title, apiMethod, deferentApi, interceptors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
  }) {
    return store?.call(
      queryParams,
      id,
      title,
      apiMethod,
      deferentApi,
      interceptors,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(
        queryParams,
        id,
        title,
        apiMethod,
        deferentApi,
        interceptors,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) {
    return store(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) {
    return store?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(this);
    }
    return orElse();
  }
}

abstract class ApiStoreData implements ApiDataEvent {
  const factory ApiStoreData({
    required final ApiInfo queryParams,
    final String? id,
    final String? title,
    final ApiRequestType? apiMethod,
    final bool? deferentApi,
    final List<Interceptor>? interceptors,
  }) = _$ApiStoreDataImpl;

  @override
  ApiInfo get queryParams;
  String? get id;
  String? get title;
  @override
  ApiRequestType? get apiMethod;
  bool? get deferentApi;
  List<Interceptor>? get interceptors;

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiStoreDataImplCopyWith<_$ApiStoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiUpdateDataImplCopyWith<$Res>
    implements $ApiDataEventCopyWith<$Res> {
  factory _$$ApiUpdateDataImplCopyWith(
    _$ApiUpdateDataImpl value,
    $Res Function(_$ApiUpdateDataImpl) then,
  ) = __$$ApiUpdateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiInfo queryParams, String? id, ApiRequestType? apiMethod});
}

/// @nodoc
class __$$ApiUpdateDataImplCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res, _$ApiUpdateDataImpl>
    implements _$$ApiUpdateDataImplCopyWith<$Res> {
  __$$ApiUpdateDataImplCopyWithImpl(
    _$ApiUpdateDataImpl _value,
    $Res Function(_$ApiUpdateDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryParams = null,
    Object? id = freezed,
    Object? apiMethod = freezed,
  }) {
    return _then(
      _$ApiUpdateDataImpl(
        queryParams:
            null == queryParams
                ? _value.queryParams
                : queryParams // ignore: cast_nullable_to_non_nullable
                    as ApiInfo,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        apiMethod:
            freezed == apiMethod
                ? _value.apiMethod
                : apiMethod // ignore: cast_nullable_to_non_nullable
                    as ApiRequestType?,
      ),
    );
  }
}

/// @nodoc

class _$ApiUpdateDataImpl implements ApiUpdateData {
  const _$ApiUpdateDataImpl({
    required this.queryParams,
    this.id,
    this.apiMethod = ApiRequestType.post,
  });

  @override
  final ApiInfo queryParams;
  @override
  final String? id;
  @override
  @JsonKey()
  final ApiRequestType? apiMethod;

  @override
  String toString() {
    return 'ApiDataEvent.update(queryParams: $queryParams, id: $id, apiMethod: $apiMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUpdateDataImpl &&
            (identical(other.queryParams, queryParams) ||
                other.queryParams == queryParams) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.apiMethod, apiMethod) ||
                other.apiMethod == apiMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryParams, id, apiMethod);

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUpdateDataImplCopyWith<_$ApiUpdateDataImpl> get copyWith =>
      __$$ApiUpdateDataImplCopyWithImpl<_$ApiUpdateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )
    index,
    required TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )
    general,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )
    store,
    required TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )
    update,
  }) {
    return update(queryParams, id, apiMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult? Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult? Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
  }) {
    return update?.call(queryParams, id, apiMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? listWithoutPagination,
      ApiRequestType? apiMethod,
    )?
    index,
    TResult Function(
      ApiInfo queryParams,
      String? eventId,
      bool? deferentApi,
      List<List<String>>? keysData,
      List<Interceptor>? interceptors,
      ApiRequestType? apiMethod,
    )?
    general,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      String? title,
      ApiRequestType? apiMethod,
      bool? deferentApi,
      List<Interceptor>? interceptors,
    )?
    store,
    TResult Function(
      ApiInfo queryParams,
      String? id,
      ApiRequestType? apiMethod,
    )?
    update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(queryParams, id, apiMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiIndexData value) index,
    required TResult Function(ApiGeneralData value) general,
    required TResult Function(ApiStoreData value) store,
    required TResult Function(ApiUpdateData value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiIndexData value)? index,
    TResult? Function(ApiGeneralData value)? general,
    TResult? Function(ApiStoreData value)? store,
    TResult? Function(ApiUpdateData value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiIndexData value)? index,
    TResult Function(ApiGeneralData value)? general,
    TResult Function(ApiStoreData value)? store,
    TResult Function(ApiUpdateData value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ApiUpdateData implements ApiDataEvent {
  const factory ApiUpdateData({
    required final ApiInfo queryParams,
    final String? id,
    final ApiRequestType? apiMethod,
  }) = _$ApiUpdateDataImpl;

  @override
  ApiInfo get queryParams;
  String? get id;
  @override
  ApiRequestType? get apiMethod;

  /// Create a copy of ApiDataEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiUpdateDataImplCopyWith<_$ApiUpdateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
