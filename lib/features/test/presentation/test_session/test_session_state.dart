import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/survey.dart';

part 'test_session_state.freezed.dart';

@freezed
class TestSessionState with _$TestSessionState {
  const factory TestSessionState({
    @Default(0) int questionNumber,
    required List<Question> questions,
    @Default(false) bool isLoading,
    String? successMessage,
    String? errorMessage
  }) = _TestSessionState;
}
