import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:SEPO/common/error/failure.dart';
import 'package:SEPO/common/services/http_client.dart';
import 'package:SEPO/features/exercise/data/i_exercise_repository.dart';
import 'package:SEPO/features/exercise/exercise.dart';
import 'package:SEPO/features/exercise/exercise_schedule_provider.dart';
import 'package:SEPO/features/exercise/exercise_screen.dart';
import '../../../common/error/network_exceptions.dart';

part 'exercise_repository.g.dart';

@riverpod
IExerciseRepository exerciseRepository(ExerciseRepositoryRef ref) {
  final client = ref.watch(httpClientProvider);
  return ExerciseRepository(client);
}

class ExerciseRepository implements IExerciseRepository {
  final HttpClient _client;

  ExerciseRepository(this._client);

  @override
  Future<Either<Failure, List<Exercise>>> getExercises(ExerciseLevel level, int week, int day) async {
    try {
      final response = await _client.get('/exercise/${level.getValue()}/$week/$day');
      final result = (response['data'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e))
          .toList();
      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, Unit>> postExerciseRecord(ExerciseLevel level, int week, int day) async {
    try {
      await _client.post('/exercise/${level.getValue()}/$week/$day');

      return right(unit);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, List<ExerciseRecord>>> getExerciseRecords(ExerciseLevel level) async {
    try {
      final response = await _client.get('/exercise/${level.getValue()}/records');
      final result = (response['data'] as List<dynamic>)
          .map((e) => ExerciseRecord.fromJson(e))
          .toList();
      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }
}