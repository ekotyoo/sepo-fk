import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/name_text_input.dart';
import '../../models/email_text_input.dart';
import '../../models/password_text_input.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(NameTextInput.pure()) NameTextInput nameTextInput,
    @Default(EmailTextInput.pure()) EmailTextInput emailTextInput,
    @Default(PasswordTextInput.pure()) PasswordTextInput passwordTextInput,
    @Default(false) bool validated,
    @Default(false) bool isSubmitting,
    String? successMessage,
    String? errorMessage,
  }) = _RegisterState;
}
