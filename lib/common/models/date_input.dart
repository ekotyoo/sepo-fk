import 'package:formz/formz.dart';

enum DateInputError {
  empty;

  String getErrorMessage() {
    switch (this) {
      case empty:
        return 'Tanggal tidak boleh kosong';
    }
  }
}

class DateInput extends FormzInput<DateTime?, DateInputError> {
  const DateInput.pure(): super.pure(null);

  const DateInput.dirty({DateTime? value}): super.dirty(value);

  @override
  DateInputError? validator(DateTime? value) {
    if (value == null) return DateInputError.empty;

    return null;
  }
}