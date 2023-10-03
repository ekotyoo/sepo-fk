import 'package:fpdart/fpdart.dart';
import 'package:sepo_app/features/exercise/exercise.dart';

import '../../../common/error/failure.dart';
import '../exercise_schedule_provider.dart';

abstract class IExerciseRepository {
  Future<Either<Failure, List<Exercise>>> getExercises(int week, int day);
  Future<Either<Failure, List<ExerciseRecord>>> getExerciseRecords();
  Future<Either<Failure, Unit>> postExerciseRecord(int week, int day);
}