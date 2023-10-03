// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_schedule_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseRecord _$ExerciseRecordFromJson(Map<String, dynamic> json) {
  return _ExerciseRecord.fromJson(json);
}

/// @nodoc
mixin _$ExerciseRecord {
  int get week => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseRecordCopyWith<ExerciseRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseRecordCopyWith<$Res> {
  factory $ExerciseRecordCopyWith(
          ExerciseRecord value, $Res Function(ExerciseRecord) then) =
      _$ExerciseRecordCopyWithImpl<$Res, ExerciseRecord>;
  @useResult
  $Res call({int week, int day});
}

/// @nodoc
class _$ExerciseRecordCopyWithImpl<$Res, $Val extends ExerciseRecord>
    implements $ExerciseRecordCopyWith<$Res> {
  _$ExerciseRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseRecordCopyWith<$Res>
    implements $ExerciseRecordCopyWith<$Res> {
  factory _$$_ExerciseRecordCopyWith(
          _$_ExerciseRecord value, $Res Function(_$_ExerciseRecord) then) =
      __$$_ExerciseRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int week, int day});
}

/// @nodoc
class __$$_ExerciseRecordCopyWithImpl<$Res>
    extends _$ExerciseRecordCopyWithImpl<$Res, _$_ExerciseRecord>
    implements _$$_ExerciseRecordCopyWith<$Res> {
  __$$_ExerciseRecordCopyWithImpl(
      _$_ExerciseRecord _value, $Res Function(_$_ExerciseRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = null,
    Object? day = null,
  }) {
    return _then(_$_ExerciseRecord(
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseRecord implements _ExerciseRecord {
  const _$_ExerciseRecord({required this.week, required this.day});

  factory _$_ExerciseRecord.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseRecordFromJson(json);

  @override
  final int week;
  @override
  final int day;

  @override
  String toString() {
    return 'ExerciseRecord(week: $week, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseRecord &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, week, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseRecordCopyWith<_$_ExerciseRecord> get copyWith =>
      __$$_ExerciseRecordCopyWithImpl<_$_ExerciseRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseRecordToJson(
      this,
    );
  }
}

abstract class _ExerciseRecord implements ExerciseRecord {
  const factory _ExerciseRecord(
      {required final int week, required final int day}) = _$_ExerciseRecord;

  factory _ExerciseRecord.fromJson(Map<String, dynamic> json) =
      _$_ExerciseRecord.fromJson;

  @override
  int get week;
  @override
  int get day;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseRecordCopyWith<_$_ExerciseRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
