import 'package:formz/formz.dart';

import '../../../utils/string_validator.dart';

enum Education {
  sd,
  smp,
  sma,
  d3,
  s1s2;

  String getLabel() => switch (this) {
      sd => 'SD',
      smp => 'SMP',
      sma => 'SMA',
      d3 => 'D3',
      s1s2 => 'S1/S2'
    };
}

enum EducationInputError {
  empty;

  String getErrorMessage() => switch (this) {
      empty => 'Alamat tidak boleh kosong'
    };
}

class EducationInput extends FormzInput<Education?, EducationInputError> {
  const EducationInput.pure() : super.pure(null);

  const EducationInput.dirty({Education? value}) : super.dirty(value);

  @override
  EducationInputError? validator(Education? value) {
    if (value == null) {
      return EducationInputError.empty;
    }

    return null;
  }
}
