// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentCondition _$CurrentConditionFromJson(Map<String, dynamic> json) {
  return _CurrentCondition.fromJson(json);
}

/// @nodoc
mixin _$CurrentCondition {
  @JsonKey(name: 'illness_history')
  List<String> get illnessHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'illness_duration')
  IllnessDuration get illnessDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'exercise_duration')
  ExerciseDuration get exerciseDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'joint_trauma_cause')
  String? get jointTraumaCause => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentConditionCopyWith<CurrentCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentConditionCopyWith<$Res> {
  factory $CurrentConditionCopyWith(
          CurrentCondition value, $Res Function(CurrentCondition) then) =
      _$CurrentConditionCopyWithImpl<$Res, CurrentCondition>;
  @useResult
  $Res call(
      {@JsonKey(name: 'illness_history') List<String> illnessHistory,
      @JsonKey(name: 'illness_duration') IllnessDuration illnessDuration,
      @JsonKey(name: 'exercise_duration') ExerciseDuration exerciseDuration,
      @JsonKey(name: 'joint_trauma_cause') String? jointTraumaCause});
}

/// @nodoc
class _$CurrentConditionCopyWithImpl<$Res, $Val extends CurrentCondition>
    implements $CurrentConditionCopyWith<$Res> {
  _$CurrentConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illnessHistory = null,
    Object? illnessDuration = null,
    Object? exerciseDuration = null,
    Object? jointTraumaCause = freezed,
  }) {
    return _then(_value.copyWith(
      illnessHistory: null == illnessHistory
          ? _value.illnessHistory
          : illnessHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      illnessDuration: null == illnessDuration
          ? _value.illnessDuration
          : illnessDuration // ignore: cast_nullable_to_non_nullable
              as IllnessDuration,
      exerciseDuration: null == exerciseDuration
          ? _value.exerciseDuration
          : exerciseDuration // ignore: cast_nullable_to_non_nullable
              as ExerciseDuration,
      jointTraumaCause: freezed == jointTraumaCause
          ? _value.jointTraumaCause
          : jointTraumaCause // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentConditionCopyWith<$Res>
    implements $CurrentConditionCopyWith<$Res> {
  factory _$$_CurrentConditionCopyWith(
          _$_CurrentCondition value, $Res Function(_$_CurrentCondition) then) =
      __$$_CurrentConditionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'illness_history') List<String> illnessHistory,
      @JsonKey(name: 'illness_duration') IllnessDuration illnessDuration,
      @JsonKey(name: 'exercise_duration') ExerciseDuration exerciseDuration,
      @JsonKey(name: 'joint_trauma_cause') String? jointTraumaCause});
}

/// @nodoc
class __$$_CurrentConditionCopyWithImpl<$Res>
    extends _$CurrentConditionCopyWithImpl<$Res, _$_CurrentCondition>
    implements _$$_CurrentConditionCopyWith<$Res> {
  __$$_CurrentConditionCopyWithImpl(
      _$_CurrentCondition _value, $Res Function(_$_CurrentCondition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illnessHistory = null,
    Object? illnessDuration = null,
    Object? exerciseDuration = null,
    Object? jointTraumaCause = freezed,
  }) {
    return _then(_$_CurrentCondition(
      illnessHistory: null == illnessHistory
          ? _value._illnessHistory
          : illnessHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      illnessDuration: null == illnessDuration
          ? _value.illnessDuration
          : illnessDuration // ignore: cast_nullable_to_non_nullable
              as IllnessDuration,
      exerciseDuration: null == exerciseDuration
          ? _value.exerciseDuration
          : exerciseDuration // ignore: cast_nullable_to_non_nullable
              as ExerciseDuration,
      jointTraumaCause: freezed == jointTraumaCause
          ? _value.jointTraumaCause
          : jointTraumaCause // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentCondition implements _CurrentCondition {
  const _$_CurrentCondition(
      {@JsonKey(name: 'illness_history')
      required final List<String> illnessHistory,
      @JsonKey(name: 'illness_duration') required this.illnessDuration,
      @JsonKey(name: 'exercise_duration') required this.exerciseDuration,
      @JsonKey(name: 'joint_trauma_cause') this.jointTraumaCause})
      : _illnessHistory = illnessHistory;

  factory _$_CurrentCondition.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentConditionFromJson(json);

  final List<String> _illnessHistory;
  @override
  @JsonKey(name: 'illness_history')
  List<String> get illnessHistory {
    if (_illnessHistory is EqualUnmodifiableListView) return _illnessHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_illnessHistory);
  }

  @override
  @JsonKey(name: 'illness_duration')
  final IllnessDuration illnessDuration;
  @override
  @JsonKey(name: 'exercise_duration')
  final ExerciseDuration exerciseDuration;
  @override
  @JsonKey(name: 'joint_trauma_cause')
  final String? jointTraumaCause;

  @override
  String toString() {
    return 'CurrentCondition(illnessHistory: $illnessHistory, illnessDuration: $illnessDuration, exerciseDuration: $exerciseDuration, jointTraumaCause: $jointTraumaCause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentCondition &&
            const DeepCollectionEquality()
                .equals(other._illnessHistory, _illnessHistory) &&
            (identical(other.illnessDuration, illnessDuration) ||
                other.illnessDuration == illnessDuration) &&
            (identical(other.exerciseDuration, exerciseDuration) ||
                other.exerciseDuration == exerciseDuration) &&
            (identical(other.jointTraumaCause, jointTraumaCause) ||
                other.jointTraumaCause == jointTraumaCause));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_illnessHistory),
      illnessDuration,
      exerciseDuration,
      jointTraumaCause);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentConditionCopyWith<_$_CurrentCondition> get copyWith =>
      __$$_CurrentConditionCopyWithImpl<_$_CurrentCondition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentConditionToJson(
      this,
    );
  }
}

abstract class _CurrentCondition implements CurrentCondition {
  const factory _CurrentCondition(
      {@JsonKey(name: 'illness_history')
      required final List<String> illnessHistory,
      @JsonKey(name: 'illness_duration')
      required final IllnessDuration illnessDuration,
      @JsonKey(name: 'exercise_duration')
      required final ExerciseDuration exerciseDuration,
      @JsonKey(name: 'joint_trauma_cause')
      final String? jointTraumaCause}) = _$_CurrentCondition;

  factory _CurrentCondition.fromJson(Map<String, dynamic> json) =
      _$_CurrentCondition.fromJson;

  @override
  @JsonKey(name: 'illness_history')
  List<String> get illnessHistory;
  @override
  @JsonKey(name: 'illness_duration')
  IllnessDuration get illnessDuration;
  @override
  @JsonKey(name: 'exercise_duration')
  ExerciseDuration get exerciseDuration;
  @override
  @JsonKey(name: 'joint_trauma_cause')
  String? get jointTraumaCause;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentConditionCopyWith<_$_CurrentCondition> get copyWith =>
      throw _privateConstructorUsedError;
}
