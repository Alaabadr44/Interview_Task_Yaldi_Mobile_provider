// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RewardsModel _$RewardsModelFromJson(Map<String, dynamic> json) {
  return _RewardsModel.fromJson(json);
}

/// @nodoc
mixin _$RewardsModel {
  List<Voucher>? get vouchers => throw _privateConstructorUsedError;
  List<Loyalty>? get loyalties => throw _privateConstructorUsedError;

  /// Serializes this RewardsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardsModelCopyWith<RewardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsModelCopyWith<$Res> {
  factory $RewardsModelCopyWith(
    RewardsModel value,
    $Res Function(RewardsModel) then,
  ) = _$RewardsModelCopyWithImpl<$Res, RewardsModel>;
  @useResult
  $Res call({List<Voucher>? vouchers, List<Loyalty>? loyalties});
}

/// @nodoc
class _$RewardsModelCopyWithImpl<$Res, $Val extends RewardsModel>
    implements $RewardsModelCopyWith<$Res> {
  _$RewardsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? vouchers = freezed, Object? loyalties = freezed}) {
    return _then(
      _value.copyWith(
            vouchers:
                freezed == vouchers
                    ? _value.vouchers
                    : vouchers // ignore: cast_nullable_to_non_nullable
                        as List<Voucher>?,
            loyalties:
                freezed == loyalties
                    ? _value.loyalties
                    : loyalties // ignore: cast_nullable_to_non_nullable
                        as List<Loyalty>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RewardsModelImplCopyWith<$Res>
    implements $RewardsModelCopyWith<$Res> {
  factory _$$RewardsModelImplCopyWith(
    _$RewardsModelImpl value,
    $Res Function(_$RewardsModelImpl) then,
  ) = __$$RewardsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Voucher>? vouchers, List<Loyalty>? loyalties});
}

/// @nodoc
class __$$RewardsModelImplCopyWithImpl<$Res>
    extends _$RewardsModelCopyWithImpl<$Res, _$RewardsModelImpl>
    implements _$$RewardsModelImplCopyWith<$Res> {
  __$$RewardsModelImplCopyWithImpl(
    _$RewardsModelImpl _value,
    $Res Function(_$RewardsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? vouchers = freezed, Object? loyalties = freezed}) {
    return _then(
      _$RewardsModelImpl(
        vouchers:
            freezed == vouchers
                ? _value._vouchers
                : vouchers // ignore: cast_nullable_to_non_nullable
                    as List<Voucher>?,
        loyalties:
            freezed == loyalties
                ? _value._loyalties
                : loyalties // ignore: cast_nullable_to_non_nullable
                    as List<Loyalty>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardsModelImpl implements _RewardsModel {
  const _$RewardsModelImpl({
    final List<Voucher>? vouchers,
    final List<Loyalty>? loyalties,
  }) : _vouchers = vouchers,
       _loyalties = loyalties;

  factory _$RewardsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardsModelImplFromJson(json);

  final List<Voucher>? _vouchers;
  @override
  List<Voucher>? get vouchers {
    final value = _vouchers;
    if (value == null) return null;
    if (_vouchers is EqualUnmodifiableListView) return _vouchers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Loyalty>? _loyalties;
  @override
  List<Loyalty>? get loyalties {
    final value = _loyalties;
    if (value == null) return null;
    if (_loyalties is EqualUnmodifiableListView) return _loyalties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RewardsModel(vouchers: $vouchers, loyalties: $loyalties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardsModelImpl &&
            const DeepCollectionEquality().equals(other._vouchers, _vouchers) &&
            const DeepCollectionEquality().equals(
              other._loyalties,
              _loyalties,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_vouchers),
    const DeepCollectionEquality().hash(_loyalties),
  );

  /// Create a copy of RewardsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardsModelImplCopyWith<_$RewardsModelImpl> get copyWith =>
      __$$RewardsModelImplCopyWithImpl<_$RewardsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardsModelImplToJson(this);
  }
}

abstract class _RewardsModel implements RewardsModel {
  const factory _RewardsModel({
    final List<Voucher>? vouchers,
    final List<Loyalty>? loyalties,
  }) = _$RewardsModelImpl;

  factory _RewardsModel.fromJson(Map<String, dynamic> json) =
      _$RewardsModelImpl.fromJson;

  @override
  List<Voucher>? get vouchers;
  @override
  List<Loyalty>? get loyalties;

  /// Create a copy of RewardsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardsModelImplCopyWith<_$RewardsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Voucher _$VoucherFromJson(Map<String, dynamic> json) {
  return _Voucher.fromJson(json);
}

/// @nodoc
mixin _$Voucher {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this Voucher to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Voucher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoucherCopyWith<Voucher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherCopyWith<$Res> {
  factory $VoucherCopyWith(Voucher value, $Res Function(Voucher) then) =
      _$VoucherCopyWithImpl<$Res, Voucher>;
  @useResult
  $Res call({
    String id,
    String title,
    String image,
    String code,
    int discount,
    bool isActive,
  });
}

/// @nodoc
class _$VoucherCopyWithImpl<$Res, $Val extends Voucher>
    implements $VoucherCopyWith<$Res> {
  _$VoucherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Voucher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? code = null,
    Object? discount = null,
    Object? isActive = null,
  }) {
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
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            discount:
                null == discount
                    ? _value.discount
                    : discount // ignore: cast_nullable_to_non_nullable
                        as int,
            isActive:
                null == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VoucherImplCopyWith<$Res> implements $VoucherCopyWith<$Res> {
  factory _$$VoucherImplCopyWith(
    _$VoucherImpl value,
    $Res Function(_$VoucherImpl) then,
  ) = __$$VoucherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String image,
    String code,
    int discount,
    bool isActive,
  });
}

/// @nodoc
class __$$VoucherImplCopyWithImpl<$Res>
    extends _$VoucherCopyWithImpl<$Res, _$VoucherImpl>
    implements _$$VoucherImplCopyWith<$Res> {
  __$$VoucherImplCopyWithImpl(
    _$VoucherImpl _value,
    $Res Function(_$VoucherImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Voucher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? code = null,
    Object? discount = null,
    Object? isActive = null,
  }) {
    return _then(
      _$VoucherImpl(
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
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        discount:
            null == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                    as int,
        isActive:
            null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VoucherImpl implements _Voucher {
  const _$VoucherImpl({
    required this.id,
    required this.title,
    required this.image,
    required this.code,
    required this.discount,
    required this.isActive,
  });

  factory _$VoucherImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoucherImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String code;
  @override
  final int discount;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'Voucher(id: $id, title: $title, image: $image, code: $code, discount: $discount, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, code, discount, isActive);

  /// Create a copy of Voucher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherImplCopyWith<_$VoucherImpl> get copyWith =>
      __$$VoucherImplCopyWithImpl<_$VoucherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoucherImplToJson(this);
  }
}

abstract class _Voucher implements Voucher {
  const factory _Voucher({
    required final String id,
    required final String title,
    required final String image,
    required final String code,
    required final int discount,
    required final bool isActive,
  }) = _$VoucherImpl;

  factory _Voucher.fromJson(Map<String, dynamic> json) = _$VoucherImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get code;
  @override
  int get discount;
  @override
  bool get isActive;

  /// Create a copy of Voucher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoucherImplCopyWith<_$VoucherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Loyalty _$LoyaltyFromJson(Map<String, dynamic> json) {
  return _Loyalty.fromJson(json);
}

/// @nodoc
mixin _$Loyalty {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get des => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get freeMaintenance => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<Service> get services => throw _privateConstructorUsedError;

  /// Serializes this Loyalty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Loyalty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoyaltyCopyWith<Loyalty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyCopyWith<$Res> {
  factory $LoyaltyCopyWith(Loyalty value, $Res Function(Loyalty) then) =
      _$LoyaltyCopyWithImpl<$Res, Loyalty>;
  @useResult
  $Res call({
    String id,
    String title,
    String price,
    String des,
    String image,
    int freeMaintenance,
    bool isActive,
    List<Service> services,
  });
}

/// @nodoc
class _$LoyaltyCopyWithImpl<$Res, $Val extends Loyalty>
    implements $LoyaltyCopyWith<$Res> {
  _$LoyaltyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Loyalty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? des = null,
    Object? image = null,
    Object? freeMaintenance = null,
    Object? isActive = null,
    Object? services = null,
  }) {
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
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as String,
            des:
                null == des
                    ? _value.des
                    : des // ignore: cast_nullable_to_non_nullable
                        as String,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            freeMaintenance:
                null == freeMaintenance
                    ? _value.freeMaintenance
                    : freeMaintenance // ignore: cast_nullable_to_non_nullable
                        as int,
            isActive:
                null == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as bool,
            services:
                null == services
                    ? _value.services
                    : services // ignore: cast_nullable_to_non_nullable
                        as List<Service>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoyaltyImplCopyWith<$Res> implements $LoyaltyCopyWith<$Res> {
  factory _$$LoyaltyImplCopyWith(
    _$LoyaltyImpl value,
    $Res Function(_$LoyaltyImpl) then,
  ) = __$$LoyaltyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String price,
    String des,
    String image,
    int freeMaintenance,
    bool isActive,
    List<Service> services,
  });
}

/// @nodoc
class __$$LoyaltyImplCopyWithImpl<$Res>
    extends _$LoyaltyCopyWithImpl<$Res, _$LoyaltyImpl>
    implements _$$LoyaltyImplCopyWith<$Res> {
  __$$LoyaltyImplCopyWithImpl(
    _$LoyaltyImpl _value,
    $Res Function(_$LoyaltyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Loyalty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? des = null,
    Object? image = null,
    Object? freeMaintenance = null,
    Object? isActive = null,
    Object? services = null,
  }) {
    return _then(
      _$LoyaltyImpl(
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
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as String,
        des:
            null == des
                ? _value.des
                : des // ignore: cast_nullable_to_non_nullable
                    as String,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        freeMaintenance:
            null == freeMaintenance
                ? _value.freeMaintenance
                : freeMaintenance // ignore: cast_nullable_to_non_nullable
                    as int,
        isActive:
            null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as bool,
        services:
            null == services
                ? _value._services
                : services // ignore: cast_nullable_to_non_nullable
                    as List<Service>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoyaltyImpl implements _Loyalty {
  const _$LoyaltyImpl({
    required this.id,
    required this.title,
    required this.price,
    required this.des,
    required this.image,
    required this.freeMaintenance,
    required this.isActive,
    required final List<Service> services,
  }) : _services = services;

  factory _$LoyaltyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoyaltyImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String price;
  @override
  final String des;
  @override
  final String image;
  @override
  final int freeMaintenance;
  @override
  final bool isActive;
  final List<Service> _services;
  @override
  List<Service> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'Loyalty(id: $id, title: $title, price: $price, des: $des, image: $image, freeMaintenance: $freeMaintenance, isActive: $isActive, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoyaltyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.des, des) || other.des == des) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.freeMaintenance, freeMaintenance) ||
                other.freeMaintenance == freeMaintenance) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    price,
    des,
    image,
    freeMaintenance,
    isActive,
    const DeepCollectionEquality().hash(_services),
  );

  /// Create a copy of Loyalty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoyaltyImplCopyWith<_$LoyaltyImpl> get copyWith =>
      __$$LoyaltyImplCopyWithImpl<_$LoyaltyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoyaltyImplToJson(this);
  }
}

abstract class _Loyalty implements Loyalty {
  const factory _Loyalty({
    required final String id,
    required final String title,
    required final String price,
    required final String des,
    required final String image,
    required final int freeMaintenance,
    required final bool isActive,
    required final List<Service> services,
  }) = _$LoyaltyImpl;

  factory _Loyalty.fromJson(Map<String, dynamic> json) = _$LoyaltyImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get price;
  @override
  String get des;
  @override
  String get image;
  @override
  int get freeMaintenance;
  @override
  bool get isActive;
  @override
  List<Service> get services;

  /// Create a copy of Loyalty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoyaltyImplCopyWith<_$LoyaltyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
    _$ServiceImpl value,
    $Res Function(_$ServiceImpl) then,
  ) = __$$ServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$ServiceImpl>
    implements _$$ServiceImplCopyWith<$Res> {
  __$$ServiceImplCopyWithImpl(
    _$ServiceImpl _value,
    $Res Function(_$ServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$ServiceImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceImpl implements _Service {
  const _$ServiceImpl({required this.id, required this.name});

  factory _$ServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Service(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      __$$ServiceImplCopyWithImpl<_$ServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceImplToJson(this);
  }
}

abstract class _Service implements Service {
  const factory _Service({
    required final String id,
    required final String name,
  }) = _$ServiceImpl;

  factory _Service.fromJson(Map<String, dynamic> json) = _$ServiceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
