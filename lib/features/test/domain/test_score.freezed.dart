// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestScore _$TestScoreFromJson(Map<String, dynamic> json) {
  return _TestScore.fromJson(json);
}

/// @nodoc
mixin _$TestScore {
  int? get vas => throw _privateConstructorUsedError;
  int? get womac => throw _privateConstructorUsedError;
  @JsonKey(name: 'kebutuhan_natrium')
  int? get kebutuhanNatrium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestScoreCopyWith<TestScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestScoreCopyWith<$Res> {
  factory $TestScoreCopyWith(TestScore value, $Res Function(TestScore) then) =
      _$TestScoreCopyWithImpl<$Res, TestScore>;
  @useResult
  $Res call(
      {int? vas,
      int? womac,
      @JsonKey(name: 'kebutuhan_natrium') int? kebutuhanNatrium});
}

/// @nodoc
class _$TestScoreCopyWithImpl<$Res, $Val extends TestScore>
    implements $TestScoreCopyWith<$Res> {
  _$TestScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vas = freezed,
    Object? womac = freezed,
    Object? kebutuhanNatrium = freezed,
  }) {
    return _then(_value.copyWith(
      vas: freezed == vas
          ? _value.vas
          : vas // ignore: cast_nullable_to_non_nullable
              as int?,
      womac: freezed == womac
          ? _value.womac
          : womac // ignore: cast_nullable_to_non_nullable
              as int?,
      kebutuhanNatrium: freezed == kebutuhanNatrium
          ? _value.kebutuhanNatrium
          : kebutuhanNatrium // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestScoreCopyWith<$Res> implements $TestScoreCopyWith<$Res> {
  factory _$$_TestScoreCopyWith(
          _$_TestScore value, $Res Function(_$_TestScore) then) =
      __$$_TestScoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? vas,
      int? womac,
      @JsonKey(name: 'kebutuhan_natrium') int? kebutuhanNatrium});
}

/// @nodoc
class __$$_TestScoreCopyWithImpl<$Res>
    extends _$TestScoreCopyWithImpl<$Res, _$_TestScore>
    implements _$$_TestScoreCopyWith<$Res> {
  __$$_TestScoreCopyWithImpl(
      _$_TestScore _value, $Res Function(_$_TestScore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vas = freezed,
    Object? womac = freezed,
    Object? kebutuhanNatrium = freezed,
  }) {
    return _then(_$_TestScore(
      vas: freezed == vas
          ? _value.vas
          : vas // ignore: cast_nullable_to_non_nullable
              as int?,
      womac: freezed == womac
          ? _value.womac
          : womac // ignore: cast_nullable_to_non_nullable
              as int?,
      kebutuhanNatrium: freezed == kebutuhanNatrium
          ? _value.kebutuhanNatrium
          : kebutuhanNatrium // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestScore implements _TestScore {
  const _$_TestScore(
      {this.vas,
      this.womac,
      @JsonKey(name: 'kebutuhan_natrium') this.kebutuhanNatrium});

  factory _$_TestScore.fromJson(Map<String, dynamic> json) =>
      _$$_TestScoreFromJson(json);

  @override
  final int? vas;
  @override
  final int? womac;
  @override
  @JsonKey(name: 'kebutuhan_natrium')
  final int? kebutuhanNatrium;

  @override
  String toString() {
    return 'TestScore(vas: $vas, womac: $womac, kebutuhanNatrium: $kebutuhanNatrium)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestScore &&
            (identical(other.vas, vas) || other.vas == vas) &&
            (identical(other.womac, womac) || other.womac == womac) &&
            (identical(other.kebutuhanNatrium, kebutuhanNatrium) ||
                other.kebutuhanNatrium == kebutuhanNatrium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vas, womac, kebutuhanNatrium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestScoreCopyWith<_$_TestScore> get copyWith =>
      __$$_TestScoreCopyWithImpl<_$_TestScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestScoreToJson(
      this,
    );
  }
}

abstract class _TestScore implements TestScore {
  const factory _TestScore(
          {final int? vas,
          final int? womac,
          @JsonKey(name: 'kebutuhan_natrium') final int? kebutuhanNatrium}) =
      _$_TestScore;

  factory _TestScore.fromJson(Map<String, dynamic> json) =
      _$_TestScore.fromJson;

  @override
  int? get vas;
  @override
  int? get womac;
  @override
  @JsonKey(name: 'kebutuhan_natrium')
  int? get kebutuhanNatrium;
  @override
  @JsonKey(ignore: true)
  _$$_TestScoreCopyWith<_$_TestScore> get copyWith =>
      throw _privateConstructorUsedError;
}
