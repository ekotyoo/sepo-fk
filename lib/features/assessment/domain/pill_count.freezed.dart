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
  @JsonKey(name: 'medicine_used')
  List<String> get medicineUsed => throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_source')
  MedicineSource get medicineSource => throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_bought_time', defaultValue: null)
  MedicineBoughtTime? get medicineBoughtTime =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_bought_date', defaultValue: null)
  int? get medicineBoughtDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_before')
  List<MedicineWithCount> get medicineBefore =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'medicine_after')
  List<MedicineWithCount> get medicineAfter =>
      throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'medicine_used') List<String> medicineUsed,
      @JsonKey(name: 'medicine_source') MedicineSource medicineSource,
      @JsonKey(name: 'medicine_bought_time', defaultValue: null)
      MedicineBoughtTime? medicineBoughtTime,
      @JsonKey(name: 'medicine_bought_date', defaultValue: null)
      int? medicineBoughtDate,
      @JsonKey(name: 'medicine_before') List<MedicineWithCount> medicineBefore,
      @JsonKey(name: 'medicine_after') List<MedicineWithCount> medicineAfter});
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
    Object? medicineUsed = null,
    Object? medicineSource = null,
    Object? medicineBoughtTime = freezed,
    Object? medicineBoughtDate = freezed,
    Object? medicineBefore = null,
    Object? medicineAfter = null,
  }) {
    return _then(_value.copyWith(
      medicineUsed: null == medicineUsed
          ? _value.medicineUsed
          : medicineUsed // ignore: cast_nullable_to_non_nullable
              as List<String>,
      medicineSource: null == medicineSource
          ? _value.medicineSource
          : medicineSource // ignore: cast_nullable_to_non_nullable
              as MedicineSource,
      medicineBoughtTime: freezed == medicineBoughtTime
          ? _value.medicineBoughtTime
          : medicineBoughtTime // ignore: cast_nullable_to_non_nullable
              as MedicineBoughtTime?,
      medicineBoughtDate: freezed == medicineBoughtDate
          ? _value.medicineBoughtDate
          : medicineBoughtDate // ignore: cast_nullable_to_non_nullable
              as int?,
      medicineBefore: null == medicineBefore
          ? _value.medicineBefore
          : medicineBefore // ignore: cast_nullable_to_non_nullable
              as List<MedicineWithCount>,
      medicineAfter: null == medicineAfter
          ? _value.medicineAfter
          : medicineAfter // ignore: cast_nullable_to_non_nullable
              as List<MedicineWithCount>,
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
      {@JsonKey(name: 'medicine_used') List<String> medicineUsed,
      @JsonKey(name: 'medicine_source') MedicineSource medicineSource,
      @JsonKey(name: 'medicine_bought_time', defaultValue: null)
      MedicineBoughtTime? medicineBoughtTime,
      @JsonKey(name: 'medicine_bought_date', defaultValue: null)
      int? medicineBoughtDate,
      @JsonKey(name: 'medicine_before') List<MedicineWithCount> medicineBefore,
      @JsonKey(name: 'medicine_after') List<MedicineWithCount> medicineAfter});
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
    Object? medicineUsed = null,
    Object? medicineSource = null,
    Object? medicineBoughtTime = freezed,
    Object? medicineBoughtDate = freezed,
    Object? medicineBefore = null,
    Object? medicineAfter = null,
  }) {
    return _then(_$_PillCount(
      medicineUsed: null == medicineUsed
          ? _value._medicineUsed
          : medicineUsed // ignore: cast_nullable_to_non_nullable
              as List<String>,
      medicineSource: null == medicineSource
          ? _value.medicineSource
          : medicineSource // ignore: cast_nullable_to_non_nullable
              as MedicineSource,
      medicineBoughtTime: freezed == medicineBoughtTime
          ? _value.medicineBoughtTime
          : medicineBoughtTime // ignore: cast_nullable_to_non_nullable
              as MedicineBoughtTime?,
      medicineBoughtDate: freezed == medicineBoughtDate
          ? _value.medicineBoughtDate
          : medicineBoughtDate // ignore: cast_nullable_to_non_nullable
              as int?,
      medicineBefore: null == medicineBefore
          ? _value._medicineBefore
          : medicineBefore // ignore: cast_nullable_to_non_nullable
              as List<MedicineWithCount>,
      medicineAfter: null == medicineAfter
          ? _value._medicineAfter
          : medicineAfter // ignore: cast_nullable_to_non_nullable
              as List<MedicineWithCount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PillCount implements _PillCount {
  const _$_PillCount(
      {@JsonKey(name: 'medicine_used') required final List<String> medicineUsed,
      @JsonKey(name: 'medicine_source') required this.medicineSource,
      @JsonKey(name: 'medicine_bought_time', defaultValue: null)
      this.medicineBoughtTime,
      @JsonKey(name: 'medicine_bought_date', defaultValue: null)
      this.medicineBoughtDate,
      @JsonKey(name: 'medicine_before')
      required final List<MedicineWithCount> medicineBefore,
      @JsonKey(name: 'medicine_after')
      required final List<MedicineWithCount> medicineAfter})
      : _medicineUsed = medicineUsed,
        _medicineBefore = medicineBefore,
        _medicineAfter = medicineAfter;

  factory _$_PillCount.fromJson(Map<String, dynamic> json) =>
      _$$_PillCountFromJson(json);

  final List<String> _medicineUsed;
  @override
  @JsonKey(name: 'medicine_used')
  List<String> get medicineUsed {
    if (_medicineUsed is EqualUnmodifiableListView) return _medicineUsed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicineUsed);
  }

  @override
  @JsonKey(name: 'medicine_source')
  final MedicineSource medicineSource;
  @override
  @JsonKey(name: 'medicine_bought_time', defaultValue: null)
  final MedicineBoughtTime? medicineBoughtTime;
  @override
  @JsonKey(name: 'medicine_bought_date', defaultValue: null)
  final int? medicineBoughtDate;
  final List<MedicineWithCount> _medicineBefore;
  @override
  @JsonKey(name: 'medicine_before')
  List<MedicineWithCount> get medicineBefore {
    if (_medicineBefore is EqualUnmodifiableListView) return _medicineBefore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicineBefore);
  }

  final List<MedicineWithCount> _medicineAfter;
  @override
  @JsonKey(name: 'medicine_after')
  List<MedicineWithCount> get medicineAfter {
    if (_medicineAfter is EqualUnmodifiableListView) return _medicineAfter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicineAfter);
  }

  @override
  String toString() {
    return 'PillCount(medicineUsed: $medicineUsed, medicineSource: $medicineSource, medicineBoughtTime: $medicineBoughtTime, medicineBoughtDate: $medicineBoughtDate, medicineBefore: $medicineBefore, medicineAfter: $medicineAfter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PillCount &&
            const DeepCollectionEquality()
                .equals(other._medicineUsed, _medicineUsed) &&
            (identical(other.medicineSource, medicineSource) ||
                other.medicineSource == medicineSource) &&
            (identical(other.medicineBoughtTime, medicineBoughtTime) ||
                other.medicineBoughtTime == medicineBoughtTime) &&
            (identical(other.medicineBoughtDate, medicineBoughtDate) ||
                other.medicineBoughtDate == medicineBoughtDate) &&
            const DeepCollectionEquality()
                .equals(other._medicineBefore, _medicineBefore) &&
            const DeepCollectionEquality()
                .equals(other._medicineAfter, _medicineAfter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_medicineUsed),
      medicineSource,
      medicineBoughtTime,
      medicineBoughtDate,
      const DeepCollectionEquality().hash(_medicineBefore),
      const DeepCollectionEquality().hash(_medicineAfter));

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
      {@JsonKey(name: 'medicine_used') required final List<String> medicineUsed,
      @JsonKey(name: 'medicine_source')
      required final MedicineSource medicineSource,
      @JsonKey(name: 'medicine_bought_time', defaultValue: null)
      final MedicineBoughtTime? medicineBoughtTime,
      @JsonKey(name: 'medicine_bought_date', defaultValue: null)
      final int? medicineBoughtDate,
      @JsonKey(name: 'medicine_before')
      required final List<MedicineWithCount> medicineBefore,
      @JsonKey(name: 'medicine_after')
      required final List<MedicineWithCount> medicineAfter}) = _$_PillCount;

  factory _PillCount.fromJson(Map<String, dynamic> json) =
      _$_PillCount.fromJson;

  @override
  @JsonKey(name: 'medicine_used')
  List<String> get medicineUsed;
  @override
  @JsonKey(name: 'medicine_source')
  MedicineSource get medicineSource;
  @override
  @JsonKey(name: 'medicine_bought_time', defaultValue: null)
  MedicineBoughtTime? get medicineBoughtTime;
  @override
  @JsonKey(name: 'medicine_bought_date', defaultValue: null)
  int? get medicineBoughtDate;
  @override
  @JsonKey(name: 'medicine_before')
  List<MedicineWithCount> get medicineBefore;
  @override
  @JsonKey(name: 'medicine_after')
  List<MedicineWithCount> get medicineAfter;
  @override
  @JsonKey(ignore: true)
  _$$_PillCountCopyWith<_$_PillCount> get copyWith =>
      throw _privateConstructorUsedError;
}
