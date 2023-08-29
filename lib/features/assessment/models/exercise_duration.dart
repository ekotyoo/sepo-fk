import 'package:formz/formz.dart';

enum ExerciseDuration {
  lessThanThirtyMinute,
  moreThanThirtyMinute,
  never;

  String getLabel() => switch (this) {
    lessThanThirtyMinute => 'Kurang dari 30 menit',
    moreThanThirtyMinute => 'Lebih dari 30 menit',
    never => 'Tidak pernah berolahraga'
  };
}

enum ExerciseDurationInputError {
  empty;

  String getErrorMessage() =>
      switch (this) { empty => 'Durasi olahraga tidak boleh kosong' };
}

class ExerciseDurationInput
    extends FormzInput<ExerciseDuration?, ExerciseDurationInputError> {
  const ExerciseDurationInput.pure() : super.pure(null);

  const ExerciseDurationInput.dirty({ExerciseDuration? value})
      : super.dirty(value);

  @override
  ExerciseDurationInputError? validator(ExerciseDuration? value) {
    if (value == null) return ExerciseDurationInputError.empty;

    return null;
  }
}
