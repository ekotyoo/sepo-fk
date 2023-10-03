import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'data/exercise_repository.dart';
import 'exercise.dart';

part 'exercise_list_provider.g.dart';

@riverpod
Future<List<Exercise>> exerciseList(
  ExerciseListRef ref,
  int week,
  int day,
) async {
  final repo = ref.read(exerciseRepositoryProvider);
  final result = await repo.getExercises(week, day);
  return result.fold(
    (l) => [],
    (r) => r.sortWith((t) => t.number, Order.orderInt),
  );
}
