import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:SEPO/features/exercise/exercise.dart';
import 'package:SEPO/features/exercise/exercise_session_state.dart';

part 'exercise_session_controller.g.dart';

extension DurationExtensions on Duration {
  String formatDuration() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}

@riverpod
class ExerciseSessionController extends _$ExerciseSessionController {
  Timer? _timer;

  @override
  ExerciseSessionState build(List<Exercise> exercises) {
    if (exercises.isEmpty) return const ExerciseSessionState();

    final currentExercise = exercises[0];
    if (currentExercise.type == ExerciseType.duration) {
      initializeTimer();
      return ExerciseSessionState(
        duration: Duration(
          seconds: currentExercise.durationOrRepetition,
        ),
      );
    }

    return const ExerciseSessionState(
      isDone: true
    );
  }

  void initializeTimer() {
    ref.onDispose(() {
      _timer?.cancel();
    });
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (state.duration == Duration.zero) {
          timer.cancel();
          state = state.copyWith(
            isDone: true,
            isFinished: state.currentExerciseIndex == exercises.length - 1,
          );
        } else {
          state = state.copyWith(
            duration: state.duration - const Duration(seconds: 1),
          );
        }
      },
    );
  }

  void stopTimer() => _timer?.cancel();

  void goToNextExercise() {
    if (state.currentExerciseIndex < exercises.length - 1) {
      final nextIndex = state.currentExerciseIndex + 1;
      final nextExercise = exercises[nextIndex];

      if (nextExercise.type == ExerciseType.duration) {
        state = state.copyWith(
          isDone: false,
          duration: Duration(seconds: nextExercise.durationOrRepetition),
          currentExerciseIndex: nextIndex,
        );
        startTimer();
      } else {
        state = state.copyWith(
          isDone: true,
          duration: Duration.zero,
          currentExerciseIndex: nextIndex,
        );
      }
    } else {
      state = state.copyWith(isFinished: true);
    }
  }
}
