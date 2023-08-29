import 'package:formz/formz.dart';

import '../../../../utils/string_validator.dart';

enum EmailTextInputError {
  empty,
  invalid;

  String getErrorMessage() {
    switch (this) {
      case empty:
        return 'Email tidak boleh kosong';
      case invalid:
        return 'Email tidak valid';
    }
  }
}

class EmailTextInput extends FormzInput<String, EmailTextInputError> {
  const EmailTextInput.pure() : super.pure('');

  const EmailTextInput.dirty({String value = ''}) : super.dirty(value);

  @override
  EmailTextInputError? validator(String value) {
    if (!NotEmptyInputValidator().isValid(value)) {
      return EmailTextInputError.empty;
    }
    if (!EmailInputValidator().isValid(value)) {
      return EmailTextInputError.invalid;
    }

    return null;
  }
}
