// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Training _$$_TrainingFromJson(Map<String, dynamic> json) => _$_Training(
      name: json['name'] as String,
      type: $enumDecode(_$ExerciseTypeEnumMap, json['type']),
      durationOrRepetition: json['duration_or_repetition'] as int,
      number: json['number'] as int,
      image: json['image'] as String,
      level: $enumDecode(_$ExerciseLevelEnumMap, json['level']),
    );

Map<String, dynamic> _$$_TrainingToJson(_$_Training instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': _$ExerciseTypeEnumMap[instance.type]!,
      'duration_or_repetition': instance.durationOrRepetition,
      'number': instance.number,
      'image': instance.image,
      'level': _$ExerciseLevelEnumMap[instance.level]!,
    };

const _$ExerciseTypeEnumMap = {
  ExerciseType.duration: 'duration',
  ExerciseType.repetition: 'repetition',
};

const _$ExerciseLevelEnumMap = {
  ExerciseLevel.beginner: 'beginner',
  ExerciseLevel.normal: 'normal',
  ExerciseLevel.advance: 'advance',
};
