import 'package:formz/formz.dart';

enum IllnessDuration {
  lessThanAYear,
  moreThanAYear,
  moreThanThreeYear;

  String getLabel() => switch (this) {
        lessThanAYear => 'Kurang dari satu tahun',
        moreThanAYear => 'Lebih dari satu tahun',
        moreThanThreeYear => 'Lebih dari tiga tahun'
      };
}

enum IllnessDurationInputError {
  empty;

  String getErrorMessage() =>
      switch (this) { empty => 'Durasi sakit tidak boleh kosong' };
}

class IllnessDurationInput
    extends FormzInput<IllnessDuration?, IllnessDurationInputError> {
  const IllnessDurationInput.pure() : super.pure(null);

  const IllnessDurationInput.dirty({IllnessDuration? value})
      : super.dirty(value);

  @override
  IllnessDurationInputError? validator(IllnessDuration? value) {
    if (value == null) return IllnessDurationInputError.empty;

    return null;
  }
}
