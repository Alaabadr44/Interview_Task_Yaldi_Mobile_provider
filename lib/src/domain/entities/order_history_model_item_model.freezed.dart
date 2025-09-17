// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_model_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderHistoryModelItemModel _$OrderHistoryModelItemModelFromJson(
  Map<String, dynamic> json,
) {
  return _OrderHistoryModelItemModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryModelItemModel {
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Car? get car => throw _privateConstructorUsedError;
  Branch? get pickupBranch => throw _privateConstructorUsedError;
  Branch? get dropoffBranch => throw _privateConstructorUsedError;
  String? get pickupDate => throw _privateConstructorUsedError;
  String? get dropoffDate => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  int? get finalPrice => throw _privateConstructorUsedError;

  /// Serializes this OrderHistoryModelItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderHistoryModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderHistoryModelItemModelCopyWith<OrderHistoryModelItemModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryModelItemModelCopyWith<$Res> {
  factory $OrderHistoryModelItemModelCopyWith(
    OrderHistoryModelItemModel value,
    $Res Function(OrderHistoryModelItemModel) then,
  ) =
      _$OrderHistoryModelItemModelCopyWithImpl<
        $Res,
        OrderHistoryModelItemModel
      >;
  @useResult
  $Res call({
    String? id,
    String? status,
    Car? car,
    Branch? pickupBranch,
    Branch? dropoffBranch,
    String? pickupDate,
    String? dropoffDate,
    String? time,
    int? finalPrice,
  });

  $CarCopyWith<$Res>? get car;
  $BranchCopyWith<$Res>? get pickupBranch;
  $BranchCopyWith<$Res>? get dropoffBranch;
}

/// @nodoc
class _$OrderHistoryModelItemModelCopyWithImpl<
  $Res,
  $Val extends OrderHistoryModelItemModel
>
    implements $OrderHistoryModelItemModelCopyWith<$Res> {
  _$OrderHistoryModelItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderHistoryModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? car = freezed,
    Object? pickupBranch = freezed,
    Object? dropoffBranch = freezed,
    Object? pickupDate = freezed,
    Object? dropoffDate = freezed,
    Object? time = freezed,
    Object? finalPrice = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String?,
            car:
                freezed == car
                    ? _value.car
                    : car // ignore: cast_nullable_to_non_nullable
                        as Car?,
            pickupBranch:
                freezed == pickupBranch
                    ? _value.pickupBranch
                    : pickupBranch // ignore: cast_nullable_to_non_nullable
                        as Branch?,
            dropoffBranch:
                freezed == dropoffBranch
                    ? _value.dropoffBranch
                    : dropoffBranch // ignore: cast_nullable_to_non_nullable
                        as Branch?,
            pickupDate:
                freezed == pickupDate
                    ? _value.pickupDate
                    : pickupDate // ignore: cast_nullable_to_non_nullable
                        as String?,
            dropoffDate:
                freezed == dropoffDate
                    ? _value.dropoffDate
                    : dropoffDate // ignore: cast_nullable_to_non_nullable
                        as String?,
            time:
                freezed == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as String?,
            finalPrice:
                freezed == finalPrice
                    ? _value.finalPrice
                    : finalPrice // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderHistoryModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res>? get car {
    if (_value.car == null) {
      return null;
    }

    return $CarCopyWith<$Res>(_value.car!, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }

  /// Create a copy of OrderHistoryModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res>? get pickupBranch {
    if (_value.pickupBranch == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.pickupBranch!, (value) {
      return _then(_value.copyWith(pickupBranch: value) as $Val);
    });
  }

  /// Create a copy of OrderHistoryModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res>? get dropoffBranch {
    if (_value.dropoffBranch == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.dropoffBranch!, (value) {
      return _then(_value.copyWith(dropoffBranch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderHistoryModelItemModelImplCopyWith<$Res>
    implements $OrderHistoryModelItemModelCopyWith<$Res> {
  factory _$$OrderHistoryModelItemModelImplCopyWith(
    _$OrderHistoryModelItemModelImpl value,
    $Res Function(_$OrderHistoryModelItemModelImpl) then,
  ) = __$$OrderHistoryModelItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? status,
    Car? car,
    Branch? pickupBranch,
    Branch? dropoffBranch,
    String? pickupDate,
    String? dropoffDate,
    String? time,
    int? finalPrice,
  });

  @override
  $CarCopyWith<$Res>? get car;
  @override
  $BranchCopyWith<$Res>? get pickupBranch;
  @override
  $BranchCopyWith<$Res>? get dropoffBranch;
}

/// @nodoc
class __$$OrderHistoryModelItemModelImplCopyWithImpl<$Res>
    extends
        _$OrderHistoryModelItemModelCopyWithImpl<
          $Res,
          _$OrderHistoryModelItemModelImpl
        >
    implements _$$OrderHistoryModelItemModelImplCopyWith<$Res> {
  __$$OrderHistoryModelItemModelImplCopyWithImpl(
    _$OrderHistoryModelItemModelImpl _value,
    $Res Function(_$OrderHistoryModelItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderHistoryModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? car = freezed,
    Object? pickupBranch = freezed,
    Object? dropoffBranch = freezed,
    Object? pickupDate = freezed,
    Object? dropoffDate = freezed,
    Object? time = freezed,
    Object? finalPrice = freezed,
  }) {
    return _then(
      _$OrderHistoryModelItemModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String?,
        car:
            freezed == car
                ? _value.car
                : car // ignore: cast_nullable_to_non_nullable
                    as Car?,
        pickupBranch:
            freezed == pickupBranch
                ? _value.pickupBranch
                : pickupBranch // ignore: cast_nullable_to_non_nullable
                    as Branch?,
        dropoffBranch:
            freezed == dropoffBranch
                ? _value.dropoffBranch
                : dropoffBranch // ignore: cast_nullable_to_non_nullable
                    as Branch?,
        pickupDate:
            freezed == pickupDate
                ? _value.pickupDate
                : pickupDate // ignore: cast_nullable_to_non_nullable
                    as String?,
        dropoffDate:
            freezed == dropoffDate
                ? _value.dropoffDate
                : dropoffDate // ignore: cast_nullable_to_non_nullable
                    as String?,
        time:
            freezed == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as String?,
        finalPrice:
            freezed == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderHistoryModelItemModelImpl implements _OrderHistoryModelItemModel {
  const _$OrderHistoryModelItemModelImpl({
    this.id,
    this.status,
    this.car,
    this.pickupBranch,
    this.dropoffBranch,
    this.pickupDate,
    this.dropoffDate,
    this.time,
    this.finalPrice,
  });

  factory _$OrderHistoryModelItemModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$OrderHistoryModelItemModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? status;
  @override
  final Car? car;
  @override
  final Branch? pickupBranch;
  @override
  final Branch? dropoffBranch;
  @override
  final String? pickupDate;
  @override
  final String? dropoffDate;
  @override
  final String? time;
  @override
  final int? finalPrice;

  @override
  String toString() {
    return 'OrderHistoryModelItemModel(id: $id, status: $status, car: $car, pickupBranch: $pickupBranch, dropoffBranch: $dropoffBranch, pickupDate: $pickupDate, dropoffDate: $dropoffDate, time: $time, finalPrice: $finalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryModelItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.pickupBranch, pickupBranch) ||
                other.pickupBranch == pickupBranch) &&
            (identical(other.dropoffBranch, dropoffBranch) ||
                other.dropoffBranch == dropoffBranch) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.dropoffDate, dropoffDate) ||
                other.dropoffDate == dropoffDate) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    status,
    car,
    pickupBranch,
    dropoffBranch,
    pickupDate,
    dropoffDate,
    time,
    finalPrice,
  );

  /// Create a copy of OrderHistoryModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryModelItemModelImplCopyWith<_$OrderHistoryModelItemModelImpl>
  get copyWith => __$$OrderHistoryModelItemModelImplCopyWithImpl<
    _$OrderHistoryModelItemModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderHistoryModelItemModelImplToJson(this);
  }
}

abstract class _OrderHistoryModelItemModel
    implements OrderHistoryModelItemModel {
  const factory _OrderHistoryModelItemModel({
    final String? id,
    final String? status,
    final Car? car,
    final Branch? pickupBranch,
    final Branch? dropoffBranch,
    final String? pickupDate,
    final String? dropoffDate,
    final String? time,
    final int? finalPrice,
  }) = _$OrderHistoryModelItemModelImpl;

  factory _OrderHistoryModelItemModel.fromJson(Map<String, dynamic> json) =
      _$OrderHistoryModelItemModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get status;
  @override
  Car? get car;
  @override
  Branch? get pickupBranch;
  @override
  Branch? get dropoffBranch;
  @override
  String? get pickupDate;
  @override
  String? get dropoffDate;
  @override
  String? get time;
  @override
  int? get finalPrice;

  /// Create a copy of OrderHistoryModelItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderHistoryModelItemModelImplCopyWith<_$OrderHistoryModelItemModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this Car to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res, Car>;
  @useResult
  $Res call({String? id, String? name, String? desc, String? icon});
}

/// @nodoc
class _$CarCopyWithImpl<$Res, $Val extends Car> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? icon = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            desc:
                freezed == desc
                    ? _value.desc
                    : desc // ignore: cast_nullable_to_non_nullable
                        as String?,
            icon:
                freezed == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CarImplCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$CarImplCopyWith(_$CarImpl value, $Res Function(_$CarImpl) then) =
      __$$CarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? desc, String? icon});
}

/// @nodoc
class __$$CarImplCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res, _$CarImpl>
    implements _$$CarImplCopyWith<$Res> {
  __$$CarImplCopyWithImpl(_$CarImpl _value, $Res Function(_$CarImpl) _then)
    : super(_value, _then);

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? icon = freezed,
  }) {
    return _then(
      _$CarImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        desc:
            freezed == desc
                ? _value.desc
                : desc // ignore: cast_nullable_to_non_nullable
                    as String?,
        icon:
            freezed == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CarImpl implements _Car {
  const _$CarImpl({this.id, this.name, this.desc, this.icon});

  factory _$CarImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? desc;
  @override
  final String? icon;

  @override
  String toString() {
    return 'Car(id: $id, name: $name, desc: $desc, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, desc, icon);

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      __$$CarImplCopyWithImpl<_$CarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarImplToJson(this);
  }
}

abstract class _Car implements Car {
  const factory _Car({
    final String? id,
    final String? name,
    final String? desc,
    final String? icon,
  }) = _$CarImpl;

  factory _Car.fromJson(Map<String, dynamic> json) = _$CarImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get desc;
  @override
  String? get icon;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _PickupBranch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this Branch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PickupBranchImplCopyWith<$Res>
    implements $BranchCopyWith<$Res> {
  factory _$$PickupBranchImplCopyWith(
    _$PickupBranchImpl value,
    $Res Function(_$PickupBranchImpl) then,
  ) = __$$PickupBranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$PickupBranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$PickupBranchImpl>
    implements _$$PickupBranchImplCopyWith<$Res> {
  __$$PickupBranchImplCopyWithImpl(
    _$PickupBranchImpl _value,
    $Res Function(_$PickupBranchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _$PickupBranchImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PickupBranchImpl implements _PickupBranch {
  const _$PickupBranchImpl({this.id, this.name});

  factory _$PickupBranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$PickupBranchImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Branch(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickupBranchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickupBranchImplCopyWith<_$PickupBranchImpl> get copyWith =>
      __$$PickupBranchImplCopyWithImpl<_$PickupBranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PickupBranchImplToJson(this);
  }
}

abstract class _PickupBranch implements Branch {
  const factory _PickupBranch({final String? id, final String? name}) =
      _$PickupBranchImpl;

  factory _PickupBranch.fromJson(Map<String, dynamic> json) =
      _$PickupBranchImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickupBranchImplCopyWith<_$PickupBranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
