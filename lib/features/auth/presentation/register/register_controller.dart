import 'package:formz/formz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/auth_repository.dart';
import '../../models/email_text_input.dart';
import '../../models/password_text_input.dart';
import '../../../../common/models/name_text_input.dart';
import 'register_state.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  RegisterState build() => const RegisterState();

  void onNameChange(String value) {
    final name = NameTextInput.dirty(value: value);
    state = state.copyWith(
      nameTextInput: name,
      validated: Formz.validate([
        name,
        state.passwordTextInput,
        state.emailTextInput,
      ]),
    );
  }

  void onEmailChange(String value) {
    final email = EmailTextInput.dirty(value: value);
    state = state.copyWith(
      emailTextInput: email,
      validated: Formz.validate([
        email,
        state.passwordTextInput,
        state.nameTextInput,
      ]),
    );
  }

  void onPasswordChange(String value) {
    final password = PasswordTextInput.dirty(value: value);
    state = state.copyWith(
      passwordTextInput: password,
      validated: Formz.validate([
        password,
        state.nameTextInput,
        state.emailTextInput,
      ]),
    );
  }

  void setSuccessMessage(String? message) =>
      state = state.copyWith(successMessage: message);

  void setErrorMessage(String? message) =>
      state = state.copyWith(errorMessage: message);

  void onSubmit() async {
    state = state.copyWith(isSubmitting: true);

    final repository = ref.read(authRepositoryProvider);

    final result = await repository.register(
      name: state.nameTextInput.value,
      email: state.emailTextInput.value,
      password: state.passwordTextInput.value,
    );

    result.fold(
      (l) => setErrorMessage(l.message),
      (r) => setSuccessMessage('Register berhasil, silahkan cek email untuk memverifikasi akun'),
    );

    state = state.copyWith(isSubmitting: false);
  }
}
