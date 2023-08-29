import 'package:formz/formz.dart';

import '../../../utils/string_validator.dart';

enum AddressInputError {
  empty;

  String getErrorMessage() {
    switch (this) {
      case empty:
        return 'Alamat tidak boleh kosong';
    }
  }
}

class AddressInput extends FormzInput<String, AddressInputError> {
  const AddressInput.pure() : super.pure('');

  const AddressInput.dirty({String value = ''}) : super.dirty(value);

  @override
  AddressInputError? validator(String value) {
    if (!NotEmptyInputValidator().isValid(value)) {
      return AddressInputError.empty;
    }

    return null;
  }
}
