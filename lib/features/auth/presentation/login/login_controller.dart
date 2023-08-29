import 'package:formz/formz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../auth_controller.dart';
import '../../data/auth_repository.dart';
import '../../models/email_text_input.dart';
import '../../models/password_login_text_input.dart';
import './login_state.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  LoginState build() => const LoginState();

  void onEmailChange(value) {
    final email = EmailTextInput.dirty(value: value);
    state = state.copyWith(
      emailTextInput: email,
      validated: Formz.validate([email, state.passwordTextInput]),
    );
  }

  void onPasswordChange(value) {
    final password = PasswordLoginTextInput.dirty(value: value);
    state = state.copyWith(
      passwordTextInput: password,
      validated: Formz.validate([password, state.emailTextInput]),
    );
  }

  void setSuccessMessage(String? message) =>
      state = state.copyWith(successMessage: message);

  void setErrorMessage(String? message) =>
      state = state.copyWith(errorMessage: message);

  void setShouldVerifyEmail(bool value) => state = state.copyWith(shouldVerifyEmail: value);

  Future<void> onSubmit() async {
    state = state.copyWith(isSubmitting: true);
    final repository = ref.read(authRepositoryProvider);

    final result = await repository.login(
      email: state.emailTextInput.value,
      password: state.passwordTextInput.value,
    );

    result.fold(
      (l) {
        if (l.cause is UserUnverifiedException) {
          setShouldVerifyEmail(true);
        }
        setErrorMessage(l.message);
      },
      (r) {
        ref.read(authControllerProvider.notifier).setAuthUser(r);
        setSuccessMessage('Login berhasil');
      },
    );

    state = state.copyWith(isSubmitting: false);
  }
}
