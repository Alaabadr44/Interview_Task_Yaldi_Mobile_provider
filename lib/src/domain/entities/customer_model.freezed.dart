// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _CustomerModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "whatsapp_check")
  int? get whatsappCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "identity_number")
  String? get identityNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  IdStatusNameModel? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  IdStatusNameModel? get company => throw _privateConstructorUsedError;
  @JsonKey(name: "classification")
  String? get classification => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "license_number")
  String? get licenseNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "place_of_issue")
  String? get placeOfIssue => throw _privateConstructorUsedError;
  @JsonKey(name: "issue_date")
  DateTime? get issueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "expiry_date")
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  @JsonKey(name: "license_front")
  String? get licenseFront => throw _privateConstructorUsedError;
  @JsonKey(name: "license_back")
  String? get licenseBack => throw _privateConstructorUsedError;
  @JsonKey(name: "id_front")
  String? get idFront => throw _privateConstructorUsedError;
  @JsonKey(name: "id_back")
  String? get idBack => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_image")
  String? get passportImage => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "extra_phones")
  List<ExtraPhone>? get extraPhones => throw _privateConstructorUsedError;

  /// Serializes this CustomerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
    CustomerModel value,
    $Res Function(CustomerModel) then,
  ) = _$CustomerModelCopyWithImpl<$Res, CustomerModel>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "whatsapp_check") int? whatsappCheck,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "identity_number") String? identityNumber,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "country") IdStatusNameModel? country,
    @JsonKey(name: "company") IdStatusNameModel? company,
    @JsonKey(name: "classification") String? classification,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "license_number") String? licenseNumber,
    @JsonKey(name: "place_of_issue") String? placeOfIssue,
    @JsonKey(name: "issue_date") DateTime? issueDate,
    @JsonKey(name: "expiry_date") DateTime? expiryDate,
    @JsonKey(name: "license_front") String? licenseFront,
    @JsonKey(name: "license_back") String? licenseBack,
    @JsonKey(name: "id_front") String? idFront,
    @JsonKey(name: "id_back") String? idBack,
    @JsonKey(name: "passport_image") String? passportImage,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "extra_phones") List<ExtraPhone>? extraPhones,
  });
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res, $Val extends CustomerModel>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? whatsappCheck = freezed,
    Object? email = freezed,
    Object? identityNumber = freezed,
    Object? address = freezed,
    Object? country = freezed,
    Object? company = freezed,
    Object? classification = freezed,
    Object? gender = freezed,
    Object? licenseNumber = freezed,
    Object? placeOfIssue = freezed,
    Object? issueDate = freezed,
    Object? expiryDate = freezed,
    Object? licenseFront = freezed,
    Object? licenseBack = freezed,
    Object? idFront = freezed,
    Object? idBack = freezed,
    Object? passportImage = freezed,
    Object? note = freezed,
    Object? extraPhones = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            phone:
                freezed == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String?,
            whatsappCheck:
                freezed == whatsappCheck
                    ? _value.whatsappCheck
                    : whatsappCheck // ignore: cast_nullable_to_non_nullable
                        as int?,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            identityNumber:
                freezed == identityNumber
                    ? _value.identityNumber
                    : identityNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            address:
                freezed == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String?,
            country:
                freezed == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as IdStatusNameModel?,
            company:
                freezed == company
                    ? _value.company
                    : company // ignore: cast_nullable_to_non_nullable
                        as IdStatusNameModel?,
            classification:
                freezed == classification
                    ? _value.classification
                    : classification // ignore: cast_nullable_to_non_nullable
                        as String?,
            gender:
                freezed == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String?,
            licenseNumber:
                freezed == licenseNumber
                    ? _value.licenseNumber
                    : licenseNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            placeOfIssue:
                freezed == placeOfIssue
                    ? _value.placeOfIssue
                    : placeOfIssue // ignore: cast_nullable_to_non_nullable
                        as String?,
            issueDate:
                freezed == issueDate
                    ? _value.issueDate
                    : issueDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            expiryDate:
                freezed == expiryDate
                    ? _value.expiryDate
                    : expiryDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            licenseFront:
                freezed == licenseFront
                    ? _value.licenseFront
                    : licenseFront // ignore: cast_nullable_to_non_nullable
                        as String?,
            licenseBack:
                freezed == licenseBack
                    ? _value.licenseBack
                    : licenseBack // ignore: cast_nullable_to_non_nullable
                        as String?,
            idFront:
                freezed == idFront
                    ? _value.idFront
                    : idFront // ignore: cast_nullable_to_non_nullable
                        as String?,
            idBack:
                freezed == idBack
                    ? _value.idBack
                    : idBack // ignore: cast_nullable_to_non_nullable
                        as String?,
            passportImage:
                freezed == passportImage
                    ? _value.passportImage
                    : passportImage // ignore: cast_nullable_to_non_nullable
                        as String?,
            note:
                freezed == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as String?,
            extraPhones:
                freezed == extraPhones
                    ? _value.extraPhones
                    : extraPhones // ignore: cast_nullable_to_non_nullable
                        as List<ExtraPhone>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerModelImplCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$$CustomerModelImplCopyWith(
    _$CustomerModelImpl value,
    $Res Function(_$CustomerModelImpl) then,
  ) = __$$CustomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "whatsapp_check") int? whatsappCheck,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "identity_number") String? identityNumber,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "country") IdStatusNameModel? country,
    @JsonKey(name: "company") IdStatusNameModel? company,
    @JsonKey(name: "classification") String? classification,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "license_number") String? licenseNumber,
    @JsonKey(name: "place_of_issue") String? placeOfIssue,
    @JsonKey(name: "issue_date") DateTime? issueDate,
    @JsonKey(name: "expiry_date") DateTime? expiryDate,
    @JsonKey(name: "license_front") String? licenseFront,
    @JsonKey(name: "license_back") String? licenseBack,
    @JsonKey(name: "id_front") String? idFront,
    @JsonKey(name: "id_back") String? idBack,
    @JsonKey(name: "passport_image") String? passportImage,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "extra_phones") List<ExtraPhone>? extraPhones,
  });
}

/// @nodoc
class __$$CustomerModelImplCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res, _$CustomerModelImpl>
    implements _$$CustomerModelImplCopyWith<$Res> {
  __$$CustomerModelImplCopyWithImpl(
    _$CustomerModelImpl _value,
    $Res Function(_$CustomerModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? whatsappCheck = freezed,
    Object? email = freezed,
    Object? identityNumber = freezed,
    Object? address = freezed,
    Object? country = freezed,
    Object? company = freezed,
    Object? classification = freezed,
    Object? gender = freezed,
    Object? licenseNumber = freezed,
    Object? placeOfIssue = freezed,
    Object? issueDate = freezed,
    Object? expiryDate = freezed,
    Object? licenseFront = freezed,
    Object? licenseBack = freezed,
    Object? idFront = freezed,
    Object? idBack = freezed,
    Object? passportImage = freezed,
    Object? note = freezed,
    Object? extraPhones = freezed,
  }) {
    return _then(
      _$CustomerModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        whatsappCheck:
            freezed == whatsappCheck
                ? _value.whatsappCheck
                : whatsappCheck // ignore: cast_nullable_to_non_nullable
                    as int?,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        identityNumber:
            freezed == identityNumber
                ? _value.identityNumber
                : identityNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        address:
            freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String?,
        country:
            freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as IdStatusNameModel?,
        company:
            freezed == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                    as IdStatusNameModel?,
        classification:
            freezed == classification
                ? _value.classification
                : classification // ignore: cast_nullable_to_non_nullable
                    as String?,
        gender:
            freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String?,
        licenseNumber:
            freezed == licenseNumber
                ? _value.licenseNumber
                : licenseNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        placeOfIssue:
            freezed == placeOfIssue
                ? _value.placeOfIssue
                : placeOfIssue // ignore: cast_nullable_to_non_nullable
                    as String?,
        issueDate:
            freezed == issueDate
                ? _value.issueDate
                : issueDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        expiryDate:
            freezed == expiryDate
                ? _value.expiryDate
                : expiryDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        licenseFront:
            freezed == licenseFront
                ? _value.licenseFront
                : licenseFront // ignore: cast_nullable_to_non_nullable
                    as String?,
        licenseBack:
            freezed == licenseBack
                ? _value.licenseBack
                : licenseBack // ignore: cast_nullable_to_non_nullable
                    as String?,
        idFront:
            freezed == idFront
                ? _value.idFront
                : idFront // ignore: cast_nullable_to_non_nullable
                    as String?,
        idBack:
            freezed == idBack
                ? _value.idBack
                : idBack // ignore: cast_nullable_to_non_nullable
                    as String?,
        passportImage:
            freezed == passportImage
                ? _value.passportImage
                : passportImage // ignore: cast_nullable_to_non_nullable
                    as String?,
        note:
            freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as String?,
        extraPhones:
            freezed == extraPhones
                ? _value._extraPhones
                : extraPhones // ignore: cast_nullable_to_non_nullable
                    as List<ExtraPhone>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerModelImpl implements _CustomerModel {
  const _$CustomerModelImpl({
    @JsonKey(name: "id") this.id,
    @JsonKey(name: "name") this.name,
    @JsonKey(name: "phone") this.phone,
    @JsonKey(name: "whatsapp_check") this.whatsappCheck,
    @JsonKey(name: "email") this.email,
    @JsonKey(name: "identity_number") this.identityNumber,
    @JsonKey(name: "address") this.address,
    @JsonKey(name: "country") this.country,
    @JsonKey(name: "company") this.company,
    @JsonKey(name: "classification") this.classification,
    @JsonKey(name: "gender") this.gender,
    @JsonKey(name: "license_number") this.licenseNumber,
    @JsonKey(name: "place_of_issue") this.placeOfIssue,
    @JsonKey(name: "issue_date") this.issueDate,
    @JsonKey(name: "expiry_date") this.expiryDate,
    @JsonKey(name: "license_front") this.licenseFront,
    @JsonKey(name: "license_back") this.licenseBack,
    @JsonKey(name: "id_front") this.idFront,
    @JsonKey(name: "id_back") this.idBack,
    @JsonKey(name: "passport_image") this.passportImage,
    @JsonKey(name: "note") this.note,
    @JsonKey(name: "extra_phones") final List<ExtraPhone>? extraPhones,
  }) : _extraPhones = extraPhones;

  factory _$CustomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "whatsapp_check")
  final int? whatsappCheck;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "identity_number")
  final String? identityNumber;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "country")
  final IdStatusNameModel? country;
  @override
  @JsonKey(name: "company")
  final IdStatusNameModel? company;
  @override
  @JsonKey(name: "classification")
  final String? classification;
  @override
  @JsonKey(name: "gender")
  final String? gender;
  @override
  @JsonKey(name: "license_number")
  final String? licenseNumber;
  @override
  @JsonKey(name: "place_of_issue")
  final String? placeOfIssue;
  @override
  @JsonKey(name: "issue_date")
  final DateTime? issueDate;
  @override
  @JsonKey(name: "expiry_date")
  final DateTime? expiryDate;
  @override
  @JsonKey(name: "license_front")
  final String? licenseFront;
  @override
  @JsonKey(name: "license_back")
  final String? licenseBack;
  @override
  @JsonKey(name: "id_front")
  final String? idFront;
  @override
  @JsonKey(name: "id_back")
  final String? idBack;
  @override
  @JsonKey(name: "passport_image")
  final String? passportImage;
  @override
  @JsonKey(name: "note")
  final String? note;
  final List<ExtraPhone>? _extraPhones;
  @override
  @JsonKey(name: "extra_phones")
  List<ExtraPhone>? get extraPhones {
    final value = _extraPhones;
    if (value == null) return null;
    if (_extraPhones is EqualUnmodifiableListView) return _extraPhones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerModel(id: $id, name: $name, phone: $phone, whatsappCheck: $whatsappCheck, email: $email, identityNumber: $identityNumber, address: $address, country: $country, company: $company, classification: $classification, gender: $gender, licenseNumber: $licenseNumber, placeOfIssue: $placeOfIssue, issueDate: $issueDate, expiryDate: $expiryDate, licenseFront: $licenseFront, licenseBack: $licenseBack, idFront: $idFront, idBack: $idBack, passportImage: $passportImage, note: $note, extraPhones: $extraPhones)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.whatsappCheck, whatsappCheck) ||
                other.whatsappCheck == whatsappCheck) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.placeOfIssue, placeOfIssue) ||
                other.placeOfIssue == placeOfIssue) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.licenseFront, licenseFront) ||
                other.licenseFront == licenseFront) &&
            (identical(other.licenseBack, licenseBack) ||
                other.licenseBack == licenseBack) &&
            (identical(other.idFront, idFront) || other.idFront == idFront) &&
            (identical(other.idBack, idBack) || other.idBack == idBack) &&
            (identical(other.passportImage, passportImage) ||
                other.passportImage == passportImage) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(
              other._extraPhones,
              _extraPhones,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    name,
    phone,
    whatsappCheck,
    email,
    identityNumber,
    address,
    country,
    company,
    classification,
    gender,
    licenseNumber,
    placeOfIssue,
    issueDate,
    expiryDate,
    licenseFront,
    licenseBack,
    idFront,
    idBack,
    passportImage,
    note,
    const DeepCollectionEquality().hash(_extraPhones),
  ]);

  /// Create a copy of CustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      __$$CustomerModelImplCopyWithImpl<_$CustomerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerModelImplToJson(this);
  }
}

abstract class _CustomerModel implements CustomerModel {
  const factory _CustomerModel({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "name") final String? name,
    @JsonKey(name: "phone") final String? phone,
    @JsonKey(name: "whatsapp_check") final int? whatsappCheck,
    @JsonKey(name: "email") final String? email,
    @JsonKey(name: "identity_number") final String? identityNumber,
    @JsonKey(name: "address") final String? address,
    @JsonKey(name: "country") final IdStatusNameModel? country,
    @JsonKey(name: "company") final IdStatusNameModel? company,
    @JsonKey(name: "classification") final String? classification,
    @JsonKey(name: "gender") final String? gender,
    @JsonKey(name: "license_number") final String? licenseNumber,
    @JsonKey(name: "place_of_issue") final String? placeOfIssue,
    @JsonKey(name: "issue_date") final DateTime? issueDate,
    @JsonKey(name: "expiry_date") final DateTime? expiryDate,
    @JsonKey(name: "license_front") final String? licenseFront,
    @JsonKey(name: "license_back") final String? licenseBack,
    @JsonKey(name: "id_front") final String? idFront,
    @JsonKey(name: "id_back") final String? idBack,
    @JsonKey(name: "passport_image") final String? passportImage,
    @JsonKey(name: "note") final String? note,
    @JsonKey(name: "extra_phones") final List<ExtraPhone>? extraPhones,
  }) = _$CustomerModelImpl;

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$CustomerModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "whatsapp_check")
  int? get whatsappCheck;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "identity_number")
  String? get identityNumber;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "country")
  IdStatusNameModel? get country;
  @override
  @JsonKey(name: "company")
  IdStatusNameModel? get company;
  @override
  @JsonKey(name: "classification")
  String? get classification;
  @override
  @JsonKey(name: "gender")
  String? get gender;
  @override
  @JsonKey(name: "license_number")
  String? get licenseNumber;
  @override
  @JsonKey(name: "place_of_issue")
  String? get placeOfIssue;
  @override
  @JsonKey(name: "issue_date")
  DateTime? get issueDate;
  @override
  @JsonKey(name: "expiry_date")
  DateTime? get expiryDate;
  @override
  @JsonKey(name: "license_front")
  String? get licenseFront;
  @override
  @JsonKey(name: "license_back")
  String? get licenseBack;
  @override
  @JsonKey(name: "id_front")
  String? get idFront;
  @override
  @JsonKey(name: "id_back")
  String? get idBack;
  @override
  @JsonKey(name: "passport_image")
  String? get passportImage;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "extra_phones")
  List<ExtraPhone>? get extraPhones;

  /// Create a copy of CustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtraPhone _$ExtraPhoneFromJson(Map<String, dynamic> json) {
  return _ExtraPhone.fromJson(json);
}

/// @nodoc
mixin _$ExtraPhone {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  int? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "whatsapp")
  int? get whatsapp => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ExtraPhone to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtraPhone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtraPhoneCopyWith<ExtraPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraPhoneCopyWith<$Res> {
  factory $ExtraPhoneCopyWith(
    ExtraPhone value,
    $Res Function(ExtraPhone) then,
  ) = _$ExtraPhoneCopyWithImpl<$Res, ExtraPhone>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "customer_id") int? customerId,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "country_code") String? countryCode,
    @JsonKey(name: "whatsapp") int? whatsapp,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  });
}

/// @nodoc
class _$ExtraPhoneCopyWithImpl<$Res, $Val extends ExtraPhone>
    implements $ExtraPhoneCopyWith<$Res> {
  _$ExtraPhoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtraPhone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
    Object? whatsapp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            customerId:
                freezed == customerId
                    ? _value.customerId
                    : customerId // ignore: cast_nullable_to_non_nullable
                        as int?,
            phone:
                freezed == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String?,
            countryCode:
                freezed == countryCode
                    ? _value.countryCode
                    : countryCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            whatsapp:
                freezed == whatsapp
                    ? _value.whatsapp
                    : whatsapp // ignore: cast_nullable_to_non_nullable
                        as int?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExtraPhoneImplCopyWith<$Res>
    implements $ExtraPhoneCopyWith<$Res> {
  factory _$$ExtraPhoneImplCopyWith(
    _$ExtraPhoneImpl value,
    $Res Function(_$ExtraPhoneImpl) then,
  ) = __$$ExtraPhoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "customer_id") int? customerId,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "country_code") String? countryCode,
    @JsonKey(name: "whatsapp") int? whatsapp,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  });
}

/// @nodoc
class __$$ExtraPhoneImplCopyWithImpl<$Res>
    extends _$ExtraPhoneCopyWithImpl<$Res, _$ExtraPhoneImpl>
    implements _$$ExtraPhoneImplCopyWith<$Res> {
  __$$ExtraPhoneImplCopyWithImpl(
    _$ExtraPhoneImpl _value,
    $Res Function(_$ExtraPhoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExtraPhone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
    Object? whatsapp = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ExtraPhoneImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        customerId:
            freezed == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                    as int?,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        countryCode:
            freezed == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        whatsapp:
            freezed == whatsapp
                ? _value.whatsapp
                : whatsapp // ignore: cast_nullable_to_non_nullable
                    as int?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraPhoneImpl implements _ExtraPhone {
  const _$ExtraPhoneImpl({
    @JsonKey(name: "id") this.id,
    @JsonKey(name: "customer_id") this.customerId,
    @JsonKey(name: "phone") this.phone,
    @JsonKey(name: "country_code") this.countryCode,
    @JsonKey(name: "whatsapp") this.whatsapp,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
  });

  factory _$ExtraPhoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraPhoneImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "customer_id")
  final int? customerId;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "country_code")
  final String? countryCode;
  @override
  @JsonKey(name: "whatsapp")
  final int? whatsapp;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ExtraPhone(id: $id, customerId: $customerId, phone: $phone, countryCode: $countryCode, whatsapp: $whatsapp, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraPhoneImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    customerId,
    phone,
    countryCode,
    whatsapp,
    createdAt,
    updatedAt,
  );

  /// Create a copy of ExtraPhone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraPhoneImplCopyWith<_$ExtraPhoneImpl> get copyWith =>
      __$$ExtraPhoneImplCopyWithImpl<_$ExtraPhoneImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraPhoneImplToJson(this);
  }
}

abstract class _ExtraPhone implements ExtraPhone {
  const factory _ExtraPhone({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "customer_id") final int? customerId,
    @JsonKey(name: "phone") final String? phone,
    @JsonKey(name: "country_code") final String? countryCode,
    @JsonKey(name: "whatsapp") final int? whatsapp,
    @JsonKey(name: "created_at") final DateTime? createdAt,
    @JsonKey(name: "updated_at") final DateTime? updatedAt,
  }) = _$ExtraPhoneImpl;

  factory _ExtraPhone.fromJson(Map<String, dynamic> json) =
      _$ExtraPhoneImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "customer_id")
  int? get customerId;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "country_code")
  String? get countryCode;
  @override
  @JsonKey(name: "whatsapp")
  int? get whatsapp;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of ExtraPhone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtraPhoneImplCopyWith<_$ExtraPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
