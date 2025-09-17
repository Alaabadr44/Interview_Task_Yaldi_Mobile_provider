// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correspondence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CorrespondenceModel _$CorrespondenceModelFromJson(Map<String, dynamic> json) {
  return _CorrespondenceModel.fromJson(json);
}

/// @nodoc
mixin _$CorrespondenceModel {
  Accident get accident => throw _privateConstructorUsedError;
  BankTransfer get bankTransfer => throw _privateConstructorUsedError;
  String? get carForm => throw _privateConstructorUsedError;
  String? get insuranceCertificate => throw _privateConstructorUsedError;

  /// Serializes this CorrespondenceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CorrespondenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CorrespondenceModelCopyWith<CorrespondenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrespondenceModelCopyWith<$Res> {
  factory $CorrespondenceModelCopyWith(
    CorrespondenceModel value,
    $Res Function(CorrespondenceModel) then,
  ) = _$CorrespondenceModelCopyWithImpl<$Res, CorrespondenceModel>;
  @useResult
  $Res call({
    Accident accident,
    BankTransfer bankTransfer,
    String? carForm,
    String? insuranceCertificate,
  });

  $AccidentCopyWith<$Res> get accident;
  $BankTransferCopyWith<$Res> get bankTransfer;
}

/// @nodoc
class _$CorrespondenceModelCopyWithImpl<$Res, $Val extends CorrespondenceModel>
    implements $CorrespondenceModelCopyWith<$Res> {
  _$CorrespondenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CorrespondenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accident = null,
    Object? bankTransfer = null,
    Object? carForm = freezed,
    Object? insuranceCertificate = freezed,
  }) {
    return _then(
      _value.copyWith(
            accident:
                null == accident
                    ? _value.accident
                    : accident // ignore: cast_nullable_to_non_nullable
                        as Accident,
            bankTransfer:
                null == bankTransfer
                    ? _value.bankTransfer
                    : bankTransfer // ignore: cast_nullable_to_non_nullable
                        as BankTransfer,
            carForm:
                freezed == carForm
                    ? _value.carForm
                    : carForm // ignore: cast_nullable_to_non_nullable
                        as String?,
            insuranceCertificate:
                freezed == insuranceCertificate
                    ? _value.insuranceCertificate
                    : insuranceCertificate // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of CorrespondenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccidentCopyWith<$Res> get accident {
    return $AccidentCopyWith<$Res>(_value.accident, (value) {
      return _then(_value.copyWith(accident: value) as $Val);
    });
  }

  /// Create a copy of CorrespondenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankTransferCopyWith<$Res> get bankTransfer {
    return $BankTransferCopyWith<$Res>(_value.bankTransfer, (value) {
      return _then(_value.copyWith(bankTransfer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CorrespondenceModelImplCopyWith<$Res>
    implements $CorrespondenceModelCopyWith<$Res> {
  factory _$$CorrespondenceModelImplCopyWith(
    _$CorrespondenceModelImpl value,
    $Res Function(_$CorrespondenceModelImpl) then,
  ) = __$$CorrespondenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Accident accident,
    BankTransfer bankTransfer,
    String? carForm,
    String? insuranceCertificate,
  });

  @override
  $AccidentCopyWith<$Res> get accident;
  @override
  $BankTransferCopyWith<$Res> get bankTransfer;
}

/// @nodoc
class __$$CorrespondenceModelImplCopyWithImpl<$Res>
    extends _$CorrespondenceModelCopyWithImpl<$Res, _$CorrespondenceModelImpl>
    implements _$$CorrespondenceModelImplCopyWith<$Res> {
  __$$CorrespondenceModelImplCopyWithImpl(
    _$CorrespondenceModelImpl _value,
    $Res Function(_$CorrespondenceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CorrespondenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accident = null,
    Object? bankTransfer = null,
    Object? carForm = freezed,
    Object? insuranceCertificate = freezed,
  }) {
    return _then(
      _$CorrespondenceModelImpl(
        accident:
            null == accident
                ? _value.accident
                : accident // ignore: cast_nullable_to_non_nullable
                    as Accident,
        bankTransfer:
            null == bankTransfer
                ? _value.bankTransfer
                : bankTransfer // ignore: cast_nullable_to_non_nullable
                    as BankTransfer,
        carForm:
            freezed == carForm
                ? _value.carForm
                : carForm // ignore: cast_nullable_to_non_nullable
                    as String?,
        insuranceCertificate:
            freezed == insuranceCertificate
                ? _value.insuranceCertificate
                : insuranceCertificate // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CorrespondenceModelImpl implements _CorrespondenceModel {
  const _$CorrespondenceModelImpl({
    required this.accident,
    required this.bankTransfer,
    required this.carForm,
    required this.insuranceCertificate,
  });

  factory _$CorrespondenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CorrespondenceModelImplFromJson(json);

  @override
  final Accident accident;
  @override
  final BankTransfer bankTransfer;
  @override
  final String? carForm;
  @override
  final String? insuranceCertificate;

  @override
  String toString() {
    return 'CorrespondenceModel(accident: $accident, bankTransfer: $bankTransfer, carForm: $carForm, insuranceCertificate: $insuranceCertificate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CorrespondenceModelImpl &&
            (identical(other.accident, accident) ||
                other.accident == accident) &&
            (identical(other.bankTransfer, bankTransfer) ||
                other.bankTransfer == bankTransfer) &&
            (identical(other.carForm, carForm) || other.carForm == carForm) &&
            (identical(other.insuranceCertificate, insuranceCertificate) ||
                other.insuranceCertificate == insuranceCertificate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    accident,
    bankTransfer,
    carForm,
    insuranceCertificate,
  );

  /// Create a copy of CorrespondenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CorrespondenceModelImplCopyWith<_$CorrespondenceModelImpl> get copyWith =>
      __$$CorrespondenceModelImplCopyWithImpl<_$CorrespondenceModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CorrespondenceModelImplToJson(this);
  }
}

abstract class _CorrespondenceModel implements CorrespondenceModel {
  const factory _CorrespondenceModel({
    required final Accident accident,
    required final BankTransfer bankTransfer,
    required final String? carForm,
    required final String? insuranceCertificate,
  }) = _$CorrespondenceModelImpl;

  factory _CorrespondenceModel.fromJson(Map<String, dynamic> json) =
      _$CorrespondenceModelImpl.fromJson;

  @override
  Accident get accident;
  @override
  BankTransfer get bankTransfer;
  @override
  String? get carForm;
  @override
  String? get insuranceCertificate;

  /// Create a copy of CorrespondenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CorrespondenceModelImplCopyWith<_$CorrespondenceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Accident _$AccidentFromJson(Map<String, dynamic> json) {
  return _Accident.fromJson(json);
}

/// @nodoc
mixin _$Accident {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this Accident to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Accident
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccidentCopyWith<Accident> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccidentCopyWith<$Res> {
  factory $AccidentCopyWith(Accident value, $Res Function(Accident) then) =
      _$AccidentCopyWithImpl<$Res, Accident>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$AccidentCopyWithImpl<$Res, $Val extends Accident>
    implements $AccidentCopyWith<$Res> {
  _$AccidentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Accident
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            key:
                null == key
                    ? _value.key
                    : key // ignore: cast_nullable_to_non_nullable
                        as String,
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccidentImplCopyWith<$Res>
    implements $AccidentCopyWith<$Res> {
  factory _$$AccidentImplCopyWith(
    _$AccidentImpl value,
    $Res Function(_$AccidentImpl) then,
  ) = __$$AccidentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$AccidentImplCopyWithImpl<$Res>
    extends _$AccidentCopyWithImpl<$Res, _$AccidentImpl>
    implements _$$AccidentImplCopyWith<$Res> {
  __$$AccidentImplCopyWithImpl(
    _$AccidentImpl _value,
    $Res Function(_$AccidentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Accident
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null, Object? value = null}) {
    return _then(
      _$AccidentImpl(
        key:
            null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                    as String,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccidentImpl implements _Accident {
  const _$AccidentImpl({required this.key, required this.value});

  factory _$AccidentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccidentImplFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'Accident(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccidentImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  /// Create a copy of Accident
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccidentImplCopyWith<_$AccidentImpl> get copyWith =>
      __$$AccidentImplCopyWithImpl<_$AccidentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccidentImplToJson(this);
  }
}

abstract class _Accident implements Accident {
  const factory _Accident({
    required final String key,
    required final String value,
  }) = _$AccidentImpl;

  factory _Accident.fromJson(Map<String, dynamic> json) =
      _$AccidentImpl.fromJson;

  @override
  String get key;
  @override
  String get value;

  /// Create a copy of Accident
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccidentImplCopyWith<_$AccidentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BankTransfer _$BankTransferFromJson(Map<String, dynamic> json) {
  return _BankTransfer.fromJson(json);
}

/// @nodoc
mixin _$BankTransfer {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this BankTransfer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankTransferCopyWith<BankTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankTransferCopyWith<$Res> {
  factory $BankTransferCopyWith(
    BankTransfer value,
    $Res Function(BankTransfer) then,
  ) = _$BankTransferCopyWithImpl<$Res, BankTransfer>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$BankTransferCopyWithImpl<$Res, $Val extends BankTransfer>
    implements $BankTransferCopyWith<$Res> {
  _$BankTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            key:
                null == key
                    ? _value.key
                    : key // ignore: cast_nullable_to_non_nullable
                        as String,
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BankTransferImplCopyWith<$Res>
    implements $BankTransferCopyWith<$Res> {
  factory _$$BankTransferImplCopyWith(
    _$BankTransferImpl value,
    $Res Function(_$BankTransferImpl) then,
  ) = __$$BankTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$BankTransferImplCopyWithImpl<$Res>
    extends _$BankTransferCopyWithImpl<$Res, _$BankTransferImpl>
    implements _$$BankTransferImplCopyWith<$Res> {
  __$$BankTransferImplCopyWithImpl(
    _$BankTransferImpl _value,
    $Res Function(_$BankTransferImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BankTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? key = null, Object? value = null}) {
    return _then(
      _$BankTransferImpl(
        key:
            null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                    as String,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BankTransferImpl implements _BankTransfer {
  const _$BankTransferImpl({required this.key, required this.value});

  factory _$BankTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankTransferImplFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'BankTransfer(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankTransferImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  /// Create a copy of BankTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankTransferImplCopyWith<_$BankTransferImpl> get copyWith =>
      __$$BankTransferImplCopyWithImpl<_$BankTransferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankTransferImplToJson(this);
  }
}

abstract class _BankTransfer implements BankTransfer {
  const factory _BankTransfer({
    required final String key,
    required final String value,
  }) = _$BankTransferImpl;

  factory _BankTransfer.fromJson(Map<String, dynamic> json) =
      _$BankTransferImpl.fromJson;

  @override
  String get key;
  @override
  String get value;

  /// Create a copy of BankTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankTransferImplCopyWith<_$BankTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
