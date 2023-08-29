import 'package:formz/formz.dart';

import '../../../utils/string_validator.dart';

enum PhoneInputError {
  empty;

  String getErrorMessage() {
    switch (this) {
      case empty:
        return 'Nomor handphone tidak boleh kosong';
    }
  }
}

class PhoneInput extends FormzInput<String, PhoneInputError> {
  const PhoneInput.pure() : super.pure('');

  const PhoneInput.dirty({String value = ''}) : super.dirty(value);

  @override
  PhoneInputError? validator(String value) {
    if (!NotEmptyInputValidator().isValid(value)) {
      return PhoneInputError.empty;
    }

    return null;
  }
}
