import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/auth_repository.dart';
import 'email_verification_state.dart';

part 'email_verification_controller.g.dart';

@riverpod
class EmailVerificationController extends _$EmailVerificationController {
  @override
  EmailVerificationState build() => const EmailVerificationState();

  void onSubmit({required String email, required String otp}) async {
    final repo = ref.watch(authRepositoryProvider);
    state = state.copyWith(verifying: true);

    final result = await repo.verifyEmail(email: email, otp: otp);
    result.fold(
      (l) => setErrorMessage(l.message),
      (r) => setSuccessMessage('Email berhasil diverifikasi, silahkan login dengan akun anda'),
    );
    state = state.copyWith(verifying: false);
  }

  void setSuccessMessage(String? message) =>
      state = state.copyWith(successMessage: message);

  void setErrorMessage(String? message) =>
      state = state.copyWith(successMessage: message);
}
