// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  dynamic get emailTextInput => throw _privateConstructorUsedError;
  dynamic get passwordTextInput => throw _privateConstructorUsedError;
  dynamic get validated => throw _privateConstructorUsedError;
  dynamic get isSubmitting => throw _privateConstructorUsedError;
  bool get shouldVerifyEmail => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {dynamic emailTextInput,
      dynamic passwordTextInput,
      dynamic validated,
      dynamic isSubmitting,
      bool shouldVerifyEmail,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailTextInput = freezed,
    Object? passwordTextInput = freezed,
    Object? validated = freezed,
    Object? isSubmitting = freezed,
    Object? shouldVerifyEmail = null,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      emailTextInput: freezed == emailTextInput
          ? _value.emailTextInput
          : emailTextInput // ignore: cast_nullable_to_non_nullable
              as dynamic,
      passwordTextInput: freezed == passwordTextInput
          ? _value.passwordTextInput
          : passwordTextInput // ignore: cast_nullable_to_non_nullable
              as dynamic,
      validated: freezed == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isSubmitting: freezed == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shouldVerifyEmail: null == shouldVerifyEmail
          ? _value.shouldVerifyEmail
          : shouldVerifyEmail // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic emailTextInput,
      dynamic passwordTextInput,
      dynamic validated,
      dynamic isSubmitting,
      bool shouldVerifyEmail,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailTextInput = freezed,
    Object? passwordTextInput = freezed,
    Object? validated = freezed,
    Object? isSubmitting = freezed,
    Object? shouldVerifyEmail = null,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_LoginState(
      emailTextInput:
          freezed == emailTextInput ? _value.emailTextInput! : emailTextInput,
      passwordTextInput: freezed == passwordTextInput
          ? _value.passwordTextInput!
          : passwordTextInput,
      validated: freezed == validated ? _value.validated! : validated,
      isSubmitting:
          freezed == isSubmitting ? _value.isSubmitting! : isSubmitting,
      shouldVerifyEmail: null == shouldVerifyEmail
          ? _value.shouldVerifyEmail
          : shouldVerifyEmail // ignore: cast_nullable_to_non_nullable
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

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.emailTextInput = const EmailTextInput.pure(),
      this.passwordTextInput = const PasswordLoginTextInput.pure(),
      this.validated = false,
      this.isSubmitting = false,
      this.shouldVerifyEmail = false,
      this.successMessage,
      this.errorMessage});

  @override
  @JsonKey()
  final dynamic emailTextInput;
  @override
  @JsonKey()
  final dynamic passwordTextInput;
  @override
  @JsonKey()
  final dynamic validated;
  @override
  @JsonKey()
  final dynamic isSubmitting;
  @override
  @JsonKey()
  final bool shouldVerifyEmail;
  @override
  final String? successMessage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LoginState(emailTextInput: $emailTextInput, passwordTextInput: $passwordTextInput, validated: $validated, isSubmitting: $isSubmitting, shouldVerifyEmail: $shouldVerifyEmail, successMessage: $successMessage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality()
                .equals(other.emailTextInput, emailTextInput) &&
            const DeepCollectionEquality()
                .equals(other.passwordTextInput, passwordTextInput) &&
            const DeepCollectionEquality().equals(other.validated, validated) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            (identical(other.shouldVerifyEmail, shouldVerifyEmail) ||
                other.shouldVerifyEmail == shouldVerifyEmail) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailTextInput),
      const DeepCollectionEquality().hash(passwordTextInput),
      const DeepCollectionEquality().hash(validated),
      const DeepCollectionEquality().hash(isSubmitting),
      shouldVerifyEmail,
      successMessage,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final dynamic emailTextInput,
      final dynamic passwordTextInput,
      final dynamic validated,
      final dynamic isSubmitting,
      final bool shouldVerifyEmail,
      final String? successMessage,
      final String? errorMessage}) = _$_LoginState;

  @override
  dynamic get emailTextInput;
  @override
  dynamic get passwordTextInput;
  @override
  dynamic get validated;
  @override
  dynamic get isSubmitting;
  @override
  bool get shouldVerifyEmail;
  @override
  String? get successMessage;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
