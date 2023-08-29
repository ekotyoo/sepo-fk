import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_state.freezed.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState({
    @Default(false) bool verifying,
    String? successMessage,
    String? errorMessage,
  }) = _EmailVerificationState;
}
