// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalDataState {
  NameTextInput get nameInput => throw _privateConstructorUsedError;
  DateInput get birthDateInput => throw _privateConstructorUsedError;
  GenderInput get genderInput => throw _privateConstructorUsedError;
  AddressInput get addressInput => throw _privateConstructorUsedError;
  PhoneInput get phoneInput => throw _privateConstructorUsedError;
  EducationInput get educationInput => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalDataStateCopyWith<PersonalDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDataStateCopyWith<$Res> {
  factory $PersonalDataStateCopyWith(
          PersonalDataState value, $Res Function(PersonalDataState) then) =
      _$PersonalDataStateCopyWithImpl<$Res, PersonalDataState>;
  @useResult
  $Res call(
      {NameTextInput nameInput,
      DateInput birthDateInput,
      GenderInput genderInput,
      AddressInput addressInput,
      PhoneInput phoneInput,
      EducationInput educationInput});
}

/// @nodoc
class _$PersonalDataStateCopyWithImpl<$Res, $Val extends PersonalDataState>
    implements $PersonalDataStateCopyWith<$Res> {
  _$PersonalDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameInput = null,
    Object? birthDateInput = null,
    Object? genderInput = null,
    Object? addressInput = null,
    Object? phoneInput = null,
    Object? educationInput = null,
  }) {
    return _then(_value.copyWith(
      nameInput: null == nameInput
          ? _value.nameInput
          : nameInput // ignore: cast_nullable_to_non_nullable
              as NameTextInput,
      birthDateInput: null == birthDateInput
          ? _value.birthDateInput
          : birthDateInput // ignore: cast_nullable_to_non_nullable
              as DateInput,
      genderInput: null == genderInput
          ? _value.genderInput
          : genderInput // ignore: cast_nullable_to_non_nullable
              as GenderInput,
      addressInput: null == addressInput
          ? _value.addressInput
          : addressInput // ignore: cast_nullable_to_non_nullable
              as AddressInput,
      phoneInput: null == phoneInput
          ? _value.phoneInput
          : phoneInput // ignore: cast_nullable_to_non_nullable
              as PhoneInput,
      educationInput: null == educationInput
          ? _value.educationInput
          : educationInput // ignore: cast_nullable_to_non_nullable
              as EducationInput,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalDataStateCopyWith<$Res>
    implements $PersonalDataStateCopyWith<$Res> {
  factory _$$_PersonalDataStateCopyWith(_$_PersonalDataState value,
          $Res Function(_$_PersonalDataState) then) =
      __$$_PersonalDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NameTextInput nameInput,
      DateInput birthDateInput,
      GenderInput genderInput,
      AddressInput addressInput,
      PhoneInput phoneInput,
      EducationInput educationInput});
}

/// @nodoc
class __$$_PersonalDataStateCopyWithImpl<$Res>
    extends _$PersonalDataStateCopyWithImpl<$Res, _$_PersonalDataState>
    implements _$$_PersonalDataStateCopyWith<$Res> {
  __$$_PersonalDataStateCopyWithImpl(
      _$_PersonalDataState _value, $Res Function(_$_PersonalDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameInput = null,
    Object? birthDateInput = null,
    Object? genderInput = null,
    Object? addressInput = null,
    Object? phoneInput = null,
    Object? educationInput = null,
  }) {
    return _then(_$_PersonalDataState(
      nameInput: null == nameInput
          ? _value.nameInput
          : nameInput // ignore: cast_nullable_to_non_nullable
              as NameTextInput,
      birthDateInput: null == birthDateInput
          ? _value.birthDateInput
          : birthDateInput // ignore: cast_nullable_to_non_nullable
              as DateInput,
      genderInput: null == genderInput
          ? _value.genderInput
          : genderInput // ignore: cast_nullable_to_non_nullable
              as GenderInput,
      addressInput: null == addressInput
          ? _value.addressInput
          : addressInput // ignore: cast_nullable_to_non_nullable
              as AddressInput,
      phoneInput: null == phoneInput
          ? _value.phoneInput
          : phoneInput // ignore: cast_nullable_to_non_nullable
              as PhoneInput,
      educationInput: null == educationInput
          ? _value.educationInput
          : educationInput // ignore: cast_nullable_to_non_nullable
              as EducationInput,
    ));
  }
}

/// @nodoc

class _$_PersonalDataState implements _PersonalDataState {
  const _$_PersonalDataState(
      {this.nameInput = const NameTextInput.pure(),
      this.birthDateInput = const DateInput.pure(),
      this.genderInput = const GenderInput.pure(),
      this.addressInput = const AddressInput.pure(),
      this.phoneInput = const PhoneInput.pure(),
      this.educationInput = const EducationInput.pure()});

  @override
  @JsonKey()
  final NameTextInput nameInput;
  @override
  @JsonKey()
  final DateInput birthDateInput;
  @override
  @JsonKey()
  final GenderInput genderInput;
  @override
  @JsonKey()
  final AddressInput addressInput;
  @override
  @JsonKey()
  final PhoneInput phoneInput;
  @override
  @JsonKey()
  final EducationInput educationInput;

  @override
  String toString() {
    return 'PersonalDataState(nameInput: $nameInput, birthDateInput: $birthDateInput, genderInput: $genderInput, addressInput: $addressInput, phoneInput: $phoneInput, educationInput: $educationInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalDataState &&
            (identical(other.nameInput, nameInput) ||
                other.nameInput == nameInput) &&
            (identical(other.birthDateInput, birthDateInput) ||
                other.birthDateInput == birthDateInput) &&
            (identical(other.genderInput, genderInput) ||
                other.genderInput == genderInput) &&
            (identical(other.addressInput, addressInput) ||
                other.addressInput == addressInput) &&
            (identical(other.phoneInput, phoneInput) ||
                other.phoneInput == phoneInput) &&
            (identical(other.educationInput, educationInput) ||
                other.educationInput == educationInput));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameInput, birthDateInput,
      genderInput, addressInput, phoneInput, educationInput);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalDataStateCopyWith<_$_PersonalDataState> get copyWith =>
      __$$_PersonalDataStateCopyWithImpl<_$_PersonalDataState>(
          this, _$identity);
}

abstract class _PersonalDataState implements PersonalDataState {
  const factory _PersonalDataState(
      {final NameTextInput nameInput,
      final DateInput birthDateInput,
      final GenderInput genderInput,
      final AddressInput addressInput,
      final PhoneInput phoneInput,
      final EducationInput educationInput}) = _$_PersonalDataState;

  @override
  NameTextInput get nameInput;
  @override
  DateInput get birthDateInput;
  @override
  GenderInput get genderInput;
  @override
  AddressInput get addressInput;
  @override
  PhoneInput get phoneInput;
  @override
  EducationInput get educationInput;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalDataStateCopyWith<_$_PersonalDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
