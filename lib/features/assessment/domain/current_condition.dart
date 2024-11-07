import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/exercise_duration.dart';
import '../models/illness_duration_input.dart';

part 'current_condition.freezed.dart';
part 'current_condition.g.dart';

@freezed
class CurrentCondition with _$CurrentCondition {
  const factory CurrentCondition({
    @JsonKey(name: 'illness_history') required List<String> illnessHistory,
    @JsonKey(name: 'illness_duration') required IllnessDuration illnessDuration,
    @JsonKey(name: 'exercise_duration') required ExerciseDuration exerciseDuration,
    @JsonKey(name: 'joint_trauma_cause') String? jointTraumaCause,
}) = _CurrentCondition;

  factory CurrentCondition.fromJson(Map<String, Object?> json) => _$CurrentConditionFromJson(json);
}