import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:SEPO/features/exercise/data/exercise_repository.dart';
import 'package:SEPO/features/exercise/exercise_screen.dart';

import 'exercise_schedule_provider.dart';

part 'exercise_finish_controller.g.dart';

part 'exercise_finish_controller.freezed.dart';

@freezed
class ExerciseFinishState with _$ExerciseFinishState {
  const factory ExerciseFinishState(
      {@Default(false) bool isLoading,
      String? errorMessage,
      String? successMessage}) = _ExerciseFinishState;
}

@riverpod
class ExerciseFinishController extends _$ExerciseFinishController {
  @override
  ExerciseFinishState build() {
    return const ExerciseFinishState();
  }

  void onSubmit(ExerciseLevel level, int week, int day) async {
    state = state.copyWith(isLoading: true);
    final repo = ref.read(exerciseRepositoryProvider);
    final result = await repo.postExerciseRecord(level, week, day);
    result.fold(
      (l) => state = state.copyWith(
          isLoading: false, errorMessage: l.message, successMessage: null),
      (r) {
        ref.invalidate(getExerciseRecordsProvider);
        return state = state.copyWith(
          isLoading: false,
          successMessage: 'success',
          errorMessage: null,
        );
      },
    );
  }
}
