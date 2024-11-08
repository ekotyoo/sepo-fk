// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_condition_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentConditionState {
  Map<String, bool> get illnessHistory => throw _privateConstructorUsedError;
  String? get otherIllness => throw _privateConstructorUsedError;
  IllnessDurationInput get illnessDurationInput =>
      throw _privateConstructorUsedError;
  ExerciseDurationInput get exerciseDurationInput =>
      throw _privateConstructorUsedError;
  String? get jointTraumaCause => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentConditionStateCopyWith<CurrentConditionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentConditionStateCopyWith<$Res> {
  factory $CurrentConditionStateCopyWith(CurrentConditionState value,
          $Res Function(CurrentConditionState) then) =
      _$CurrentConditionStateCopyWithImpl<$Res, CurrentConditionState>;
  @useResult
  $Res call(
      {Map<String, bool> illnessHistory,
      String? otherIllness,
      IllnessDurationInput illnessDurationInput,
      ExerciseDurationInput exerciseDurationInput,
      String? jointTraumaCause});
}

/// @nodoc
class _$CurrentConditionStateCopyWithImpl<$Res,
        $Val extends CurrentConditionState>
    implements $CurrentConditionStateCopyWith<$Res> {
  _$CurrentConditionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illnessHistory = null,
    Object? otherIllness = freezed,
    Object? illnessDurationInput = null,
    Object? exerciseDurationInput = null,
    Object? jointTraumaCause = freezed,
  }) {
    return _then(_value.copyWith(
      illnessHistory: null == illnessHistory
          ? _value.illnessHistory
          : illnessHistory // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      otherIllness: freezed == otherIllness
          ? _value.otherIllness
          : otherIllness // ignore: cast_nullable_to_non_nullable
              as String?,
      illnessDurationInput: null == illnessDurationInput
          ? _value.illnessDurationInput
          : illnessDurationInput // ignore: cast_nullable_to_non_nullable
              as IllnessDurationInput,
      exerciseDurationInput: null == exerciseDurationInput
          ? _value.exerciseDurationInput
          : exerciseDurationInput // ignore: cast_nullable_to_non_nullable
              as ExerciseDurationInput,
      jointTraumaCause: freezed == jointTraumaCause
          ? _value.jointTraumaCause
          : jointTraumaCause // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentConditionStateCopyWith<$Res>
    implements $CurrentConditionStateCopyWith<$Res> {
  factory _$$_CurrentConditionStateCopyWith(_$_CurrentConditionState value,
          $Res Function(_$_CurrentConditionState) then) =
      __$$_CurrentConditionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, bool> illnessHistory,
      String? otherIllness,
      IllnessDurationInput illnessDurationInput,
      ExerciseDurationInput exerciseDurationInput,
      String? jointTraumaCause});
}

/// @nodoc
class __$$_CurrentConditionStateCopyWithImpl<$Res>
    extends _$CurrentConditionStateCopyWithImpl<$Res, _$_CurrentConditionState>
    implements _$$_CurrentConditionStateCopyWith<$Res> {
  __$$_CurrentConditionStateCopyWithImpl(_$_CurrentConditionState _value,
      $Res Function(_$_CurrentConditionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illnessHistory = null,
    Object? otherIllness = freezed,
    Object? illnessDurationInput = null,
    Object? exerciseDurationInput = null,
    Object? jointTraumaCause = freezed,
  }) {
    return _then(_$_CurrentConditionState(
      illnessHistory: null == illnessHistory
          ? _value._illnessHistory
          : illnessHistory // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      otherIllness: freezed == otherIllness
          ? _value.otherIllness
          : otherIllness // ignore: cast_nullable_to_non_nullable
              as String?,
      illnessDurationInput: null == illnessDurationInput
          ? _value.illnessDurationInput
          : illnessDurationInput // ignore: cast_nullable_to_non_nullable
              as IllnessDurationInput,
      exerciseDurationInput: null == exerciseDurationInput
          ? _value.exerciseDurationInput
          : exerciseDurationInput // ignore: cast_nullable_to_non_nullable
              as ExerciseDurationInput,
      jointTraumaCause: freezed == jointTraumaCause
          ? _value.jointTraumaCause
          : jointTraumaCause // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CurrentConditionState implements _CurrentConditionState {
  const _$_CurrentConditionState(
      {final Map<String, bool> illnessHistory = const {
        'asam_urat': false,
        'hipertensi': false,
        'diabetes': false
      },
      this.otherIllness = null,
      this.illnessDurationInput = const IllnessDurationInput.pure(),
      this.exerciseDurationInput = const ExerciseDurationInput.pure(),
      this.jointTraumaCause})
      : _illnessHistory = illnessHistory;

  final Map<String, bool> _illnessHistory;
  @override
  @JsonKey()
  Map<String, bool> get illnessHistory {
    if (_illnessHistory is EqualUnmodifiableMapView) return _illnessHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_illnessHistory);
  }

  @override
  @JsonKey()
  final String? otherIllness;
  @override
  @JsonKey()
  final IllnessDurationInput illnessDurationInput;
  @override
  @JsonKey()
  final ExerciseDurationInput exerciseDurationInput;
  @override
  final String? jointTraumaCause;

  @override
  String toString() {
    return 'CurrentConditionState(illnessHistory: $illnessHistory, otherIllness: $otherIllness, illnessDurationInput: $illnessDurationInput, exerciseDurationInput: $exerciseDurationInput, jointTraumaCause: $jointTraumaCause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentConditionState &&
            const DeepCollectionEquality()
                .equals(other._illnessHistory, _illnessHistory) &&
            (identical(other.otherIllness, otherIllness) ||
                other.otherIllness == otherIllness) &&
            (identical(other.illnessDurationInput, illnessDurationInput) ||
                other.illnessDurationInput == illnessDurationInput) &&
            (identical(other.exerciseDurationInput, exerciseDurationInput) ||
                other.exerciseDurationInput == exerciseDurationInput) &&
            (identical(other.jointTraumaCause, jointTraumaCause) ||
                other.jointTraumaCause == jointTraumaCause));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_illnessHistory),
      otherIllness,
      illnessDurationInput,
      exerciseDurationInput,
      jointTraumaCause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentConditionStateCopyWith<_$_CurrentConditionState> get copyWith =>
      __$$_CurrentConditionStateCopyWithImpl<_$_CurrentConditionState>(
          this, _$identity);
}

abstract class _CurrentConditionState implements CurrentConditionState {
  const factory _CurrentConditionState(
      {final Map<String, bool> illnessHistory,
      final String? otherIllness,
      final IllnessDurationInput illnessDurationInput,
      final ExerciseDurationInput exerciseDurationInput,
      final String? jointTraumaCause}) = _$_CurrentConditionState;

  @override
  Map<String, bool> get illnessHistory;
  @override
  String? get otherIllness;
  @override
  IllnessDurationInput get illnessDurationInput;
  @override
  ExerciseDurationInput get exerciseDurationInput;
  @override
  String? get jointTraumaCause;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentConditionStateCopyWith<_$_CurrentConditionState> get copyWith =>
      throw _privateConstructorUsedError;
}
