// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalData _$PersonalDataFromJson(Map<String, dynamic> json) {
  return _PersonalData.fromJson(json);
}

/// @nodoc
mixin _$PersonalData {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date_timestamp')
  int? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  @TimestampSerializer()
  DateTime? get birth => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  Education get education => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalDataCopyWith<PersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDataCopyWith<$Res> {
  factory $PersonalDataCopyWith(
          PersonalData value, $Res Function(PersonalData) then) =
      _$PersonalDataCopyWithImpl<$Res, PersonalData>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'birth_date_timestamp') int? birthDate,
      @JsonKey(name: 'birth_date') @TimestampSerializer() DateTime? birth,
      Gender gender,
      String address,
      String phone,
      Education education});
}

/// @nodoc
class _$PersonalDataCopyWithImpl<$Res, $Val extends PersonalData>
    implements $PersonalDataCopyWith<$Res> {
  _$PersonalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthDate = freezed,
    Object? birth = freezed,
    Object? gender = null,
    Object? address = null,
    Object? phone = null,
    Object? education = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as int?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalDataCopyWith<$Res>
    implements $PersonalDataCopyWith<$Res> {
  factory _$$_PersonalDataCopyWith(
          _$_PersonalData value, $Res Function(_$_PersonalData) then) =
      __$$_PersonalDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'birth_date_timestamp') int? birthDate,
      @JsonKey(name: 'birth_date') @TimestampSerializer() DateTime? birth,
      Gender gender,
      String address,
      String phone,
      Education education});
}

/// @nodoc
class __$$_PersonalDataCopyWithImpl<$Res>
    extends _$PersonalDataCopyWithImpl<$Res, _$_PersonalData>
    implements _$$_PersonalDataCopyWith<$Res> {
  __$$_PersonalDataCopyWithImpl(
      _$_PersonalData _value, $Res Function(_$_PersonalData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthDate = freezed,
    Object? birth = freezed,
    Object? gender = null,
    Object? address = null,
    Object? phone = null,
    Object? education = null,
  }) {
    return _then(_$_PersonalData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as int?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalData implements _PersonalData {
  const _$_PersonalData(
      {required this.name,
      @JsonKey(name: 'birth_date_timestamp') this.birthDate,
      @JsonKey(name: 'birth_date') @TimestampSerializer() this.birth,
      required this.gender,
      required this.address,
      required this.phone,
      required this.education});

  factory _$_PersonalData.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalDataFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'birth_date_timestamp')
  final int? birthDate;
  @override
  @JsonKey(name: 'birth_date')
  @TimestampSerializer()
  final DateTime? birth;
  @override
  final Gender gender;
  @override
  final String address;
  @override
  final String phone;
  @override
  final Education education;

  @override
  String toString() {
    return 'PersonalData(name: $name, birthDate: $birthDate, birth: $birth, gender: $gender, address: $address, phone: $phone, education: $education)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.education, education) ||
                other.education == education));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, birthDate, birth, gender, address, phone, education);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalDataCopyWith<_$_PersonalData> get copyWith =>
      __$$_PersonalDataCopyWithImpl<_$_PersonalData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalDataToJson(
      this,
    );
  }
}

abstract class _PersonalData implements PersonalData {
  const factory _PersonalData(
      {required final String name,
      @JsonKey(name: 'birth_date_timestamp') final int? birthDate,
      @JsonKey(name: 'birth_date') @TimestampSerializer() final DateTime? birth,
      required final Gender gender,
      required final String address,
      required final String phone,
      required final Education education}) = _$_PersonalData;

  factory _PersonalData.fromJson(Map<String, dynamic> json) =
      _$_PersonalData.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'birth_date_timestamp')
  int? get birthDate;
  @override
  @JsonKey(name: 'birth_date')
  @TimestampSerializer()
  DateTime? get birth;
  @override
  Gender get gender;
  @override
  String get address;
  @override
  String get phone;
  @override
  Education get education;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalDataCopyWith<_$_PersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}
