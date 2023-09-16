// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestSessionState {
  int get questionNumber => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestSessionStateCopyWith<TestSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestSessionStateCopyWith<$Res> {
  factory $TestSessionStateCopyWith(
          TestSessionState value, $Res Function(TestSessionState) then) =
      _$TestSessionStateCopyWithImpl<$Res, TestSessionState>;
  @useResult
  $Res call(
      {int questionNumber,
      List<Question> questions,
      bool isLoading,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class _$TestSessionStateCopyWithImpl<$Res, $Val extends TestSessionState>
    implements $TestSessionStateCopyWith<$Res> {
  _$TestSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionNumber = null,
    Object? questions = null,
    Object? isLoading = null,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      questionNumber: null == questionNumber
          ? _value.questionNumber
          : questionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_TestSessionStateCopyWith<$Res>
    implements $TestSessionStateCopyWith<$Res> {
  factory _$$_TestSessionStateCopyWith(
          _$_TestSessionState value, $Res Function(_$_TestSessionState) then) =
      __$$_TestSessionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int questionNumber,
      List<Question> questions,
      bool isLoading,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class __$$_TestSessionStateCopyWithImpl<$Res>
    extends _$TestSessionStateCopyWithImpl<$Res, _$_TestSessionState>
    implements _$$_TestSessionStateCopyWith<$Res> {
  __$$_TestSessionStateCopyWithImpl(
      _$_TestSessionState _value, $Res Function(_$_TestSessionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionNumber = null,
    Object? questions = null,
    Object? isLoading = null,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_TestSessionState(
      questionNumber: null == questionNumber
          ? _value.questionNumber
          : questionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_TestSessionState implements _TestSessionState {
  const _$_TestSessionState(
      {this.questionNumber = 0,
      required final List<Question> questions,
      this.isLoading = false,
      this.successMessage,
      this.errorMessage})
      : _questions = questions;

  @override
  @JsonKey()
  final int questionNumber;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? successMessage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TestSessionState(questionNumber: $questionNumber, questions: $questions, isLoading: $isLoading, successMessage: $successMessage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestSessionState &&
            (identical(other.questionNumber, questionNumber) ||
                other.questionNumber == questionNumber) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionNumber,
      const DeepCollectionEquality().hash(_questions),
      isLoading,
      successMessage,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestSessionStateCopyWith<_$_TestSessionState> get copyWith =>
      __$$_TestSessionStateCopyWithImpl<_$_TestSessionState>(this, _$identity);
}

abstract class _TestSessionState implements TestSessionState {
  const factory _TestSessionState(
      {final int questionNumber,
      required final List<Question> questions,
      final bool isLoading,
      final String? successMessage,
      final String? errorMessage}) = _$_TestSessionState;

  @override
  int get questionNumber;
  @override
  List<Question> get questions;
  @override
  bool get isLoading;
  @override
  String? get successMessage;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TestSessionStateCopyWith<_$_TestSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}
