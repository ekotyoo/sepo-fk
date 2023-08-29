import 'package:formz/formz.dart';

enum Gender {
  male,
  female;

  String getLabel() => switch(this) {
    male => 'Laki-laki',
    female => 'Perempuan'
  };
}

enum GenderInputError {
  empty;

  String getErrorMessage() =>
      switch (this) { empty => 'Jenis kelamin tidak boleh kosong' };
}

class GenderInput extends FormzInput<Gender?, GenderInputError> {
  const GenderInput.pure() : super.pure(null);

  const GenderInput.dirty({Gender? value}) : super.dirty(value);

  @override
  GenderInputError? validator(Gender? value) {
    if (value == null) return GenderInputError.empty;

    return null;
  }
}
