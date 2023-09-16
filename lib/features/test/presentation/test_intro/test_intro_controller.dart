import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/features/test/data/test_repository.dart';
import 'package:sepo_app/features/test/presentation/test_intro/test_intro_state.dart';

part 'test_intro_controller.g.dart';

@riverpod
class TestIntroController extends _$TestIntroController {
  @override
  FutureOr<TestIntroState> build(String testId) async {
    final repo = ref.read(testRepositoryProvider);
    final result = await repo.getSurveys(testId);

    return result.fold(
      (l) => TestIntroState(surveys: [], errorMessage: l.message),
      (r) {
        int initialIndex = 0;
        for (var survey in r) {
          if (survey.isDone) initialIndex++;
        }

        return TestIntroState(
          currentSurveyIndex: initialIndex,
          surveys: r,
        );
      },
    );
  }

  void setSuccessMessage(String? message) {
    final oldState = state.requireValue;
    state = AsyncValue.data(oldState.copyWith(successMessage: message));
  }

  void setErrorMessage(String? message) {
    final oldState = state.requireValue;
    state = AsyncValue.data(oldState.copyWith(errorMessage: message));
  }

  void initSession() {
    final oldState = state.requireValue;
    if (oldState.surveys.isEmpty) return;
    state = AsyncValue.data(
      oldState.copyWith(
        currentSurveyIndex: 0,
      ),
    );
  }

  void incrementSurveyIndex() {
    final oldState = state.requireValue;
    if (oldState.currentSurveyIndex == null || oldState.surveys.isEmpty) return;
    if (oldState.currentSurveyIndex! < oldState.surveys.length - 1) {
      final newSurveys = [...oldState.surveys];
      newSurveys[oldState.currentSurveyIndex!] =
          oldState.surveys[oldState.currentSurveyIndex!].copyWith(isDone: true);
      state = AsyncValue.data(
        oldState.copyWith(
          currentSurveyIndex: oldState.currentSurveyIndex! + 1,
        ),
      );
    } else {
      state = AsyncValue.data(
        oldState.copyWith(isFinished: true),
      );
    }
  }
}
