import 'package:freezed_annotation/freezed_annotation.dart';
import 'models/exercise_duration.dart';
import 'models/illness_duration_input.dart';

part 'current_condition_state.freezed.dart';

@freezed
class CurrentConditionState with _$CurrentConditionState {
  const factory CurrentConditionState({
    @Default([]) List<String> illnessHistory,
    @Default(IllnessDurationInput.pure()) illnessDurationInput,
    @Default(ExerciseDurationInput.pure()) exerciseDurationInput,
    String? jointTraumaCause,
  }) = _CurrentConditionState;
}