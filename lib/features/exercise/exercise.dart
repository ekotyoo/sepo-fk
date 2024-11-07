import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:SEPO/features/exercise/exercise_screen.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

enum ExerciseType {
  @JsonValue('duration')
  duration, 
  
  @JsonValue('repetition')
  repetition 
}

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String name,
    required ExerciseType type,
    @JsonKey(name: 'duration_or_repetition') required int durationOrRepetition,
    required int number,
    required String image,
    required ExerciseLevel level,
  }) = _Training;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}
