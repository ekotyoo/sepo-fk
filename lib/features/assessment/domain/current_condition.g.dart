// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentCondition _$$_CurrentConditionFromJson(Map<String, dynamic> json) =>
    _$_CurrentCondition(
      illnessHistory: (json['illness_history'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      illnessDuration:
          $enumDecode(_$IllnessDurationEnumMap, json['illness_duration']),
      exerciseDuration:
          $enumDecode(_$ExerciseDurationEnumMap, json['exercise_duration']),
      jointTraumaCause: json['joint_trauma_cause'] as String?,
    );

Map<String, dynamic> _$$_CurrentConditionToJson(_$_CurrentCondition instance) =>
    <String, dynamic>{
      'illness_history': instance.illnessHistory,
      'illness_duration': _$IllnessDurationEnumMap[instance.illnessDuration]!,
      'exercise_duration':
          _$ExerciseDurationEnumMap[instance.exerciseDuration]!,
      'joint_trauma_cause': instance.jointTraumaCause,
    };

const _$IllnessDurationEnumMap = {
  IllnessDuration.lessThanAYear: 'lessThanAYear',
  IllnessDuration.moreThanAYear: 'moreThanAYear',
  IllnessDuration.moreThanThreeYear: 'moreThanThreeYear',
};

const _$ExerciseDurationEnumMap = {
  ExerciseDuration.lessThanThirtyMinute: 'lessThanThirtyMinute',
  ExerciseDuration.moreThanThirtyMinute: 'moreThanThirtyMinute',
  ExerciseDuration.never: 'never',
};
