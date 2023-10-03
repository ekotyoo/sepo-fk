// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pill_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PillCount _$PillCountFromJson(Map<String, dynamic> json) {
  return _PillCount.fromJson(json);
}

/// @nodoc
mixin _$PillCount {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_used')
  List<String>? get medicineUsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_source', defaultValue: null)
  MedicineSource? get medicineSource => throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_bought_time', defaultValue: null)
  MedicineBoughtTime? get medicineBoughtTime =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_bought_timestamp', defaultValue: null)
  int? get medicineBoughtTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_bought_date')
  @TimestampSerializer()
  DateTime? get medicineBoughtDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_before', defaultValue: null)
  List<MedicineWithCount>? get medicineBefore =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_after', defaultValue: null)
  List<MedicineWithCount>? get medicineAfter =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'done_date')
  @TimestampSerializer()
  DateTime? get doneDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'locked_until_date')
  @TimestampSerializer()
  DateTime? get lockedUntil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PillCountCopyWith<PillCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillCountCopyWith<$Res> {
  factory $PillCountCopyWith(PillCount value, $Res Function(PillCount) then) =
      _$PillCountCopyWithImpl<$Res, PillCount>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? number,
      @JsonKey(name: 'medicine_used') List<String>? medicineUsed,
      @JsonKey(name: 'medicine_source', defaultValue: null)
      MedicineSource? medicineSource,
      @JsonKey(name: 'medicine_bought_time', defaultValue: null)
      MedicineBoughtTime? medicineBoughtTime,
      @JsonKey(name: 'medicine_bought_timestamp', defaultValue: null)
      int? medicineBoughtTimestamp,
      @JsonKey(name: 'medicine_bought_date')
      @TimestampSerializer()
      DateTime? medicineBoughtDate,
      @JsonKey(name: 'medicine_before', defaultValue: null)
      List<MedicineWithCount>? medicineBefore,
      @JsonKey(name: 'medicine_after', defaultValue: null)
      List<MedicineWithCount>? medicineAfter,
      @JsonKey(name: 'done_date') @TimestampSerializer() DateTime? doneDate,
      @JsonKey(name: 'locked_until_date')
      @TimestampSerializer()
      DateTime? lockedUntil});
}

/// @nodoc
class _$PillCountCopyWithImpl<$Res, $Val extends PillCount>
    implements $PillCountCopyWith<$Res> {
  _$PillCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? medicineUsed = freezed,
    Object? medicineSource = freezed,
    Object? medicineBoughtTime = freezed,
    Object? medicineBoughtTimestamp = freezed,
    Object? medicineBoughtDate = freezed,
    Object? medicineBefore = freezed,
    Object? medicineAfter = freezed,
    Object? doneDate = freezed,
    Object? lockedUntil = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      medicineUsed: freezed == medicineUsed
          ? _value.medicineUsed
          : medicineUsed // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      medicineSource: freezed == medicineSource
          ? _value.medicineSource
          : medicineSource // ignore: cast_nullable_to_non_nullable
              as MedicineSource?,
      medicineBoughtTime: freezed == medicineBoughtTime
          ? _value.medicineBoughtTime
          : medicineBoughtTime // ignore: cast_nullable_to_non_nullable
              as MedicineBoughtTime?,
      medicineBoughtTimestamp: freezed == medicineBoughtTimestamp
          ? _value.medicineBoughtTimestamp
          : medicineBoughtTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      medicineBoughtDate: freezed == medicineBoughtDate
          ? _value.medicineBoughtDate
          : medicineBoughtDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      medicineBefore: freezed == medicineBefore
          ? _value.medicineBefore
          : medicineBefore // ignore: cast_nullable_to_non_nullable
              as List<MedicineWithCount>?,
      medicineAfter: freezed == medicineAfter
          ? _value.medicineAfter
          : medicineAfter // ignore: cast_nullable_to_non_nullable
              as List<MedicineWithCount>?,
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
abstract class _$$_PillCountCopyWith<$Res> implements $PillCountCopyWith<$Res> {
  factory _$$_PillCountCopyWith(
          _$_PillCount value, $Res Function(_$_PillCount) then) =
      __$$_PillCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? number,
      @JsonKey(name: 'medicine_used') List<String>? medicineUsed,
      @JsonKey(name: 'medicine_source', defaultValue: null)
      MedicineSource? medicineSource,
      @JsonKey(name: 'medicine_bought_time', defaultValue: null)
      MedicineBoughtTime? medicineBoughtTime,
      @JsonKey(name: 'medicine_bought_timestamp', defaultValue: null)
      int? medicineBoughtTimestamp,
      @JsonKey(name: 'medicine_bought_date')
      @TimestampSerializer()
      DateTime? medicineBoughtDate,
      @JsonKey(name: 'medicine_before', defaultValue: null)
      List<MedicineWithCount>? medicineBefore,
      @JsonKey(name: 'medicine_after', defaultValue: null)
      List<MedicineWithCount>? medicineAfter,
      @JsonKey(name: 'done_date') @TimestampSerializer() DateTime? doneDate,
      @JsonKey(name: 'locked_until_date')
      @TimestampSerializer()
      DateTime? lockedUntil});
}

/// @nodoc
class __$$_PillCountCopyWithImpl<$Res>
    extends _$PillCountCopyWithImpl<$Res, _$_PillCount>
    implements _$$_PillCountCopyWith<$Res> {
  __$$_PillCountCopyWithImpl(
      _$_PillCount _value, $Res Function(_$_PillCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? medicineUsed = freezed,
    Object? medicineSource = freezed,
    Object? medicineBoughtTime = freezed,
    Object? medicineBoughtTimestamp = freezed,
    Object? medicineBoughtDate = freezed,
    Object? medicineBefore = freezed,
    Object? medicineAfter = freezed,
    Object? doneDate = freezed,
    Object? lockedUntil = freezed,
  }) {
    return _then(_$_PillCount(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      medicineUsed: freezed == medicineUsed
          ? _value._medicineUsed
          : medicineUsed // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      medicineSource: freezed == medicineSource
          ? _value.medicineSource
          : medicineSource // ignore: cast_nullable_to_non_nullable
              as MedicineSource?,
      medicineBoughtTime: freezed == medicineBoughtTime
          ? _value.medicineBoughtTime
          : medicineBoughtTime // ignore: cast_nullable_to_non_nullable
              as MedicineBoughtTime?,
      medicineBoughtTimestamp: freezed == medicineBoughtTimestamp
          ? _value.medicineBoughtTimestamp
          : medicineBoughtTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      medicineBoughtDate: freezed == medicineBoughtDate
          ? _value.medicineBoughtDate
          : medicineBoughtDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      medicineBefore: freezed == medicineBefore
          ? _value._medicineBefore
          : medicineBefore // ignore: cast_nullable_to_non_nullable
              as List<MedicineWithCount>?,
      medicineAfter: freezed == medicineAfter
          ? _value._medicineAfter
          : medicineAfter // ignore: cast_nullable_to_non_nullable
              as List<MedicineWithCount>?,
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
class _$_PillCount implements _PillCount {
  const _$_PillCount(
      {this.id,
      this.name,
      this.number,
      @JsonKey(name: 'medicine_used') required final List<String>? medicineUsed,
      @JsonKey(name: 'medicine_source', defaultValue: null) this.medicineSource,
      @JsonKey(name: 'medicine_bought_time', defaultValue: null)
      this.medicineBoughtTime,
      @JsonKey(name: 'medicine_bought_timestamp', defaultValue: null)
      this.medicineBoughtTimestamp,
      @JsonKey(name: 'medicine_bought_date')
      @TimestampSerializer()
      this.medicineBoughtDate,
      @JsonKey(name: 'medicine_before', defaultValue: null)
      final List<MedicineWithCount>? medicineBefore,
      @JsonKey(name: 'medicine_after', defaultValue: null)
      final List<MedicineWithCount>? medicineAfter,
      @JsonKey(name: 'done_date') @TimestampSerializer() this.doneDate,
      @JsonKey(name: 'locked_until_date')
      @TimestampSerializer()
      this.lockedUntil})
      : _medicineUsed = medicineUsed,
        _medicineBefore = medicineBefore,
        _medicineAfter = medicineAfter;

  factory _$_PillCount.fromJson(Map<String, dynamic> json) =>
      _$$_PillCountFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? number;
  final List<String>? _medicineUsed;
  @override
  @JsonKey(name: 'medicine_used')
  List<String>? get medicineUsed {
    final value = _medicineUsed;
    if (value == null) return null;
    if (_medicineUsed is EqualUnmodifiableListView) return _medicineUsed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'medicine_source', defaultValue: null)
  final MedicineSource? medicineSource;
  @override
  @JsonKey(name: 'medicine_bought_time', defaultValue: null)
  final MedicineBoughtTime? medicineBoughtTime;
  @override
  @JsonKey(name: 'medicine_bought_timestamp', defaultValue: null)
  final int? medicineBoughtTimestamp;
  @override
  @JsonKey(name: 'medicine_bought_date')
  @TimestampSerializer()
  final DateTime? medicineBoughtDate;
  final List<MedicineWithCount>? _medicineBefore;
  @override
  @JsonKey(name: 'medicine_before', defaultValue: null)
  List<MedicineWithCount>? get medicineBefore {
    final value = _medicineBefore;
    if (value == null) return null;
    if (_medicineBefore is EqualUnmodifiableListView) return _medicineBefore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MedicineWithCount>? _medicineAfter;
  @override
  @JsonKey(name: 'medicine_after', defaultValue: null)
  List<MedicineWithCount>? get medicineAfter {
    final value = _medicineAfter;
    if (value == null) return null;
    if (_medicineAfter is EqualUnmodifiableListView) return _medicineAfter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'PillCount(id: $id, name: $name, number: $number, medicineUsed: $medicineUsed, medicineSource: $medicineSource, medicineBoughtTime: $medicineBoughtTime, medicineBoughtTimestamp: $medicineBoughtTimestamp, medicineBoughtDate: $medicineBoughtDate, medicineBefore: $medicineBefore, medicineAfter: $medicineAfter, doneDate: $doneDate, lockedUntil: $lockedUntil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PillCount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality()
                .equals(other._medicineUsed, _medicineUsed) &&
            (identical(other.medicineSource, medicineSource) ||
                other.medicineSource == medicineSource) &&
            (identical(other.medicineBoughtTime, medicineBoughtTime) ||
                other.medicineBoughtTime == medicineBoughtTime) &&
            (identical(
                    other.medicineBoughtTimestamp, medicineBoughtTimestamp) ||
                other.medicineBoughtTimestamp == medicineBoughtTimestamp) &&
            (identical(other.medicineBoughtDate, medicineBoughtDate) ||
                other.medicineBoughtDate == medicineBoughtDate) &&
            const DeepCollectionEquality()
                .equals(other._medicineBefore, _medicineBefore) &&
            const DeepCollectionEquality()
                .equals(other._medicineAfter, _medicineAfter) &&
            (identical(other.doneDate, doneDate) ||
                other.doneDate == doneDate) &&
            (identical(other.lockedUntil, lockedUntil) ||
                other.lockedUntil == lockedUntil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      number,
      const DeepCollectionEquality().hash(_medicineUsed),
      medicineSource,
      medicineBoughtTime,
      medicineBoughtTimestamp,
      medicineBoughtDate,
      const DeepCollectionEquality().hash(_medicineBefore),
      const DeepCollectionEquality().hash(_medicineAfter),
      doneDate,
      lockedUntil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PillCountCopyWith<_$_PillCount> get copyWith =>
      __$$_PillCountCopyWithImpl<_$_PillCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PillCountToJson(
      this,
    );
  }
}

abstract class _PillCount implements PillCount {
  const factory _PillCount(
      {final int? id,
      final String? name,
      final int? number,
      @JsonKey(name: 'medicine_used') required final List<String>? medicineUsed,
      @JsonKey(name: 'medicine_source', defaultValue: null)
      final MedicineSource? medicineSource,
      @JsonKey(name: 'medicine_bought_time', defaultValue: null)
      final MedicineBoughtTime? medicineBoughtTime,
      @JsonKey(name: 'medicine_bought_timestamp', defaultValue: null)
      final int? medicineBoughtTimestamp,
      @JsonKey(name: 'medicine_bought_date')
      @TimestampSerializer()
      final DateTime? medicineBoughtDate,
      @JsonKey(name: 'medicine_before', defaultValue: null)
      final List<MedicineWithCount>? medicineBefore,
      @JsonKey(name: 'medicine_after', defaultValue: null)
      final List<MedicineWithCount>? medicineAfter,
      @JsonKey(name: 'done_date')
      @TimestampSerializer()
      final DateTime? doneDate,
      @JsonKey(name: 'locked_until_date')
      @TimestampSerializer()
      final DateTime? lockedUntil}) = _$_PillCount;

  factory _PillCount.fromJson(Map<String, dynamic> json) =
      _$_PillCount.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get number;
  @override
  @JsonKey(name: 'medicine_used')
  List<String>? get medicineUsed;
  @override
  @JsonKey(name: 'medicine_source', defaultValue: null)
  MedicineSource? get medicineSource;
  @override
  @JsonKey(name: 'medicine_bought_time', defaultValue: null)
  MedicineBoughtTime? get medicineBoughtTime;
  @override
  @JsonKey(name: 'medicine_bought_timestamp', defaultValue: null)
  int? get medicineBoughtTimestamp;
  @override
  @JsonKey(name: 'medicine_bought_date')
  @TimestampSerializer()
  DateTime? get medicineBoughtDate;
  @override
  @JsonKey(name: 'medicine_before', defaultValue: null)
  List<MedicineWithCount>? get medicineBefore;
  @override
  @JsonKey(name: 'medicine_after', defaultValue: null)
  List<MedicineWithCount>? get medicineAfter;
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
  _$$_PillCountCopyWith<_$_PillCount> get copyWith =>
      throw _privateConstructorUsedError;
}
