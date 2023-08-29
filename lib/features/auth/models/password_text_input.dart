import 'package:formz/formz.dart';
import '../../../../utils/string_validator.dart';

enum PasswordTextInputError {
  empty,
  invalid;

  String getErrorMessage() {
    switch (this) {
      case empty:
        return 'Kata sandi tidak boleh kosong';
      case invalid:
        return 'Kata sandi terdiri dari 8 karakter';
    }
  }
}

class PasswordTextInput extends FormzInput<String, PasswordTextInputError> {
  const PasswordTextInput.pure() : super.pure('');

  const PasswordTextInput.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordTextInputError? validator(String value) {
    if (!NotEmptyInputValidator().isValid(value)) {
      return PasswordTextInputError.empty;
    }
    if (!PasswordInputValidator().isValid(value)) {
      return PasswordTextInputError.invalid;
    }

    return null;
  }
}
