import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/features/exercise/data/exercise_repository.dart';

part 'exercise_schedule_provider.g.dart';

part 'exercise_schedule_provider.freezed.dart';

@freezed
class ExerciseRecord with _$ExerciseRecord {
  const factory ExerciseRecord({required int week, required int day}) =
      _ExerciseRecord;

  factory ExerciseRecord.fromJson(Map<String, dynamic> json) =>
      _$ExerciseRecordFromJson(json);
}

@riverpod
Future<List<ExerciseRecord>> getExerciseRecords(GetExerciseRecordsRef ref) async {
  final repo = ref.read(exerciseRepositoryProvider);
  final result = await repo.getExerciseRecords();

  return result.fold(
    (l) => [],
    (r) => r,
  );
}