import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/email_text_input.dart';
import '../../models/password_login_text_input.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(EmailTextInput.pure()) emailTextInput,
    @Default(PasswordLoginTextInput.pure()) passwordTextInput,
    @Default(false) validated,
    @Default(false) isSubmitting,
    @Default(false) bool shouldVerifyEmail,
    String? successMessage,
    String? errorMessage,
  }) = _LoginState;
}
