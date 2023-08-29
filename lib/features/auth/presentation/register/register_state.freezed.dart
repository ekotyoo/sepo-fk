// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  NameTextInput get nameTextInput => throw _privateConstructorUsedError;
  EmailTextInput get emailTextInput => throw _privateConstructorUsedError;
  PasswordTextInput get passwordTextInput => throw _privateConstructorUsedError;
  bool get validated => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {NameTextInput nameTextInput,
      EmailTextInput emailTextInput,
      PasswordTextInput passwordTextInput,
      bool validated,
      bool isSubmitting,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameTextInput = null,
    Object? emailTextInput = null,
    Object? passwordTextInput = null,
    Object? validated = null,
    Object? isSubmitting = null,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      nameTextInput: null == nameTextInput
          ? _value.nameTextInput
          : nameTextInput // ignore: cast_nullable_to_non_nullable
              as NameTextInput,
      emailTextInput: null == emailTextInput
          ? _value.emailTextInput
          : emailTextInput // ignore: cast_nullable_to_non_nullable
              as EmailTextInput,
      passwordTextInput: null == passwordTextInput
          ? _value.passwordTextInput
          : passwordTextInput // ignore: cast_nullable_to_non_nullable
              as PasswordTextInput,
      validated: null == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NameTextInput nameTextInput,
      EmailTextInput emailTextInput,
      PasswordTextInput passwordTextInput,
      bool validated,
      bool isSubmitting,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameTextInput = null,
    Object? emailTextInput = null,
    Object? passwordTextInput = null,
    Object? validated = null,
    Object? isSubmitting = null,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RegisterState(
      nameTextInput: null == nameTextInput
          ? _value.nameTextInput
          : nameTextInput // ignore: cast_nullable_to_non_nullable
              as NameTextInput,
      emailTextInput: null == emailTextInput
          ? _value.emailTextInput
          : emailTextInput // ignore: cast_nullable_to_non_nullable
              as EmailTextInput,
      passwordTextInput: null == passwordTextInput
          ? _value.passwordTextInput
          : passwordTextInput // ignore: cast_nullable_to_non_nullable
              as PasswordTextInput,
      validated: null == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {this.nameTextInput = const NameTextInput.pure(),
      this.emailTextInput = const EmailTextInput.pure(),
      this.passwordTextInput = const PasswordTextInput.pure(),
      this.validated = false,
      this.isSubmitting = false,
      this.successMessage,
      this.errorMessage});

  @override
  @JsonKey()
  final NameTextInput nameTextInput;
  @override
  @JsonKey()
  final EmailTextInput emailTextInput;
  @override
  @JsonKey()
  final PasswordTextInput passwordTextInput;
  @override
  @JsonKey()
  final bool validated;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  final String? successMessage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RegisterState(nameTextInput: $nameTextInput, emailTextInput: $emailTextInput, passwordTextInput: $passwordTextInput, validated: $validated, isSubmitting: $isSubmitting, successMessage: $successMessage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.nameTextInput, nameTextInput) ||
                other.nameTextInput == nameTextInput) &&
            (identical(other.emailTextInput, emailTextInput) ||
                other.emailTextInput == emailTextInput) &&
            (identical(other.passwordTextInput, passwordTextInput) ||
                other.passwordTextInput == passwordTextInput) &&
            (identical(other.validated, validated) ||
                other.validated == validated) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameTextInput, emailTextInput,
      passwordTextInput, validated, isSubmitting, successMessage, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final NameTextInput nameTextInput,
      final EmailTextInput emailTextInput,
      final PasswordTextInput passwordTextInput,
      final bool validated,
      final bool isSubmitting,
      final String? successMessage,
      final String? errorMessage}) = _$_RegisterState;

  @override
  NameTextInput get nameTextInput;
  @override
  EmailTextInput get emailTextInput;
  @override
  PasswordTextInput get passwordTextInput;
  @override
  bool get validated;
  @override
  bool get isSubmitting;
  @override
  String? get successMessage;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
