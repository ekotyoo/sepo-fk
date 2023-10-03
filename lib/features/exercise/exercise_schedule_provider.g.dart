// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_schedule_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseRecord _$$_ExerciseRecordFromJson(Map<String, dynamic> json) =>
    _$_ExerciseRecord(
      week: json['week'] as int,
      day: json['day'] as int,
    );

Map<String, dynamic> _$$_ExerciseRecordToJson(_$_ExerciseRecord instance) =>
    <String, dynamic>{
      'week': instance.week,
      'day': instance.day,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getExerciseRecordsHash() =>
    r'eeba60a9908268c1f80b99a6761cc837aee74faf';

/// See also [getExerciseRecords].
@ProviderFor(getExerciseRecords)
final getExerciseRecordsProvider =
    AutoDisposeFutureProvider<List<ExerciseRecord>>.internal(
  getExerciseRecords,
  name: r'getExerciseRecordsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getExerciseRecordsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetExerciseRecordsRef
    = AutoDisposeFutureProviderRef<List<ExerciseRecord>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
