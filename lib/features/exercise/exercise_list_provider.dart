import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:SEPO/features/exercise/exercise_screen.dart';

import 'data/exercise_repository.dart';
import 'exercise.dart';

part 'exercise_list_provider.g.dart';

@riverpod
Future<List<Exercise>> exerciseList(
  ExerciseListRef ref,
  ExerciseLevel level,
  int week,
  int day,
) async {
  final repo = ref.read(exerciseRepositoryProvider);
  final result = await repo.getExercises(level, week, day);
  return result.fold(
    (l) => [],
    (r) => r.sortWith((t) => t.number, Order.orderInt),
  );
}
