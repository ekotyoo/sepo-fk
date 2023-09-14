import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/survey.dart';

part 'test_intro_state.freezed.dart';

@freezed
class TestIntroState with _$TestIntroState {
  const factory TestIntroState({
    required List<Survey> surveys,
    @Default(false) isLoading,
    @Default(false) isFinished,
    int? currentSurveyIndex,
    String? successMessage,
    String? errorMessage,
  }) = _TestIntroState;
}
