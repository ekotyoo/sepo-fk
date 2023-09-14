// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pill_count_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Medicine {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicineCopyWith<Medicine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineCopyWith<$Res> {
  factory $MedicineCopyWith(Medicine value, $Res Function(Medicine) then) =
      _$MedicineCopyWithImpl<$Res, Medicine>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$MedicineCopyWithImpl<$Res, $Val extends Medicine>
    implements $MedicineCopyWith<$Res> {
  _$MedicineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineCopyWith<$Res> implements $MedicineCopyWith<$Res> {
  factory _$$_MedicineCopyWith(
          _$_Medicine value, $Res Function(_$_Medicine) then) =
      __$$_MedicineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_MedicineCopyWithImpl<$Res>
    extends _$MedicineCopyWithImpl<$Res, _$_Medicine>
    implements _$$_MedicineCopyWith<$Res> {
  __$$_MedicineCopyWithImpl(
      _$_Medicine _value, $Res Function(_$_Medicine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Medicine(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Medicine implements _Medicine {
  const _$_Medicine({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'Medicine(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Medicine &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineCopyWith<_$_Medicine> get copyWith =>
      __$$_MedicineCopyWithImpl<_$_Medicine>(this, _$identity);
}

abstract class _Medicine implements Medicine {
  const factory _Medicine({required final String name}) = _$_Medicine;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineCopyWith<_$_Medicine> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicineWithCount _$MedicineWithCountFromJson(Map<String, dynamic> json) {
  return _MedicineWithCount.fromJson(json);
}

/// @nodoc
mixin _$MedicineWithCount {
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineWithCountCopyWith<MedicineWithCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineWithCountCopyWith<$Res> {
  factory $MedicineWithCountCopyWith(
          MedicineWithCount value, $Res Function(MedicineWithCount) then) =
      _$MedicineWithCountCopyWithImpl<$Res, MedicineWithCount>;
  @useResult
  $Res call({String name, int count});
}

/// @nodoc
class _$MedicineWithCountCopyWithImpl<$Res, $Val extends MedicineWithCount>
    implements $MedicineWithCountCopyWith<$Res> {
  _$MedicineWithCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineWithCountCopyWith<$Res>
    implements $MedicineWithCountCopyWith<$Res> {
  factory _$$_MedicineWithCountCopyWith(_$_MedicineWithCount value,
          $Res Function(_$_MedicineWithCount) then) =
      __$$_MedicineWithCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int count});
}

/// @nodoc
class __$$_MedicineWithCountCopyWithImpl<$Res>
    extends _$MedicineWithCountCopyWithImpl<$Res, _$_MedicineWithCount>
    implements _$$_MedicineWithCountCopyWith<$Res> {
  __$$_MedicineWithCountCopyWithImpl(
      _$_MedicineWithCount _value, $Res Function(_$_MedicineWithCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_$_MedicineWithCount(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicineWithCount implements _MedicineWithCount {
  const _$_MedicineWithCount({required this.name, this.count = 0});

  factory _$_MedicineWithCount.fromJson(Map<String, dynamic> json) =>
      _$$_MedicineWithCountFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'MedicineWithCount(name: $name, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineWithCount &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineWithCountCopyWith<_$_MedicineWithCount> get copyWith =>
      __$$_MedicineWithCountCopyWithImpl<_$_MedicineWithCount>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineWithCountToJson(
      this,
    );
  }
}

abstract class _MedicineWithCount implements MedicineWithCount {
  const factory _MedicineWithCount(
      {required final String name, final int count}) = _$_MedicineWithCount;

  factory _MedicineWithCount.fromJson(Map<String, dynamic> json) =
      _$_MedicineWithCount.fromJson;

  @override
  String get name;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineWithCountCopyWith<_$_MedicineWithCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PillCountState {
  List<Medicine> get medicineUsed => throw _privateConstructorUsedError;
  MedicineSource? get medicineSource => throw _privateConstructorUsedError;
  MedicineBoughtTime? get medicineBoughtTime =>
      throw _privateConstructorUsedError;
  DateInput get medicineBoughtDateInput => throw _privateConstructorUsedError;
  List<MedicineWithCount> get medicineBefore =>
      throw _privateConstructorUsedError;
  List<MedicineWithCount> get medicineAfter =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PillCountStateCopyWith<PillCountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PillCountStateCopyWith<$Res> {
  factory $PillCountStateCopyWith(
          PillCountState value, $Res Function(PillCountState) then) =
      _$PillCountStateCopyWithImpl<$Res, PillCountState>;
  @useResult
  $Res call(
      {List<Medicine> medicineUsed,
      MedicineSource? medicineSource,
      MedicineBoughtTime? medicineBoughtTime,
      DateInput medicineBoughtDateInput,
      List<MedicineWithCount> medicineBefore,
      List<MedicineWithCount> medicineAfter});
}

/// @nodoc
class _$PillCountStateCopyWithImpl<$Res, $Val extends PillCountState>
    implements $PillCountStateCopyWith<$Res> {
  _$PillCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineUsed = null,
    Object? medicineSource = freezed,
    Object? medicineBoughtTime = freezed,
    Object? medicineBoughtDateInput = null,
    Object? medicineBefore = null,
    Object? medicineAfter = null,
  }) {
    return _then(_value.copyWith(
      medicineUsed: null == medicineUsed
          ? _value.medicineUsed
          : medicineUsed // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
      medicineSource: freezed == medicineSource
          ? _value.medicineSource
          : medicineSource // ignore: cast_nullable_to_non_nullable
              as MedicineSource?,
      medicineBoughtTime: freezed == medicineBoughtTime
          ? _value.medicineBoughtTime
          : medicineBoughtTime // ignore: cast_nullable_to_non_nullable
              as MedicineBoughtTime?,
      medicineBoughtDateInput: null == medicineBoughtDateInput
          ? _value.medicineBoughtDateInput
          : medicineBoughtDateInput // ignore: cast_nullable_to_non_nullable
              as DateInput,
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
abstract class _$$_PillCountStateCopyWith<$Res>
    implements $PillCountStateCopyWith<$Res> {
  factory _$$_PillCountStateCopyWith(
          _$_PillCountState value, $Res Function(_$_PillCountState) then) =
      __$$_PillCountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Medicine> medicineUsed,
      MedicineSource? medicineSource,
      MedicineBoughtTime? medicineBoughtTime,
      DateInput medicineBoughtDateInput,
      List<MedicineWithCount> medicineBefore,
      List<MedicineWithCount> medicineAfter});
}

/// @nodoc
class __$$_PillCountStateCopyWithImpl<$Res>
    extends _$PillCountStateCopyWithImpl<$Res, _$_PillCountState>
    implements _$$_PillCountStateCopyWith<$Res> {
  __$$_PillCountStateCopyWithImpl(
      _$_PillCountState _value, $Res Function(_$_PillCountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineUsed = null,
    Object? medicineSource = freezed,
    Object? medicineBoughtTime = freezed,
    Object? medicineBoughtDateInput = null,
    Object? medicineBefore = null,
    Object? medicineAfter = null,
  }) {
    return _then(_$_PillCountState(
      medicineUsed: null == medicineUsed
          ? _value._medicineUsed
          : medicineUsed // ignore: cast_nullable_to_non_nullable
              as List<Medicine>,
      medicineSource: freezed == medicineSource
          ? _value.medicineSource
          : medicineSource // ignore: cast_nullable_to_non_nullable
              as MedicineSource?,
      medicineBoughtTime: freezed == medicineBoughtTime
          ? _value.medicineBoughtTime
          : medicineBoughtTime // ignore: cast_nullable_to_non_nullable
              as MedicineBoughtTime?,
      medicineBoughtDateInput: null == medicineBoughtDateInput
          ? _value.medicineBoughtDateInput
          : medicineBoughtDateInput // ignore: cast_nullable_to_non_nullable
              as DateInput,
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

class _$_PillCountState implements _PillCountState {
  const _$_PillCountState(
      {final List<Medicine> medicineUsed = const [],
      this.medicineSource = null,
      this.medicineBoughtTime = null,
      this.medicineBoughtDateInput = const DateInput.pure(),
      final List<MedicineWithCount> medicineBefore = const [],
      final List<MedicineWithCount> medicineAfter = const []})
      : _medicineUsed = medicineUsed,
        _medicineBefore = medicineBefore,
        _medicineAfter = medicineAfter;

  final List<Medicine> _medicineUsed;
  @override
  @JsonKey()
  List<Medicine> get medicineUsed {
    if (_medicineUsed is EqualUnmodifiableListView) return _medicineUsed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicineUsed);
  }

  @override
  @JsonKey()
  final MedicineSource? medicineSource;
  @override
  @JsonKey()
  final MedicineBoughtTime? medicineBoughtTime;
  @override
  @JsonKey()
  final DateInput medicineBoughtDateInput;
  final List<MedicineWithCount> _medicineBefore;
  @override
  @JsonKey()
  List<MedicineWithCount> get medicineBefore {
    if (_medicineBefore is EqualUnmodifiableListView) return _medicineBefore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicineBefore);
  }

  final List<MedicineWithCount> _medicineAfter;
  @override
  @JsonKey()
  List<MedicineWithCount> get medicineAfter {
    if (_medicineAfter is EqualUnmodifiableListView) return _medicineAfter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicineAfter);
  }

  @override
  String toString() {
    return 'PillCountState(medicineUsed: $medicineUsed, medicineSource: $medicineSource, medicineBoughtTime: $medicineBoughtTime, medicineBoughtDateInput: $medicineBoughtDateInput, medicineBefore: $medicineBefore, medicineAfter: $medicineAfter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PillCountState &&
            const DeepCollectionEquality()
                .equals(other._medicineUsed, _medicineUsed) &&
            (identical(other.medicineSource, medicineSource) ||
                other.medicineSource == medicineSource) &&
            (identical(other.medicineBoughtTime, medicineBoughtTime) ||
                other.medicineBoughtTime == medicineBoughtTime) &&
            (identical(
                    other.medicineBoughtDateInput, medicineBoughtDateInput) ||
                other.medicineBoughtDateInput == medicineBoughtDateInput) &&
            const DeepCollectionEquality()
                .equals(other._medicineBefore, _medicineBefore) &&
            const DeepCollectionEquality()
                .equals(other._medicineAfter, _medicineAfter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_medicineUsed),
      medicineSource,
      medicineBoughtTime,
      medicineBoughtDateInput,
      const DeepCollectionEquality().hash(_medicineBefore),
      const DeepCollectionEquality().hash(_medicineAfter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PillCountStateCopyWith<_$_PillCountState> get copyWith =>
      __$$_PillCountStateCopyWithImpl<_$_PillCountState>(this, _$identity);
}

abstract class _PillCountState implements PillCountState {
  const factory _PillCountState(
      {final List<Medicine> medicineUsed,
      final MedicineSource? medicineSource,
      final MedicineBoughtTime? medicineBoughtTime,
      final DateInput medicineBoughtDateInput,
      final List<MedicineWithCount> medicineBefore,
      final List<MedicineWithCount> medicineAfter}) = _$_PillCountState;

  @override
  List<Medicine> get medicineUsed;
  @override
  MedicineSource? get medicineSource;
  @override
  MedicineBoughtTime? get medicineBoughtTime;
  @override
  DateInput get medicineBoughtDateInput;
  @override
  List<MedicineWithCount> get medicineBefore;
  @override
  List<MedicineWithCount> get medicineAfter;
  @override
  @JsonKey(ignore: true)
  _$$_PillCountStateCopyWith<_$_PillCountState> get copyWith =>
      throw _privateConstructorUsedError;
}
