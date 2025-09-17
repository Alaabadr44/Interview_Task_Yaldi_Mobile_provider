// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CarItemModel _$CarItemModelFromJson(Map<String, dynamic> json) {
  return _CarItemModel.fromJson(json);
}

/// @nodoc
mixin _$CarItemModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get need => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get doorCount => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int? get paletteNumber => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;
  List<Feature>? get features => throw _privateConstructorUsedError;
  Insurance? get deliveryTime => throw _privateConstructorUsedError;
  Insurance? get carGuarantee => throw _privateConstructorUsedError;
  Insurance? get deductibleInsurance => throw _privateConstructorUsedError;

  /// Serializes this CarItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarItemModelCopyWith<CarItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarItemModelCopyWith<$Res> {
  factory $CarItemModelCopyWith(
    CarItemModel value,
    $Res Function(CarItemModel) then,
  ) = _$CarItemModelCopyWithImpl<$Res, CarItemModel>;
  @useResult
  $Res call({
    String? id,
    String? name,
    String? desc,
    String? image,
    String? size,
    String? need,
    int? price,
    int? doorCount,
    String? color,
    int? paletteNumber,
    bool? isFavorite,
    List<Feature>? features,
    Insurance? deliveryTime,
    Insurance? carGuarantee,
    Insurance? deductibleInsurance,
  });

  $InsuranceCopyWith<$Res>? get deliveryTime;
  $InsuranceCopyWith<$Res>? get carGuarantee;
  $InsuranceCopyWith<$Res>? get deductibleInsurance;
}

/// @nodoc
class _$CarItemModelCopyWithImpl<$Res, $Val extends CarItemModel>
    implements $CarItemModelCopyWith<$Res> {
  _$CarItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? image = freezed,
    Object? size = freezed,
    Object? need = freezed,
    Object? price = freezed,
    Object? doorCount = freezed,
    Object? color = freezed,
    Object? paletteNumber = freezed,
    Object? isFavorite = freezed,
    Object? features = freezed,
    Object? deliveryTime = freezed,
    Object? carGuarantee = freezed,
    Object? deductibleInsurance = freezed,
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
            image:
                freezed == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String?,
            size:
                freezed == size
                    ? _value.size
                    : size // ignore: cast_nullable_to_non_nullable
                        as String?,
            need:
                freezed == need
                    ? _value.need
                    : need // ignore: cast_nullable_to_non_nullable
                        as String?,
            price:
                freezed == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as int?,
            doorCount:
                freezed == doorCount
                    ? _value.doorCount
                    : doorCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            color:
                freezed == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as String?,
            paletteNumber:
                freezed == paletteNumber
                    ? _value.paletteNumber
                    : paletteNumber // ignore: cast_nullable_to_non_nullable
                        as int?,
            isFavorite:
                freezed == isFavorite
                    ? _value.isFavorite
                    : isFavorite // ignore: cast_nullable_to_non_nullable
                        as bool?,
            features:
                freezed == features
                    ? _value.features
                    : features // ignore: cast_nullable_to_non_nullable
                        as List<Feature>?,
            deliveryTime:
                freezed == deliveryTime
                    ? _value.deliveryTime
                    : deliveryTime // ignore: cast_nullable_to_non_nullable
                        as Insurance?,
            carGuarantee:
                freezed == carGuarantee
                    ? _value.carGuarantee
                    : carGuarantee // ignore: cast_nullable_to_non_nullable
                        as Insurance?,
            deductibleInsurance:
                freezed == deductibleInsurance
                    ? _value.deductibleInsurance
                    : deductibleInsurance // ignore: cast_nullable_to_non_nullable
                        as Insurance?,
          )
          as $Val,
    );
  }

  /// Create a copy of CarItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InsuranceCopyWith<$Res>? get deliveryTime {
    if (_value.deliveryTime == null) {
      return null;
    }

    return $InsuranceCopyWith<$Res>(_value.deliveryTime!, (value) {
      return _then(_value.copyWith(deliveryTime: value) as $Val);
    });
  }

  /// Create a copy of CarItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InsuranceCopyWith<$Res>? get carGuarantee {
    if (_value.carGuarantee == null) {
      return null;
    }

    return $InsuranceCopyWith<$Res>(_value.carGuarantee!, (value) {
      return _then(_value.copyWith(carGuarantee: value) as $Val);
    });
  }

  /// Create a copy of CarItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InsuranceCopyWith<$Res>? get deductibleInsurance {
    if (_value.deductibleInsurance == null) {
      return null;
    }

    return $InsuranceCopyWith<$Res>(_value.deductibleInsurance!, (value) {
      return _then(_value.copyWith(deductibleInsurance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarItemModelImplCopyWith<$Res>
    implements $CarItemModelCopyWith<$Res> {
  factory _$$CarItemModelImplCopyWith(
    _$CarItemModelImpl value,
    $Res Function(_$CarItemModelImpl) then,
  ) = __$$CarItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? name,
    String? desc,
    String? image,
    String? size,
    String? need,
    int? price,
    int? doorCount,
    String? color,
    int? paletteNumber,
    bool? isFavorite,
    List<Feature>? features,
    Insurance? deliveryTime,
    Insurance? carGuarantee,
    Insurance? deductibleInsurance,
  });

  @override
  $InsuranceCopyWith<$Res>? get deliveryTime;
  @override
  $InsuranceCopyWith<$Res>? get carGuarantee;
  @override
  $InsuranceCopyWith<$Res>? get deductibleInsurance;
}

/// @nodoc
class __$$CarItemModelImplCopyWithImpl<$Res>
    extends _$CarItemModelCopyWithImpl<$Res, _$CarItemModelImpl>
    implements _$$CarItemModelImplCopyWith<$Res> {
  __$$CarItemModelImplCopyWithImpl(
    _$CarItemModelImpl _value,
    $Res Function(_$CarItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CarItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? image = freezed,
    Object? size = freezed,
    Object? need = freezed,
    Object? price = freezed,
    Object? doorCount = freezed,
    Object? color = freezed,
    Object? paletteNumber = freezed,
    Object? isFavorite = freezed,
    Object? features = freezed,
    Object? deliveryTime = freezed,
    Object? carGuarantee = freezed,
    Object? deductibleInsurance = freezed,
  }) {
    return _then(
      _$CarItemModelImpl(
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
        image:
            freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String?,
        size:
            freezed == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                    as String?,
        need:
            freezed == need
                ? _value.need
                : need // ignore: cast_nullable_to_non_nullable
                    as String?,
        price:
            freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as int?,
        doorCount:
            freezed == doorCount
                ? _value.doorCount
                : doorCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        color:
            freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as String?,
        paletteNumber:
            freezed == paletteNumber
                ? _value.paletteNumber
                : paletteNumber // ignore: cast_nullable_to_non_nullable
                    as int?,
        isFavorite:
            freezed == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                    as bool?,
        features:
            freezed == features
                ? _value._features
                : features // ignore: cast_nullable_to_non_nullable
                    as List<Feature>?,
        deliveryTime:
            freezed == deliveryTime
                ? _value.deliveryTime
                : deliveryTime // ignore: cast_nullable_to_non_nullable
                    as Insurance?,
        carGuarantee:
            freezed == carGuarantee
                ? _value.carGuarantee
                : carGuarantee // ignore: cast_nullable_to_non_nullable
                    as Insurance?,
        deductibleInsurance:
            freezed == deductibleInsurance
                ? _value.deductibleInsurance
                : deductibleInsurance // ignore: cast_nullable_to_non_nullable
                    as Insurance?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CarItemModelImpl implements _CarItemModel {
  const _$CarItemModelImpl({
    this.id,
    this.name,
    this.desc,
    this.image,
    this.size,
    this.need,
    this.price,
    this.doorCount,
    this.color,
    this.paletteNumber,
    this.isFavorite,
    final List<Feature>? features,
    this.deliveryTime,
    this.carGuarantee,
    this.deductibleInsurance,
  }) : _features = features;

  factory _$CarItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarItemModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? desc;
  @override
  final String? image;
  @override
  final String? size;
  @override
  final String? need;
  @override
  final int? price;
  @override
  final int? doorCount;
  @override
  final String? color;
  @override
  final int? paletteNumber;
  @override
  final bool? isFavorite;
  final List<Feature>? _features;
  @override
  List<Feature>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Insurance? deliveryTime;
  @override
  final Insurance? carGuarantee;
  @override
  final Insurance? deductibleInsurance;

  @override
  String toString() {
    return 'CarItemModel(id: $id, name: $name, desc: $desc, image: $image, size: $size, need: $need, price: $price, doorCount: $doorCount, color: $color, paletteNumber: $paletteNumber, isFavorite: $isFavorite, features: $features, deliveryTime: $deliveryTime, carGuarantee: $carGuarantee, deductibleInsurance: $deductibleInsurance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.need, need) || other.need == need) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.doorCount, doorCount) ||
                other.doorCount == doorCount) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.paletteNumber, paletteNumber) ||
                other.paletteNumber == paletteNumber) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.carGuarantee, carGuarantee) ||
                other.carGuarantee == carGuarantee) &&
            (identical(other.deductibleInsurance, deductibleInsurance) ||
                other.deductibleInsurance == deductibleInsurance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    desc,
    image,
    size,
    need,
    price,
    doorCount,
    color,
    paletteNumber,
    isFavorite,
    const DeepCollectionEquality().hash(_features),
    deliveryTime,
    carGuarantee,
    deductibleInsurance,
  );

  /// Create a copy of CarItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarItemModelImplCopyWith<_$CarItemModelImpl> get copyWith =>
      __$$CarItemModelImplCopyWithImpl<_$CarItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarItemModelImplToJson(this);
  }
}

abstract class _CarItemModel implements CarItemModel {
  const factory _CarItemModel({
    final String? id,
    final String? name,
    final String? desc,
    final String? image,
    final String? size,
    final String? need,
    final int? price,
    final int? doorCount,
    final String? color,
    final int? paletteNumber,
    final bool? isFavorite,
    final List<Feature>? features,
    final Insurance? deliveryTime,
    final Insurance? carGuarantee,
    final Insurance? deductibleInsurance,
  }) = _$CarItemModelImpl;

  factory _CarItemModel.fromJson(Map<String, dynamic> json) =
      _$CarItemModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get desc;
  @override
  String? get image;
  @override
  String? get size;
  @override
  String? get need;
  @override
  int? get price;
  @override
  int? get doorCount;
  @override
  String? get color;
  @override
  int? get paletteNumber;
  @override
  bool? get isFavorite;
  @override
  List<Feature>? get features;
  @override
  Insurance? get deliveryTime;
  @override
  Insurance? get carGuarantee;
  @override
  Insurance? get deductibleInsurance;

  /// Create a copy of CarItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarItemModelImplCopyWith<_$CarItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Feature _$FeatureFromJson(Map<String, dynamic> json) {
  return _Feature.fromJson(json);
}

/// @nodoc
mixin _$Feature {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this Feature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeatureCopyWith<Feature> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureCopyWith<$Res> {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) then) =
      _$FeatureCopyWithImpl<$Res, Feature>;
  @useResult
  $Res call({String? id, String? name, String? icon});
}

/// @nodoc
class _$FeatureCopyWithImpl<$Res, $Val extends Feature>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
abstract class _$$FeatureImplCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$$FeatureImplCopyWith(
    _$FeatureImpl value,
    $Res Function(_$FeatureImpl) then,
  ) = __$$FeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? icon});
}

/// @nodoc
class __$$FeatureImplCopyWithImpl<$Res>
    extends _$FeatureCopyWithImpl<$Res, _$FeatureImpl>
    implements _$$FeatureImplCopyWith<$Res> {
  __$$FeatureImplCopyWithImpl(
    _$FeatureImpl _value,
    $Res Function(_$FeatureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(
      _$FeatureImpl(
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
class _$FeatureImpl implements _Feature {
  const _$FeatureImpl({this.id, this.name, this.icon});

  factory _$FeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeatureImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? icon;

  @override
  String toString() {
    return 'Feature(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureImplCopyWith<_$FeatureImpl> get copyWith =>
      __$$FeatureImplCopyWithImpl<_$FeatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureImplToJson(this);
  }
}

abstract class _Feature implements Feature {
  const factory _Feature({
    final String? id,
    final String? name,
    final String? icon,
  }) = _$FeatureImpl;

  factory _Feature.fromJson(Map<String, dynamic> json) = _$FeatureImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get icon;

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeatureImplCopyWith<_$FeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Insurance _$InsuranceFromJson(Map<String, dynamic> json) {
  return _Insurance.fromJson(json);
}

/// @nodoc
mixin _$Insurance {
  String? get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this Insurance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsuranceCopyWith<Insurance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceCopyWith<$Res> {
  factory $InsuranceCopyWith(Insurance value, $Res Function(Insurance) then) =
      _$InsuranceCopyWithImpl<$Res, Insurance>;
  @useResult
  $Res call({String? id, String? key, String? desc, String? title});
}

/// @nodoc
class _$InsuranceCopyWithImpl<$Res, $Val extends Insurance>
    implements $InsuranceCopyWith<$Res> {
  _$InsuranceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? desc = freezed,
    Object? title = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            key:
                freezed == key
                    ? _value.key
                    : key // ignore: cast_nullable_to_non_nullable
                        as String?,
            desc:
                freezed == desc
                    ? _value.desc
                    : desc // ignore: cast_nullable_to_non_nullable
                        as String?,
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InsuranceImplCopyWith<$Res>
    implements $InsuranceCopyWith<$Res> {
  factory _$$InsuranceImplCopyWith(
    _$InsuranceImpl value,
    $Res Function(_$InsuranceImpl) then,
  ) = __$$InsuranceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? key, String? desc, String? title});
}

/// @nodoc
class __$$InsuranceImplCopyWithImpl<$Res>
    extends _$InsuranceCopyWithImpl<$Res, _$InsuranceImpl>
    implements _$$InsuranceImplCopyWith<$Res> {
  __$$InsuranceImplCopyWithImpl(
    _$InsuranceImpl _value,
    $Res Function(_$InsuranceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? desc = freezed,
    Object? title = freezed,
  }) {
    return _then(
      _$InsuranceImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        key:
            freezed == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                    as String?,
        desc:
            freezed == desc
                ? _value.desc
                : desc // ignore: cast_nullable_to_non_nullable
                    as String?,
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
@JsonSerializable()
class _$InsuranceImpl implements _Insurance {
  const _$InsuranceImpl({this.id, this.key, this.desc, this.title});

  factory _$InsuranceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsuranceImplFromJson(json);

  @override
  final String? id;
  @override
  final String? key;
  @override
  final String? desc;
  @override
  final String? title;

  @override
  String toString() {
    return 'Insurance(id: $id, key: $key, desc: $desc, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuranceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, desc, title);

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsuranceImplCopyWith<_$InsuranceImpl> get copyWith =>
      __$$InsuranceImplCopyWithImpl<_$InsuranceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsuranceImplToJson(this);
  }
}

abstract class _Insurance implements Insurance {
  const factory _Insurance({
    final String? id,
    final String? key,
    final String? desc,
    final String? title,
  }) = _$InsuranceImpl;

  factory _Insurance.fromJson(Map<String, dynamic> json) =
      _$InsuranceImpl.fromJson;

  @override
  String? get id;
  @override
  String? get key;
  @override
  String? get desc;
  @override
  String? get title;

  /// Create a copy of Insurance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsuranceImplCopyWith<_$InsuranceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
