// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailVerificationState {
  bool get verifying => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailVerificationStateCopyWith<EmailVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationStateCopyWith(EmailVerificationState value,
          $Res Function(EmailVerificationState) then) =
      _$EmailVerificationStateCopyWithImpl<$Res, EmailVerificationState>;
  @useResult
  $Res call({bool verifying, String? successMessage, String? errorMessage});
}

/// @nodoc
class _$EmailVerificationStateCopyWithImpl<$Res,
        $Val extends EmailVerificationState>
    implements $EmailVerificationStateCopyWith<$Res> {
  _$EmailVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifying = null,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      verifying: null == verifying
          ? _value.verifying
          : verifying // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_EmailVerificationStateCopyWith<$Res>
    implements $EmailVerificationStateCopyWith<$Res> {
  factory _$$_EmailVerificationStateCopyWith(_$_EmailVerificationState value,
          $Res Function(_$_EmailVerificationState) then) =
      __$$_EmailVerificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool verifying, String? successMessage, String? errorMessage});
}

/// @nodoc
class __$$_EmailVerificationStateCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res,
        _$_EmailVerificationState>
    implements _$$_EmailVerificationStateCopyWith<$Res> {
  __$$_EmailVerificationStateCopyWithImpl(_$_EmailVerificationState _value,
      $Res Function(_$_EmailVerificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifying = null,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_EmailVerificationState(
      verifying: null == verifying
          ? _value.verifying
          : verifying // ignore: cast_nullable_to_non_nullable
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

class _$_EmailVerificationState implements _EmailVerificationState {
  const _$_EmailVerificationState(
      {this.verifying = false, this.successMessage, this.errorMessage});

  @override
  @JsonKey()
  final bool verifying;
  @override
  final String? successMessage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'EmailVerificationState(verifying: $verifying, successMessage: $successMessage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailVerificationState &&
            (identical(other.verifying, verifying) ||
                other.verifying == verifying) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, verifying, successMessage, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailVerificationStateCopyWith<_$_EmailVerificationState> get copyWith =>
      __$$_EmailVerificationStateCopyWithImpl<_$_EmailVerificationState>(
          this, _$identity);
}

abstract class _EmailVerificationState implements EmailVerificationState {
  const factory _EmailVerificationState(
      {final bool verifying,
      final String? successMessage,
      final String? errorMessage}) = _$_EmailVerificationState;

  @override
  bool get verifying;
  @override
  String? get successMessage;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_EmailVerificationStateCopyWith<_$_EmailVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
