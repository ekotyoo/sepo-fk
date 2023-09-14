import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/features/test/data/test_repository.dart';
import 'package:sepo_app/features/test/presentation/test_intro/test_intro_controller.dart';
import 'package:sepo_app/features/test/presentation/test_session/test_session_state.dart';

import '../../domain/survey.dart';

part 'test_session_controller.g.dart';

@riverpod
class TestSessionController extends _$TestSessionController {
  late String testId;
  late String surveyId;

  @override
  Future<TestSessionState> build(String testId, String surveyId) async {
    this.testId = testId;
    this.surveyId = surveyId;

    final repo = ref.read(testRepositoryProvider);
    final result = await repo.getQuestions(surveyId);

    return result.fold(
      (l) => TestSessionState(questions: [], errorMessage: l.message),
      (r) => TestSessionState(questions: r),
    );
  }

  void onQuestionNumberChange(int value) {
    final oldState = state.requireValue;
    state = AsyncValue.data(oldState.copyWith(questionNumber: value));
  }

  void answerQuestion(Option option) {
    final oldState = state.requireValue;
    final offeredAnswer = OfferedAnswer(option: option);
    final updatedQuestion = oldState.questions[oldState.questionNumber]
        .copyWith(offeredAnswer: offeredAnswer);
    final newQuestions = [...oldState.questions];
    newQuestions[oldState.questionNumber] = updatedQuestion;

    state = AsyncValue.data(oldState.copyWith(questions: newQuestions));
  }

  void setErrorMessage(String? value) {
    final oldState = state.requireValue;
    state = AsyncValue.data(oldState.copyWith(errorMessage: value));
  }

  void setSuccessMessage(String? value) {
    final oldState = state.requireValue;
    state = AsyncValue.data(oldState.copyWith(successMessage: value));
  }

  void onSubmit() async {
    final oldState = state.requireValue;
    state = AsyncValue.data(oldState.copyWith(isLoading: true));

    final repo = ref.read(testRepositoryProvider);
    final questions = oldState.questions;

    if (questions.any((element) => element.offeredAnswer == null)) return;

    final result = await repo.postAnswers(testId: testId, questions: questions);

    result.fold(
      (l) => (l) {
        state = AsyncValue.data(oldState.copyWith(
            isLoading: false,
            successMessage: 'Gagal menyimpan jawaban, coba lagi nanti'));
      },
      (r) {
        ref
            .read(testIntroControllerProvider(testId).notifier)
            .incrementSurveyIndex();
        state = AsyncValue.data(oldState.copyWith(
            isLoading: false, successMessage: 'Jawaban berhasil disimpan'));
      },
    );
  }
}
