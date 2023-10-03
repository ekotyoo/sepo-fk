// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_finish_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseFinishState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseFinishStateCopyWith<ExerciseFinishState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseFinishStateCopyWith<$Res> {
  factory $ExerciseFinishStateCopyWith(
          ExerciseFinishState value, $Res Function(ExerciseFinishState) then) =
      _$ExerciseFinishStateCopyWithImpl<$Res, ExerciseFinishState>;
  @useResult
  $Res call({bool isLoading, String? errorMessage, String? successMessage});
}

/// @nodoc
class _$ExerciseFinishStateCopyWithImpl<$Res, $Val extends ExerciseFinishState>
    implements $ExerciseFinishStateCopyWith<$Res> {
  _$ExerciseFinishStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseFinishStateCopyWith<$Res>
    implements $ExerciseFinishStateCopyWith<$Res> {
  factory _$$_ExerciseFinishStateCopyWith(_$_ExerciseFinishState value,
          $Res Function(_$_ExerciseFinishState) then) =
      __$$_ExerciseFinishStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? errorMessage, String? successMessage});
}

/// @nodoc
class __$$_ExerciseFinishStateCopyWithImpl<$Res>
    extends _$ExerciseFinishStateCopyWithImpl<$Res, _$_ExerciseFinishState>
    implements _$$_ExerciseFinishStateCopyWith<$Res> {
  __$$_ExerciseFinishStateCopyWithImpl(_$_ExerciseFinishState _value,
      $Res Function(_$_ExerciseFinishState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_$_ExerciseFinishState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ExerciseFinishState implements _ExerciseFinishState {
  const _$_ExerciseFinishState(
      {this.isLoading = false, this.errorMessage, this.successMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  final String? successMessage;

  @override
  String toString() {
    return 'ExerciseFinishState(isLoading: $isLoading, errorMessage: $errorMessage, successMessage: $successMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseFinishState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, errorMessage, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseFinishStateCopyWith<_$_ExerciseFinishState> get copyWith =>
      __$$_ExerciseFinishStateCopyWithImpl<_$_ExerciseFinishState>(
          this, _$identity);
}

abstract class _ExerciseFinishState implements ExerciseFinishState {
  const factory _ExerciseFinishState(
      {final bool isLoading,
      final String? errorMessage,
      final String? successMessage}) = _$_ExerciseFinishState;

  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  String? get successMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseFinishStateCopyWith<_$_ExerciseFinishState> get copyWith =>
      throw _privateConstructorUsedError;
}
