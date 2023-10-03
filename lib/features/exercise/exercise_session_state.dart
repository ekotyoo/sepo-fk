import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_session_state.freezed.dart';

@freezed
class ExerciseSessionState with _$ExerciseSessionState {
  const factory ExerciseSessionState({
    @Default(Duration.zero) Duration duration,
    @Default(false) bool isDone,
    @Default(false) bool isFinished,
    @Default(0) int currentExerciseIndex,
  }) = _ExerciseSessionState;
}
