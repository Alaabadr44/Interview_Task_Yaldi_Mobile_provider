// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_details_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TripDetailsResModel _$TripDetailsResModelFromJson(Map<String, dynamic> json) {
  return _TripDetailsResModel.fromJson(json);
}

/// @nodoc
mixin _$TripDetailsResModel {
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get statusName => throw _privateConstructorUsedError;
  Car? get car => throw _privateConstructorUsedError;
  DatePackageModel? get datePackage => throw _privateConstructorUsedError;
  dynamic get voucherCode => throw _privateConstructorUsedError;
  Location? get pickupLocation => throw _privateConstructorUsedError;
  Location? get dropoffLocation => throw _privateConstructorUsedError;
  DateTime? get pickupDate => throw _privateConstructorUsedError;
  DateTime? get dropoffDate => throw _privateConstructorUsedError;
  String? get pickupTime => throw _privateConstructorUsedError;
  String? get dropoffTime => throw _privateConstructorUsedError;
  num? get carPrice => throw _privateConstructorUsedError;
  num? get deliveryPickup => throw _privateConstructorUsedError;
  num? get deliveryDropoff => throw _privateConstructorUsedError;
  num? get deliveryAmount => throw _privateConstructorUsedError;
  num? get vatPercent => throw _privateConstructorUsedError;
  num? get vatAmount => throw _privateConstructorUsedError;
  num? get discountPercent => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  num? get finalPrice => throw _privateConstructorUsedError;
  String? get paymentType => throw _privateConstructorUsedError;
  dynamic get cancelReason => throw _privateConstructorUsedError;
  List<ServiceModel>? get services => throw _privateConstructorUsedError;

  /// Serializes this TripDetailsResModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripDetailsResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripDetailsResModelCopyWith<TripDetailsResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDetailsResModelCopyWith<$Res> {
  factory $TripDetailsResModelCopyWith(
    TripDetailsResModel value,
    $Res Function(TripDetailsResModel) then,
  ) = _$TripDetailsResModelCopyWithImpl<$Res, TripDetailsResModel>;
  @useResult
  $Res call({
    String? id,
    String? status,
    String? statusName,
    Car? car,
    DatePackageModel? datePackage,
    dynamic voucherCode,
    Location? pickupLocation,
    Location? dropoffLocation,
    DateTime? pickupDate,
    DateTime? dropoffDate,
    String? pickupTime,
    String? dropoffTime,
    num? carPrice,
    num? deliveryPickup,
    num? deliveryDropoff,
    num? deliveryAmount,
    num? vatPercent,
    num? vatAmount,
    num? discountPercent,
    num? discount,
    num? finalPrice,
    String? paymentType,
    dynamic cancelReason,
    List<ServiceModel>? services,
  });

  $CarCopyWith<$Res>? get car;
  $DatePackageModelCopyWith<$Res>? get datePackage;
  $LocationCopyWith<$Res>? get pickupLocation;
  $LocationCopyWith<$Res>? get dropoffLocation;
}

/// @nodoc
class _$TripDetailsResModelCopyWithImpl<$Res, $Val extends TripDetailsResModel>
    implements $TripDetailsResModelCopyWith<$Res> {
  _$TripDetailsResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripDetailsResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? statusName = freezed,
    Object? car = freezed,
    Object? datePackage = freezed,
    Object? voucherCode = freezed,
    Object? pickupLocation = freezed,
    Object? dropoffLocation = freezed,
    Object? pickupDate = freezed,
    Object? dropoffDate = freezed,
    Object? pickupTime = freezed,
    Object? dropoffTime = freezed,
    Object? carPrice = freezed,
    Object? deliveryPickup = freezed,
    Object? deliveryDropoff = freezed,
    Object? deliveryAmount = freezed,
    Object? vatPercent = freezed,
    Object? vatAmount = freezed,
    Object? discountPercent = freezed,
    Object? discount = freezed,
    Object? finalPrice = freezed,
    Object? paymentType = freezed,
    Object? cancelReason = freezed,
    Object? services = freezed,
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
            statusName:
                freezed == statusName
                    ? _value.statusName
                    : statusName // ignore: cast_nullable_to_non_nullable
                        as String?,
            car:
                freezed == car
                    ? _value.car
                    : car // ignore: cast_nullable_to_non_nullable
                        as Car?,
            datePackage:
                freezed == datePackage
                    ? _value.datePackage
                    : datePackage // ignore: cast_nullable_to_non_nullable
                        as DatePackageModel?,
            voucherCode:
                freezed == voucherCode
                    ? _value.voucherCode
                    : voucherCode // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            pickupLocation:
                freezed == pickupLocation
                    ? _value.pickupLocation
                    : pickupLocation // ignore: cast_nullable_to_non_nullable
                        as Location?,
            dropoffLocation:
                freezed == dropoffLocation
                    ? _value.dropoffLocation
                    : dropoffLocation // ignore: cast_nullable_to_non_nullable
                        as Location?,
            pickupDate:
                freezed == pickupDate
                    ? _value.pickupDate
                    : pickupDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            dropoffDate:
                freezed == dropoffDate
                    ? _value.dropoffDate
                    : dropoffDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            pickupTime:
                freezed == pickupTime
                    ? _value.pickupTime
                    : pickupTime // ignore: cast_nullable_to_non_nullable
                        as String?,
            dropoffTime:
                freezed == dropoffTime
                    ? _value.dropoffTime
                    : dropoffTime // ignore: cast_nullable_to_non_nullable
                        as String?,
            carPrice:
                freezed == carPrice
                    ? _value.carPrice
                    : carPrice // ignore: cast_nullable_to_non_nullable
                        as num?,
            deliveryPickup:
                freezed == deliveryPickup
                    ? _value.deliveryPickup
                    : deliveryPickup // ignore: cast_nullable_to_non_nullable
                        as num?,
            deliveryDropoff:
                freezed == deliveryDropoff
                    ? _value.deliveryDropoff
                    : deliveryDropoff // ignore: cast_nullable_to_non_nullable
                        as num?,
            deliveryAmount:
                freezed == deliveryAmount
                    ? _value.deliveryAmount
                    : deliveryAmount // ignore: cast_nullable_to_non_nullable
                        as num?,
            vatPercent:
                freezed == vatPercent
                    ? _value.vatPercent
                    : vatPercent // ignore: cast_nullable_to_non_nullable
                        as num?,
            vatAmount:
                freezed == vatAmount
                    ? _value.vatAmount
                    : vatAmount // ignore: cast_nullable_to_non_nullable
                        as num?,
            discountPercent:
                freezed == discountPercent
                    ? _value.discountPercent
                    : discountPercent // ignore: cast_nullable_to_non_nullable
                        as num?,
            discount:
                freezed == discount
                    ? _value.discount
                    : discount // ignore: cast_nullable_to_non_nullable
                        as num?,
            finalPrice:
                freezed == finalPrice
                    ? _value.finalPrice
                    : finalPrice // ignore: cast_nullable_to_non_nullable
                        as num?,
            paymentType:
                freezed == paymentType
                    ? _value.paymentType
                    : paymentType // ignore: cast_nullable_to_non_nullable
                        as String?,
            cancelReason:
                freezed == cancelReason
                    ? _value.cancelReason
                    : cancelReason // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            services:
                freezed == services
                    ? _value.services
                    : services // ignore: cast_nullable_to_non_nullable
                        as List<ServiceModel>?,
          )
          as $Val,
    );
  }

  /// Create a copy of TripDetailsResModel
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

  /// Create a copy of TripDetailsResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DatePackageModelCopyWith<$Res>? get datePackage {
    if (_value.datePackage == null) {
      return null;
    }

    return $DatePackageModelCopyWith<$Res>(_value.datePackage!, (value) {
      return _then(_value.copyWith(datePackage: value) as $Val);
    });
  }

  /// Create a copy of TripDetailsResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get pickupLocation {
    if (_value.pickupLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.pickupLocation!, (value) {
      return _then(_value.copyWith(pickupLocation: value) as $Val);
    });
  }

  /// Create a copy of TripDetailsResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get dropoffLocation {
    if (_value.dropoffLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.dropoffLocation!, (value) {
      return _then(_value.copyWith(dropoffLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripDetailsResModelImplCopyWith<$Res>
    implements $TripDetailsResModelCopyWith<$Res> {
  factory _$$TripDetailsResModelImplCopyWith(
    _$TripDetailsResModelImpl value,
    $Res Function(_$TripDetailsResModelImpl) then,
  ) = __$$TripDetailsResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? status,
    String? statusName,
    Car? car,
    DatePackageModel? datePackage,
    dynamic voucherCode,
    Location? pickupLocation,
    Location? dropoffLocation,
    DateTime? pickupDate,
    DateTime? dropoffDate,
    String? pickupTime,
    String? dropoffTime,
    num? carPrice,
    num? deliveryPickup,
    num? deliveryDropoff,
    num? deliveryAmount,
    num? vatPercent,
    num? vatAmount,
    num? discountPercent,
    num? discount,
    num? finalPrice,
    String? paymentType,
    dynamic cancelReason,
    List<ServiceModel>? services,
  });

  @override
  $CarCopyWith<$Res>? get car;
  @override
  $DatePackageModelCopyWith<$Res>? get datePackage;
  @override
  $LocationCopyWith<$Res>? get pickupLocation;
  @override
  $LocationCopyWith<$Res>? get dropoffLocation;
}

/// @nodoc
class __$$TripDetailsResModelImplCopyWithImpl<$Res>
    extends _$TripDetailsResModelCopyWithImpl<$Res, _$TripDetailsResModelImpl>
    implements _$$TripDetailsResModelImplCopyWith<$Res> {
  __$$TripDetailsResModelImplCopyWithImpl(
    _$TripDetailsResModelImpl _value,
    $Res Function(_$TripDetailsResModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TripDetailsResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? statusName = freezed,
    Object? car = freezed,
    Object? datePackage = freezed,
    Object? voucherCode = freezed,
    Object? pickupLocation = freezed,
    Object? dropoffLocation = freezed,
    Object? pickupDate = freezed,
    Object? dropoffDate = freezed,
    Object? pickupTime = freezed,
    Object? dropoffTime = freezed,
    Object? carPrice = freezed,
    Object? deliveryPickup = freezed,
    Object? deliveryDropoff = freezed,
    Object? deliveryAmount = freezed,
    Object? vatPercent = freezed,
    Object? vatAmount = freezed,
    Object? discountPercent = freezed,
    Object? discount = freezed,
    Object? finalPrice = freezed,
    Object? paymentType = freezed,
    Object? cancelReason = freezed,
    Object? services = freezed,
  }) {
    return _then(
      _$TripDetailsResModelImpl(
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
        statusName:
            freezed == statusName
                ? _value.statusName
                : statusName // ignore: cast_nullable_to_non_nullable
                    as String?,
        car:
            freezed == car
                ? _value.car
                : car // ignore: cast_nullable_to_non_nullable
                    as Car?,
        datePackage:
            freezed == datePackage
                ? _value.datePackage
                : datePackage // ignore: cast_nullable_to_non_nullable
                    as DatePackageModel?,
        voucherCode:
            freezed == voucherCode
                ? _value.voucherCode
                : voucherCode // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        pickupLocation:
            freezed == pickupLocation
                ? _value.pickupLocation
                : pickupLocation // ignore: cast_nullable_to_non_nullable
                    as Location?,
        dropoffLocation:
            freezed == dropoffLocation
                ? _value.dropoffLocation
                : dropoffLocation // ignore: cast_nullable_to_non_nullable
                    as Location?,
        pickupDate:
            freezed == pickupDate
                ? _value.pickupDate
                : pickupDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        dropoffDate:
            freezed == dropoffDate
                ? _value.dropoffDate
                : dropoffDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        pickupTime:
            freezed == pickupTime
                ? _value.pickupTime
                : pickupTime // ignore: cast_nullable_to_non_nullable
                    as String?,
        dropoffTime:
            freezed == dropoffTime
                ? _value.dropoffTime
                : dropoffTime // ignore: cast_nullable_to_non_nullable
                    as String?,
        carPrice:
            freezed == carPrice
                ? _value.carPrice
                : carPrice // ignore: cast_nullable_to_non_nullable
                    as num?,
        deliveryPickup:
            freezed == deliveryPickup
                ? _value.deliveryPickup
                : deliveryPickup // ignore: cast_nullable_to_non_nullable
                    as num?,
        deliveryDropoff:
            freezed == deliveryDropoff
                ? _value.deliveryDropoff
                : deliveryDropoff // ignore: cast_nullable_to_non_nullable
                    as num?,
        deliveryAmount:
            freezed == deliveryAmount
                ? _value.deliveryAmount
                : deliveryAmount // ignore: cast_nullable_to_non_nullable
                    as num?,
        vatPercent:
            freezed == vatPercent
                ? _value.vatPercent
                : vatPercent // ignore: cast_nullable_to_non_nullable
                    as num?,
        vatAmount:
            freezed == vatAmount
                ? _value.vatAmount
                : vatAmount // ignore: cast_nullable_to_non_nullable
                    as num?,
        discountPercent:
            freezed == discountPercent
                ? _value.discountPercent
                : discountPercent // ignore: cast_nullable_to_non_nullable
                    as num?,
        discount:
            freezed == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                    as num?,
        finalPrice:
            freezed == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                    as num?,
        paymentType:
            freezed == paymentType
                ? _value.paymentType
                : paymentType // ignore: cast_nullable_to_non_nullable
                    as String?,
        cancelReason:
            freezed == cancelReason
                ? _value.cancelReason
                : cancelReason // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        services:
            freezed == services
                ? _value._services
                : services // ignore: cast_nullable_to_non_nullable
                    as List<ServiceModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TripDetailsResModelImpl extends _TripDetailsResModel {
  const _$TripDetailsResModelImpl({
    this.id,
    this.status,
    this.statusName,
    this.car,
    this.datePackage,
    this.voucherCode,
    this.pickupLocation,
    this.dropoffLocation,
    this.pickupDate,
    this.dropoffDate,
    this.pickupTime,
    this.dropoffTime,
    this.carPrice,
    this.deliveryPickup,
    this.deliveryDropoff,
    this.deliveryAmount,
    this.vatPercent,
    this.vatAmount,
    this.discountPercent,
    this.discount,
    this.finalPrice,
    this.paymentType,
    this.cancelReason,
    final List<ServiceModel>? services,
  }) : _services = services,
       super._();

  factory _$TripDetailsResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripDetailsResModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? status;
  @override
  final String? statusName;
  @override
  final Car? car;
  @override
  final DatePackageModel? datePackage;
  @override
  final dynamic voucherCode;
  @override
  final Location? pickupLocation;
  @override
  final Location? dropoffLocation;
  @override
  final DateTime? pickupDate;
  @override
  final DateTime? dropoffDate;
  @override
  final String? pickupTime;
  @override
  final String? dropoffTime;
  @override
  final num? carPrice;
  @override
  final num? deliveryPickup;
  @override
  final num? deliveryDropoff;
  @override
  final num? deliveryAmount;
  @override
  final num? vatPercent;
  @override
  final num? vatAmount;
  @override
  final num? discountPercent;
  @override
  final num? discount;
  @override
  final num? finalPrice;
  @override
  final String? paymentType;
  @override
  final dynamic cancelReason;
  final List<ServiceModel>? _services;
  @override
  List<ServiceModel>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TripDetailsResModel(id: $id, status: $status, statusName: $statusName, car: $car, datePackage: $datePackage, voucherCode: $voucherCode, pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, pickupDate: $pickupDate, dropoffDate: $dropoffDate, pickupTime: $pickupTime, dropoffTime: $dropoffTime, carPrice: $carPrice, deliveryPickup: $deliveryPickup, deliveryDropoff: $deliveryDropoff, deliveryAmount: $deliveryAmount, vatPercent: $vatPercent, vatAmount: $vatAmount, discountPercent: $discountPercent, discount: $discount, finalPrice: $finalPrice, paymentType: $paymentType, cancelReason: $cancelReason, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripDetailsResModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.datePackage, datePackage) ||
                other.datePackage == datePackage) &&
            const DeepCollectionEquality().equals(
              other.voucherCode,
              voucherCode,
            ) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropoffLocation, dropoffLocation) ||
                other.dropoffLocation == dropoffLocation) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.dropoffDate, dropoffDate) ||
                other.dropoffDate == dropoffDate) &&
            (identical(other.pickupTime, pickupTime) ||
                other.pickupTime == pickupTime) &&
            (identical(other.dropoffTime, dropoffTime) ||
                other.dropoffTime == dropoffTime) &&
            (identical(other.carPrice, carPrice) ||
                other.carPrice == carPrice) &&
            (identical(other.deliveryPickup, deliveryPickup) ||
                other.deliveryPickup == deliveryPickup) &&
            (identical(other.deliveryDropoff, deliveryDropoff) ||
                other.deliveryDropoff == deliveryDropoff) &&
            (identical(other.deliveryAmount, deliveryAmount) ||
                other.deliveryAmount == deliveryAmount) &&
            (identical(other.vatPercent, vatPercent) ||
                other.vatPercent == vatPercent) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            const DeepCollectionEquality().equals(
              other.cancelReason,
              cancelReason,
            ) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    status,
    statusName,
    car,
    datePackage,
    const DeepCollectionEquality().hash(voucherCode),
    pickupLocation,
    dropoffLocation,
    pickupDate,
    dropoffDate,
    pickupTime,
    dropoffTime,
    carPrice,
    deliveryPickup,
    deliveryDropoff,
    deliveryAmount,
    vatPercent,
    vatAmount,
    discountPercent,
    discount,
    finalPrice,
    paymentType,
    const DeepCollectionEquality().hash(cancelReason),
    const DeepCollectionEquality().hash(_services),
  ]);

  /// Create a copy of TripDetailsResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDetailsResModelImplCopyWith<_$TripDetailsResModelImpl> get copyWith =>
      __$$TripDetailsResModelImplCopyWithImpl<_$TripDetailsResModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TripDetailsResModelImplToJson(this);
  }
}

abstract class _TripDetailsResModel extends TripDetailsResModel {
  const factory _TripDetailsResModel({
    final String? id,
    final String? status,
    final String? statusName,
    final Car? car,
    final DatePackageModel? datePackage,
    final dynamic voucherCode,
    final Location? pickupLocation,
    final Location? dropoffLocation,
    final DateTime? pickupDate,
    final DateTime? dropoffDate,
    final String? pickupTime,
    final String? dropoffTime,
    final num? carPrice,
    final num? deliveryPickup,
    final num? deliveryDropoff,
    final num? deliveryAmount,
    final num? vatPercent,
    final num? vatAmount,
    final num? discountPercent,
    final num? discount,
    final num? finalPrice,
    final String? paymentType,
    final dynamic cancelReason,
    final List<ServiceModel>? services,
  }) = _$TripDetailsResModelImpl;
  const _TripDetailsResModel._() : super._();

  factory _TripDetailsResModel.fromJson(Map<String, dynamic> json) =
      _$TripDetailsResModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get status;
  @override
  String? get statusName;
  @override
  Car? get car;
  @override
  DatePackageModel? get datePackage;
  @override
  dynamic get voucherCode;
  @override
  Location? get pickupLocation;
  @override
  Location? get dropoffLocation;
  @override
  DateTime? get pickupDate;
  @override
  DateTime? get dropoffDate;
  @override
  String? get pickupTime;
  @override
  String? get dropoffTime;
  @override
  num? get carPrice;
  @override
  num? get deliveryPickup;
  @override
  num? get deliveryDropoff;
  @override
  num? get deliveryAmount;
  @override
  num? get vatPercent;
  @override
  num? get vatAmount;
  @override
  num? get discountPercent;
  @override
  num? get discount;
  @override
  num? get finalPrice;
  @override
  String? get paymentType;
  @override
  dynamic get cancelReason;
  @override
  List<ServiceModel>? get services;

  /// Create a copy of TripDetailsResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripDetailsResModelImplCopyWith<_$TripDetailsResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;
  String? get formattedAddress => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String? lat, String? lng, String? formattedAddress});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? formattedAddress = freezed,
  }) {
    return _then(
      _value.copyWith(
            lat:
                freezed == lat
                    ? _value.lat
                    : lat // ignore: cast_nullable_to_non_nullable
                        as String?,
            lng:
                freezed == lng
                    ? _value.lng
                    : lng // ignore: cast_nullable_to_non_nullable
                        as String?,
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
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
    _$LocationImpl value,
    $Res Function(_$LocationImpl) then,
  ) = __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? lat, String? lng, String? formattedAddress});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
    _$LocationImpl _value,
    $Res Function(_$LocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? formattedAddress = freezed,
  }) {
    return _then(
      _$LocationImpl(
        lat:
            freezed == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                    as String?,
        lng:
            freezed == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                    as String?,
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
class _$LocationImpl extends _Location {
  const _$LocationImpl({this.lat, this.lng, this.formattedAddress}) : super._();

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String? lat;
  @override
  final String? lng;
  @override
  final String? formattedAddress;

  @override
  String toString() {
    return 'Location(lat: $lat, lng: $lng, formattedAddress: $formattedAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, formattedAddress);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(this);
  }
}

abstract class _Location extends Location {
  const factory _Location({
    final String? lat,
    final String? lng,
    final String? formattedAddress,
  }) = _$LocationImpl;
  const _Location._() : super._();

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String? get lat;
  @override
  String? get lng;
  @override
  String? get formattedAddress;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  dynamic get icon => throw _privateConstructorUsedError;

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
  $Res call({String? id, String? name, String? desc, dynamic icon});
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
                        as dynamic,
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
  $Res call({String? id, String? name, String? desc, dynamic icon});
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
                    as dynamic,
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
  final dynamic icon;

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
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    desc,
    const DeepCollectionEquality().hash(icon),
  );

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
    final dynamic icon,
  }) = _$CarImpl;

  factory _Car.fromJson(Map<String, dynamic> json) = _$CarImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get desc;
  @override
  dynamic get icon;

  /// Create a copy of Car
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarImplCopyWith<_$CarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
