// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Training.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  String get name => throw _privateConstructorUsedError;
  ExerciseType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_or_repetition')
  int get durationOrRepetition => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {String name,
      ExerciseType type,
      @JsonKey(name: 'duration_or_repetition') int durationOrRepetition,
      int number,
      String image});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? durationOrRepetition = null,
    Object? number = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      durationOrRepetition: null == durationOrRepetition
          ? _value.durationOrRepetition
          : durationOrRepetition // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrainingCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$$_TrainingCopyWith(
          _$_Training value, $Res Function(_$_Training) then) =
      __$$_TrainingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      ExerciseType type,
      @JsonKey(name: 'duration_or_repetition') int durationOrRepetition,
      int number,
      String image});
}

/// @nodoc
class __$$_TrainingCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$_Training>
    implements _$$_TrainingCopyWith<$Res> {
  __$$_TrainingCopyWithImpl(
      _$_Training _value, $Res Function(_$_Training) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? durationOrRepetition = null,
    Object? number = null,
    Object? image = null,
  }) {
    return _then(_$_Training(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      durationOrRepetition: null == durationOrRepetition
          ? _value.durationOrRepetition
          : durationOrRepetition // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Training implements _Training {
  const _$_Training(
      {required this.name,
      required this.type,
      @JsonKey(name: 'duration_or_repetition')
      required this.durationOrRepetition,
      required this.number,
      required this.image});

  factory _$_Training.fromJson(Map<String, dynamic> json) =>
      _$$_TrainingFromJson(json);

  @override
  final String name;
  @override
  final ExerciseType type;
  @override
  @JsonKey(name: 'duration_or_repetition')
  final int durationOrRepetition;
  @override
  final int number;
  @override
  final String image;

  @override
  String toString() {
    return 'Exercise(name: $name, type: $type, durationOrRepetition: $durationOrRepetition, number: $number, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Training &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.durationOrRepetition, durationOrRepetition) ||
                other.durationOrRepetition == durationOrRepetition) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, type, durationOrRepetition, number, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrainingCopyWith<_$_Training> get copyWith =>
      __$$_TrainingCopyWithImpl<_$_Training>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainingToJson(
      this,
    );
  }
}

abstract class _Training implements Exercise {
  const factory _Training(
      {required final String name,
      required final ExerciseType type,
      @JsonKey(name: 'duration_or_repetition')
      required final int durationOrRepetition,
      required final int number,
      required final String image}) = _$_Training;

  factory _Training.fromJson(Map<String, dynamic> json) = _$_Training.fromJson;

  @override
  String get name;
  @override
  ExerciseType get type;
  @override
  @JsonKey(name: 'duration_or_repetition')
  int get durationOrRepetition;
  @override
  int get number;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_TrainingCopyWith<_$_Training> get copyWith =>
      throw _privateConstructorUsedError;
}
