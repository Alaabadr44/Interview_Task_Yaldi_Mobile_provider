// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderOfferModel _$OrderOfferModelFromJson(Map<String, dynamic> json) {
  return _OrderOfferModel.fromJson(json);
}

/// @nodoc
mixin _$OrderOfferModel {
  String get id => throw _privateConstructorUsedError;
  num get carPrice => throw _privateConstructorUsedError;
  num get deliveryAmount => throw _privateConstructorUsedError;
  num get vatPercent => throw _privateConstructorUsedError;
  num get vatAmount => throw _privateConstructorUsedError;
  num get discount => throw _privateConstructorUsedError;
  num get finalPrice => throw _privateConstructorUsedError;

  /// Serializes this OrderOfferModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderOfferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderOfferModelCopyWith<OrderOfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderOfferModelCopyWith<$Res> {
  factory $OrderOfferModelCopyWith(
    OrderOfferModel value,
    $Res Function(OrderOfferModel) then,
  ) = _$OrderOfferModelCopyWithImpl<$Res, OrderOfferModel>;
  @useResult
  $Res call({
    String id,
    num carPrice,
    num deliveryAmount,
    num vatPercent,
    num vatAmount,
    num discount,
    num finalPrice,
  });
}

/// @nodoc
class _$OrderOfferModelCopyWithImpl<$Res, $Val extends OrderOfferModel>
    implements $OrderOfferModelCopyWith<$Res> {
  _$OrderOfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderOfferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carPrice = null,
    Object? deliveryAmount = null,
    Object? vatPercent = null,
    Object? vatAmount = null,
    Object? discount = null,
    Object? finalPrice = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            carPrice:
                null == carPrice
                    ? _value.carPrice
                    : carPrice // ignore: cast_nullable_to_non_nullable
                        as num,
            deliveryAmount:
                null == deliveryAmount
                    ? _value.deliveryAmount
                    : deliveryAmount // ignore: cast_nullable_to_non_nullable
                        as num,
            vatPercent:
                null == vatPercent
                    ? _value.vatPercent
                    : vatPercent // ignore: cast_nullable_to_non_nullable
                        as num,
            vatAmount:
                null == vatAmount
                    ? _value.vatAmount
                    : vatAmount // ignore: cast_nullable_to_non_nullable
                        as num,
            discount:
                null == discount
                    ? _value.discount
                    : discount // ignore: cast_nullable_to_non_nullable
                        as num,
            finalPrice:
                null == finalPrice
                    ? _value.finalPrice
                    : finalPrice // ignore: cast_nullable_to_non_nullable
                        as num,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderOfferModelImplCopyWith<$Res>
    implements $OrderOfferModelCopyWith<$Res> {
  factory _$$OrderOfferModelImplCopyWith(
    _$OrderOfferModelImpl value,
    $Res Function(_$OrderOfferModelImpl) then,
  ) = __$$OrderOfferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    num carPrice,
    num deliveryAmount,
    num vatPercent,
    num vatAmount,
    num discount,
    num finalPrice,
  });
}

/// @nodoc
class __$$OrderOfferModelImplCopyWithImpl<$Res>
    extends _$OrderOfferModelCopyWithImpl<$Res, _$OrderOfferModelImpl>
    implements _$$OrderOfferModelImplCopyWith<$Res> {
  __$$OrderOfferModelImplCopyWithImpl(
    _$OrderOfferModelImpl _value,
    $Res Function(_$OrderOfferModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderOfferModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carPrice = null,
    Object? deliveryAmount = null,
    Object? vatPercent = null,
    Object? vatAmount = null,
    Object? discount = null,
    Object? finalPrice = null,
  }) {
    return _then(
      _$OrderOfferModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        carPrice:
            null == carPrice
                ? _value.carPrice
                : carPrice // ignore: cast_nullable_to_non_nullable
                    as num,
        deliveryAmount:
            null == deliveryAmount
                ? _value.deliveryAmount
                : deliveryAmount // ignore: cast_nullable_to_non_nullable
                    as num,
        vatPercent:
            null == vatPercent
                ? _value.vatPercent
                : vatPercent // ignore: cast_nullable_to_non_nullable
                    as num,
        vatAmount:
            null == vatAmount
                ? _value.vatAmount
                : vatAmount // ignore: cast_nullable_to_non_nullable
                    as num,
        discount:
            null == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                    as num,
        finalPrice:
            null == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                    as num,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderOfferModelImpl implements _OrderOfferModel {
  const _$OrderOfferModelImpl({
    required this.id,
    required this.carPrice,
    required this.deliveryAmount,
    required this.vatPercent,
    required this.vatAmount,
    required this.discount,
    required this.finalPrice,
  });

  factory _$OrderOfferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderOfferModelImplFromJson(json);

  @override
  final String id;
  @override
  final num carPrice;
  @override
  final num deliveryAmount;
  @override
  final num vatPercent;
  @override
  final num vatAmount;
  @override
  final num discount;
  @override
  final num finalPrice;

  @override
  String toString() {
    return 'OrderOfferModel(id: $id, carPrice: $carPrice, deliveryAmount: $deliveryAmount, vatPercent: $vatPercent, vatAmount: $vatAmount, discount: $discount, finalPrice: $finalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderOfferModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carPrice, carPrice) ||
                other.carPrice == carPrice) &&
            (identical(other.deliveryAmount, deliveryAmount) ||
                other.deliveryAmount == deliveryAmount) &&
            (identical(other.vatPercent, vatPercent) ||
                other.vatPercent == vatPercent) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    carPrice,
    deliveryAmount,
    vatPercent,
    vatAmount,
    discount,
    finalPrice,
  );

  /// Create a copy of OrderOfferModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderOfferModelImplCopyWith<_$OrderOfferModelImpl> get copyWith =>
      __$$OrderOfferModelImplCopyWithImpl<_$OrderOfferModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderOfferModelImplToJson(this);
  }
}

abstract class _OrderOfferModel implements OrderOfferModel {
  const factory _OrderOfferModel({
    required final String id,
    required final num carPrice,
    required final num deliveryAmount,
    required final num vatPercent,
    required final num vatAmount,
    required final num discount,
    required final num finalPrice,
  }) = _$OrderOfferModelImpl;

  factory _OrderOfferModel.fromJson(Map<String, dynamic> json) =
      _$OrderOfferModelImpl.fromJson;

  @override
  String get id;
  @override
  num get carPrice;
  @override
  num get deliveryAmount;
  @override
  num get vatPercent;
  @override
  num get vatAmount;
  @override
  num get discount;
  @override
  num get finalPrice;

  /// Create a copy of OrderOfferModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderOfferModelImplCopyWith<_$OrderOfferModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
