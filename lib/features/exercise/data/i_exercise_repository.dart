import 'package:fpdart/fpdart.dart';
import 'package:SEPO/features/exercise/exercise.dart';

import '../../../common/error/failure.dart';
import '../exercise_schedule_provider.dart';
import '../exercise_screen.dart';

abstract class IExerciseRepository {
  Future<Either<Failure, List<Exercise>>> getExercises(ExerciseLevel level, int week, int day);
  Future<Either<Failure, List<ExerciseRecord>>> getExerciseRecords(ExerciseLevel level);
  Future<Either<Failure, Unit>> postExerciseRecord(ExerciseLevel level, int week, int day);
}