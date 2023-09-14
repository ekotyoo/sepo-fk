// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Survey _$SurveyFromJson(Map<String, dynamic> json) {
  return _Survey.fromJson(json);
}

/// @nodoc
mixin _$Survey {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_done', defaultValue: false)
  bool get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyCopyWith<Survey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyCopyWith<$Res> {
  factory $SurveyCopyWith(Survey value, $Res Function(Survey) then) =
      _$SurveyCopyWithImpl<$Res, Survey>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'image_path') String image,
      @JsonKey(name: 'is_done', defaultValue: false) bool isDone});
}

/// @nodoc
class _$SurveyCopyWithImpl<$Res, $Val extends Survey>
    implements $SurveyCopyWith<$Res> {
  _$SurveyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurveyCopyWith<$Res> implements $SurveyCopyWith<$Res> {
  factory _$$_SurveyCopyWith(_$_Survey value, $Res Function(_$_Survey) then) =
      __$$_SurveyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'image_path') String image,
      @JsonKey(name: 'is_done', defaultValue: false) bool isDone});
}

/// @nodoc
class __$$_SurveyCopyWithImpl<$Res>
    extends _$SurveyCopyWithImpl<$Res, _$_Survey>
    implements _$$_SurveyCopyWith<$Res> {
  __$$_SurveyCopyWithImpl(_$_Survey _value, $Res Function(_$_Survey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? isDone = null,
  }) {
    return _then(_$_Survey(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Survey implements _Survey {
  const _$_Survey(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: 'image_path') required this.image,
      @JsonKey(name: 'is_done', defaultValue: false) required this.isDone});

  factory _$_Survey.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'image_path')
  final String image;
  @override
  @JsonKey(name: 'is_done', defaultValue: false)
  final bool isDone;

  @override
  String toString() {
    return 'Survey(id: $id, name: $name, description: $description, image: $image, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Survey &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, image, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyCopyWith<_$_Survey> get copyWith =>
      __$$_SurveyCopyWithImpl<_$_Survey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyToJson(
      this,
    );
  }
}

abstract class _Survey implements Survey {
  const factory _Survey(
      {required final int id,
      required final String name,
      required final String description,
      @JsonKey(name: 'image_path') required final String image,
      @JsonKey(name: 'is_done', defaultValue: false)
      required final bool isDone}) = _$_Survey;

  factory _Survey.fromJson(Map<String, dynamic> json) = _$_Survey.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'image_path')
  String get image;
  @override
  @JsonKey(name: 'is_done', defaultValue: false)
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyCopyWith<_$_Survey> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  int get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path')
  String? get image => throw _privateConstructorUsedError;
  List<Option> get options => throw _privateConstructorUsedError;
  OfferedAnswer? get offeredAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {int id,
      String question,
      QuestionType type,
      @JsonKey(name: 'image_path') String? image,
      List<Option> options,
      OfferedAnswer? offeredAnswer});

  $OfferedAnswerCopyWith<$Res>? get offeredAnswer;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? image = freezed,
    Object? options = null,
    Object? offeredAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      offeredAnswer: freezed == offeredAnswer
          ? _value.offeredAnswer
          : offeredAnswer // ignore: cast_nullable_to_non_nullable
              as OfferedAnswer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferedAnswerCopyWith<$Res>? get offeredAnswer {
    if (_value.offeredAnswer == null) {
      return null;
    }

    return $OfferedAnswerCopyWith<$Res>(_value.offeredAnswer!, (value) {
      return _then(_value.copyWith(offeredAnswer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String question,
      QuestionType type,
      @JsonKey(name: 'image_path') String? image,
      List<Option> options,
      OfferedAnswer? offeredAnswer});

  @override
  $OfferedAnswerCopyWith<$Res>? get offeredAnswer;
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? image = freezed,
    Object? options = null,
    Object? offeredAnswer = freezed,
  }) {
    return _then(_$_Question(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      offeredAnswer: freezed == offeredAnswer
          ? _value.offeredAnswer
          : offeredAnswer // ignore: cast_nullable_to_non_nullable
              as OfferedAnswer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question(
      {required this.id,
      required this.question,
      required this.type,
      @JsonKey(name: 'image_path') this.image,
      required final List<Option> options,
      this.offeredAnswer})
      : _options = options;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  final int id;
  @override
  final String question;
  @override
  final QuestionType type;
  @override
  @JsonKey(name: 'image_path')
  final String? image;
  final List<Option> _options;
  @override
  List<Option> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final OfferedAnswer? offeredAnswer;

  @override
  String toString() {
    return 'Question(id: $id, question: $question, type: $type, image: $image, options: $options, offeredAnswer: $offeredAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.offeredAnswer, offeredAnswer) ||
                other.offeredAnswer == offeredAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question, type, image,
      const DeepCollectionEquality().hash(_options), offeredAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {required final int id,
      required final String question,
      required final QuestionType type,
      @JsonKey(name: 'image_path') final String? image,
      required final List<Option> options,
      final OfferedAnswer? offeredAnswer}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  int get id;
  @override
  String get question;
  @override
  QuestionType get type;
  @override
  @JsonKey(name: 'image_path')
  String? get image;
  @override
  List<Option> get options;
  @override
  OfferedAnswer? get offeredAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  int get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res, Option>;
  @useResult
  $Res call({int id, int number, String text});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res, $Val extends Option>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OptionCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$_OptionCopyWith(_$_Option value, $Res Function(_$_Option) then) =
      __$$_OptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int number, String text});
}

/// @nodoc
class __$$_OptionCopyWithImpl<$Res>
    extends _$OptionCopyWithImpl<$Res, _$_Option>
    implements _$$_OptionCopyWith<$Res> {
  __$$_OptionCopyWithImpl(_$_Option _value, $Res Function(_$_Option) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? text = null,
  }) {
    return _then(_$_Option(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Option implements _Option {
  const _$_Option({required this.id, required this.number, required this.text});

  factory _$_Option.fromJson(Map<String, dynamic> json) =>
      _$$_OptionFromJson(json);

  @override
  final int id;
  @override
  final int number;
  @override
  final String text;

  @override
  String toString() {
    return 'Option(id: $id, number: $number, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Option &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OptionCopyWith<_$_Option> get copyWith =>
      __$$_OptionCopyWithImpl<_$_Option>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OptionToJson(
      this,
    );
  }
}

abstract class _Option implements Option {
  const factory _Option(
      {required final int id,
      required final int number,
      required final String text}) = _$_Option;

  factory _Option.fromJson(Map<String, dynamic> json) = _$_Option.fromJson;

  @override
  int get id;
  @override
  int get number;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_OptionCopyWith<_$_Option> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferedAnswer _$OfferedAnswerFromJson(Map<String, dynamic> json) {
  return _OfferedAnswer.fromJson(json);
}

/// @nodoc
mixin _$OfferedAnswer {
  Option get option => throw _privateConstructorUsedError;
  String? get additional => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferedAnswerCopyWith<OfferedAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferedAnswerCopyWith<$Res> {
  factory $OfferedAnswerCopyWith(
          OfferedAnswer value, $Res Function(OfferedAnswer) then) =
      _$OfferedAnswerCopyWithImpl<$Res, OfferedAnswer>;
  @useResult
  $Res call({Option option, String? additional});

  $OptionCopyWith<$Res> get option;
}

/// @nodoc
class _$OfferedAnswerCopyWithImpl<$Res, $Val extends OfferedAnswer>
    implements $OfferedAnswerCopyWith<$Res> {
  _$OfferedAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? additional = freezed,
  }) {
    return _then(_value.copyWith(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option,
      additional: freezed == additional
          ? _value.additional
          : additional // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OptionCopyWith<$Res> get option {
    return $OptionCopyWith<$Res>(_value.option, (value) {
      return _then(_value.copyWith(option: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OfferedAnswerCopyWith<$Res>
    implements $OfferedAnswerCopyWith<$Res> {
  factory _$$_OfferedAnswerCopyWith(
          _$_OfferedAnswer value, $Res Function(_$_OfferedAnswer) then) =
      __$$_OfferedAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option option, String? additional});

  @override
  $OptionCopyWith<$Res> get option;
}

/// @nodoc
class __$$_OfferedAnswerCopyWithImpl<$Res>
    extends _$OfferedAnswerCopyWithImpl<$Res, _$_OfferedAnswer>
    implements _$$_OfferedAnswerCopyWith<$Res> {
  __$$_OfferedAnswerCopyWithImpl(
      _$_OfferedAnswer _value, $Res Function(_$_OfferedAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? additional = freezed,
  }) {
    return _then(_$_OfferedAnswer(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option,
      additional: freezed == additional
          ? _value.additional
          : additional // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferedAnswer implements _OfferedAnswer {
  const _$_OfferedAnswer({required this.option, this.additional});

  factory _$_OfferedAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_OfferedAnswerFromJson(json);

  @override
  final Option option;
  @override
  final String? additional;

  @override
  String toString() {
    return 'OfferedAnswer(option: $option, additional: $additional)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferedAnswer &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.additional, additional) ||
                other.additional == additional));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, option, additional);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferedAnswerCopyWith<_$_OfferedAnswer> get copyWith =>
      __$$_OfferedAnswerCopyWithImpl<_$_OfferedAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferedAnswerToJson(
      this,
    );
  }
}

abstract class _OfferedAnswer implements OfferedAnswer {
  const factory _OfferedAnswer(
      {required final Option option,
      final String? additional}) = _$_OfferedAnswer;

  factory _OfferedAnswer.fromJson(Map<String, dynamic> json) =
      _$_OfferedAnswer.fromJson;

  @override
  Option get option;
  @override
  String? get additional;
  @override
  @JsonKey(ignore: true)
  _$$_OfferedAnswerCopyWith<_$_OfferedAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerRequest _$AnswerRequestFromJson(Map<String, dynamic> json) {
  return _AnswerRequest.fromJson(json);
}

/// @nodoc
mixin _$AnswerRequest {
  @JsonKey(name: 'option_id')
  int get optionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_id')
  int get questionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerRequestCopyWith<AnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerRequestCopyWith<$Res> {
  factory $AnswerRequestCopyWith(
          AnswerRequest value, $Res Function(AnswerRequest) then) =
      _$AnswerRequestCopyWithImpl<$Res, AnswerRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'option_id') int optionId,
      @JsonKey(name: 'question_id') int questionId});
}

/// @nodoc
class _$AnswerRequestCopyWithImpl<$Res, $Val extends AnswerRequest>
    implements $AnswerRequestCopyWith<$Res> {
  _$AnswerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionId = null,
    Object? questionId = null,
  }) {
    return _then(_value.copyWith(
      optionId: null == optionId
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerRequestCopyWith<$Res>
    implements $AnswerRequestCopyWith<$Res> {
  factory _$$_AnswerRequestCopyWith(
          _$_AnswerRequest value, $Res Function(_$_AnswerRequest) then) =
      __$$_AnswerRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'option_id') int optionId,
      @JsonKey(name: 'question_id') int questionId});
}

/// @nodoc
class __$$_AnswerRequestCopyWithImpl<$Res>
    extends _$AnswerRequestCopyWithImpl<$Res, _$_AnswerRequest>
    implements _$$_AnswerRequestCopyWith<$Res> {
  __$$_AnswerRequestCopyWithImpl(
      _$_AnswerRequest _value, $Res Function(_$_AnswerRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionId = null,
    Object? questionId = null,
  }) {
    return _then(_$_AnswerRequest(
      optionId: null == optionId
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerRequest implements _AnswerRequest {
  const _$_AnswerRequest(
      {@JsonKey(name: 'option_id') required this.optionId,
      @JsonKey(name: 'question_id') required this.questionId});

  factory _$_AnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerRequestFromJson(json);

  @override
  @JsonKey(name: 'option_id')
  final int optionId;
  @override
  @JsonKey(name: 'question_id')
  final int questionId;

  @override
  String toString() {
    return 'AnswerRequest(optionId: $optionId, questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerRequest &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, optionId, questionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerRequestCopyWith<_$_AnswerRequest> get copyWith =>
      __$$_AnswerRequestCopyWithImpl<_$_AnswerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerRequestToJson(
      this,
    );
  }
}

abstract class _AnswerRequest implements AnswerRequest {
  const factory _AnswerRequest(
          {@JsonKey(name: 'option_id') required final int optionId,
          @JsonKey(name: 'question_id') required final int questionId}) =
      _$_AnswerRequest;

  factory _AnswerRequest.fromJson(Map<String, dynamic> json) =
      _$_AnswerRequest.fromJson;

  @override
  @JsonKey(name: 'option_id')
  int get optionId;
  @override
  @JsonKey(name: 'question_id')
  int get questionId;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerRequestCopyWith<_$_AnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
