// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseSessionState {
  Duration get duration => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  int get currentExerciseIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseSessionStateCopyWith<ExerciseSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseSessionStateCopyWith<$Res> {
  factory $ExerciseSessionStateCopyWith(ExerciseSessionState value,
          $Res Function(ExerciseSessionState) then) =
      _$ExerciseSessionStateCopyWithImpl<$Res, ExerciseSessionState>;
  @useResult
  $Res call(
      {Duration duration,
      bool isDone,
      bool isFinished,
      int currentExerciseIndex});
}

/// @nodoc
class _$ExerciseSessionStateCopyWithImpl<$Res,
        $Val extends ExerciseSessionState>
    implements $ExerciseSessionStateCopyWith<$Res> {
  _$ExerciseSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? isDone = null,
    Object? isFinished = null,
    Object? currentExerciseIndex = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      currentExerciseIndex: null == currentExerciseIndex
          ? _value.currentExerciseIndex
          : currentExerciseIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseSessionStateCopyWith<$Res>
    implements $ExerciseSessionStateCopyWith<$Res> {
  factory _$$_ExerciseSessionStateCopyWith(_$_ExerciseSessionState value,
          $Res Function(_$_ExerciseSessionState) then) =
      __$$_ExerciseSessionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration duration,
      bool isDone,
      bool isFinished,
      int currentExerciseIndex});
}

/// @nodoc
class __$$_ExerciseSessionStateCopyWithImpl<$Res>
    extends _$ExerciseSessionStateCopyWithImpl<$Res, _$_ExerciseSessionState>
    implements _$$_ExerciseSessionStateCopyWith<$Res> {
  __$$_ExerciseSessionStateCopyWithImpl(_$_ExerciseSessionState _value,
      $Res Function(_$_ExerciseSessionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? isDone = null,
    Object? isFinished = null,
    Object? currentExerciseIndex = null,
  }) {
    return _then(_$_ExerciseSessionState(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      currentExerciseIndex: null == currentExerciseIndex
          ? _value.currentExerciseIndex
          : currentExerciseIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExerciseSessionState implements _ExerciseSessionState {
  const _$_ExerciseSessionState(
      {this.duration = Duration.zero,
      this.isDone = false,
      this.isFinished = false,
      this.currentExerciseIndex = 0});

  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final bool isFinished;
  @override
  @JsonKey()
  final int currentExerciseIndex;

  @override
  String toString() {
    return 'ExerciseSessionState(duration: $duration, isDone: $isDone, isFinished: $isFinished, currentExerciseIndex: $currentExerciseIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseSessionState &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.currentExerciseIndex, currentExerciseIndex) ||
                other.currentExerciseIndex == currentExerciseIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, duration, isDone, isFinished, currentExerciseIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseSessionStateCopyWith<_$_ExerciseSessionState> get copyWith =>
      __$$_ExerciseSessionStateCopyWithImpl<_$_ExerciseSessionState>(
          this, _$identity);
}

abstract class _ExerciseSessionState implements ExerciseSessionState {
  const factory _ExerciseSessionState(
      {final Duration duration,
      final bool isDone,
      final bool isFinished,
      final int currentExerciseIndex}) = _$_ExerciseSessionState;

  @override
  Duration get duration;
  @override
  bool get isDone;
  @override
  bool get isFinished;
  @override
  int get currentExerciseIndex;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseSessionStateCopyWith<_$_ExerciseSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}
