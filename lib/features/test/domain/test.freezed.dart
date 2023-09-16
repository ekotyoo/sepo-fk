// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Test _$TestFromJson(Map<String, dynamic> json) {
  return _Test.fromJson(json);
}

/// @nodoc
mixin _$Test {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'done_date')
  @TimestampSerializer()
  DateTime? get doneDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'locked_until_date')
  @TimestampSerializer()
  DateTime? get lockedUntil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestCopyWith<Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res, Test>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'done_date') @TimestampSerializer() DateTime? doneDate,
      @JsonKey(name: 'locked_until_date')
      @TimestampSerializer()
      DateTime? lockedUntil});
}

/// @nodoc
class _$TestCopyWithImpl<$Res, $Val extends Test>
    implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? doneDate = freezed,
    Object? lockedUntil = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      doneDate: freezed == doneDate
          ? _value.doneDate
          : doneDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lockedUntil: freezed == lockedUntil
          ? _value.lockedUntil
          : lockedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$$_TestCopyWith(_$_Test value, $Res Function(_$_Test) then) =
      __$$_TestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'done_date') @TimestampSerializer() DateTime? doneDate,
      @JsonKey(name: 'locked_until_date')
      @TimestampSerializer()
      DateTime? lockedUntil});
}

/// @nodoc
class __$$_TestCopyWithImpl<$Res> extends _$TestCopyWithImpl<$Res, _$_Test>
    implements _$$_TestCopyWith<$Res> {
  __$$_TestCopyWithImpl(_$_Test _value, $Res Function(_$_Test) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? doneDate = freezed,
    Object? lockedUntil = freezed,
  }) {
    return _then(_$_Test(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      doneDate: freezed == doneDate
          ? _value.doneDate
          : doneDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lockedUntil: freezed == lockedUntil
          ? _value.lockedUntil
          : lockedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Test implements _Test {
  const _$_Test(
      {required this.id,
      required this.title,
      @JsonKey(name: 'done_date') @TimestampSerializer() this.doneDate,
      @JsonKey(name: 'locked_until_date')
      @TimestampSerializer()
      this.lockedUntil});

  factory _$_Test.fromJson(Map<String, dynamic> json) => _$$_TestFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'done_date')
  @TimestampSerializer()
  final DateTime? doneDate;
  @override
  @JsonKey(name: 'locked_until_date')
  @TimestampSerializer()
  final DateTime? lockedUntil;

  @override
  String toString() {
    return 'Test(id: $id, title: $title, doneDate: $doneDate, lockedUntil: $lockedUntil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Test &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.doneDate, doneDate) ||
                other.doneDate == doneDate) &&
            (identical(other.lockedUntil, lockedUntil) ||
                other.lockedUntil == lockedUntil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, doneDate, lockedUntil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestCopyWith<_$_Test> get copyWith =>
      __$$_TestCopyWithImpl<_$_Test>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestToJson(
      this,
    );
  }
}

abstract class _Test implements Test {
  const factory _Test(
      {required final int id,
      required final String title,
      @JsonKey(name: 'done_date')
      @TimestampSerializer()
      final DateTime? doneDate,
      @JsonKey(name: 'locked_until_date')
      @TimestampSerializer()
      final DateTime? lockedUntil}) = _$_Test;

  factory _Test.fromJson(Map<String, dynamic> json) = _$_Test.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'done_date')
  @TimestampSerializer()
  DateTime? get doneDate;
  @override
  @JsonKey(name: 'locked_until_date')
  @TimestampSerializer()
  DateTime? get lockedUntil;
  @override
  @JsonKey(ignore: true)
  _$$_TestCopyWith<_$_Test> get copyWith => throw _privateConstructorUsedError;
}
