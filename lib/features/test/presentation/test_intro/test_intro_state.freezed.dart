// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_intro_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestIntroState {
  List<Survey> get surveys => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  dynamic get isFinished => throw _privateConstructorUsedError;
  int? get currentSurveyIndex => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestIntroStateCopyWith<TestIntroState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestIntroStateCopyWith<$Res> {
  factory $TestIntroStateCopyWith(
          TestIntroState value, $Res Function(TestIntroState) then) =
      _$TestIntroStateCopyWithImpl<$Res, TestIntroState>;
  @useResult
  $Res call(
      {List<Survey> surveys,
      dynamic isLoading,
      dynamic isFinished,
      int? currentSurveyIndex,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class _$TestIntroStateCopyWithImpl<$Res, $Val extends TestIntroState>
    implements $TestIntroStateCopyWith<$Res> {
  _$TestIntroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveys = null,
    Object? isLoading = freezed,
    Object? isFinished = freezed,
    Object? currentSurveyIndex = freezed,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      surveys: null == surveys
          ? _value.surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as List<Survey>,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isFinished: freezed == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentSurveyIndex: freezed == currentSurveyIndex
          ? _value.currentSurveyIndex
          : currentSurveyIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestIntroStateCopyWith<$Res>
    implements $TestIntroStateCopyWith<$Res> {
  factory _$$_TestIntroStateCopyWith(
          _$_TestIntroState value, $Res Function(_$_TestIntroState) then) =
      __$$_TestIntroStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Survey> surveys,
      dynamic isLoading,
      dynamic isFinished,
      int? currentSurveyIndex,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class __$$_TestIntroStateCopyWithImpl<$Res>
    extends _$TestIntroStateCopyWithImpl<$Res, _$_TestIntroState>
    implements _$$_TestIntroStateCopyWith<$Res> {
  __$$_TestIntroStateCopyWithImpl(
      _$_TestIntroState _value, $Res Function(_$_TestIntroState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveys = null,
    Object? isLoading = freezed,
    Object? isFinished = freezed,
    Object? currentSurveyIndex = freezed,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_TestIntroState(
      surveys: null == surveys
          ? _value._surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as List<Survey>,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      isFinished: freezed == isFinished ? _value.isFinished! : isFinished,
      currentSurveyIndex: freezed == currentSurveyIndex
          ? _value.currentSurveyIndex
          : currentSurveyIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TestIntroState implements _TestIntroState {
  const _$_TestIntroState(
      {required final List<Survey> surveys,
      this.isLoading = false,
      this.isFinished = false,
      this.currentSurveyIndex,
      this.successMessage,
      this.errorMessage})
      : _surveys = surveys;

  final List<Survey> _surveys;
  @override
  List<Survey> get surveys {
    if (_surveys is EqualUnmodifiableListView) return _surveys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surveys);
  }

  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  @JsonKey()
  final dynamic isFinished;
  @override
  final int? currentSurveyIndex;
  @override
  final String? successMessage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TestIntroState(surveys: $surveys, isLoading: $isLoading, isFinished: $isFinished, currentSurveyIndex: $currentSurveyIndex, successMessage: $successMessage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestIntroState &&
            const DeepCollectionEquality().equals(other._surveys, _surveys) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isFinished, isFinished) &&
            (identical(other.currentSurveyIndex, currentSurveyIndex) ||
                other.currentSurveyIndex == currentSurveyIndex) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_surveys),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isFinished),
      currentSurveyIndex,
      successMessage,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestIntroStateCopyWith<_$_TestIntroState> get copyWith =>
      __$$_TestIntroStateCopyWithImpl<_$_TestIntroState>(this, _$identity);
}

abstract class _TestIntroState implements TestIntroState {
  const factory _TestIntroState(
      {required final List<Survey> surveys,
      final dynamic isLoading,
      final dynamic isFinished,
      final int? currentSurveyIndex,
      final String? successMessage,
      final String? errorMessage}) = _$_TestIntroState;

  @override
  List<Survey> get surveys;
  @override
  dynamic get isLoading;
  @override
  dynamic get isFinished;
  @override
  int? get currentSurveyIndex;
  @override
  String? get successMessage;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TestIntroStateCopyWith<_$_TestIntroState> get copyWith =>
      throw _privateConstructorUsedError;
}
