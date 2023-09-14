import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey.freezed.dart';

part 'survey.g.dart';

@freezed
class Survey with _$Survey {
  const factory Survey({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'image_path') required String image,
    @JsonKey(name: 'is_done', defaultValue: false) required bool isDone,
  }) = _Survey;

  factory Survey.fromJson(Map<String, Object?> json) => _$SurveyFromJson(json);
}

enum QuestionType {
  @JsonValue('boolean')
  boolean,
  @JsonValue('range')
  range,
  @JsonValue('option')
  option;
}

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required String question,
    required QuestionType type,
    @JsonKey(name: 'image_path') String? image,
    required List<Option> options,
    OfferedAnswer? offeredAnswer,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Option with _$Option {
  const factory Option({
    required int id,
    required int number,
    required String text,
  }) = _Option;

  factory Option.fromJson(Map<String, Object?> json) => _$OptionFromJson(json);
}

@freezed
class OfferedAnswer with _$OfferedAnswer {
  const factory OfferedAnswer({
    required Option option,
    String? additional,
  }) = _OfferedAnswer;

  factory OfferedAnswer.fromJson(Map<String, Object?> json) =>
      _$OfferedAnswerFromJson(json);
}

@freezed
class AnswerRequest with _$AnswerRequest {
  const factory AnswerRequest({
    @JsonKey(name: 'option_id') required int optionId,
    @JsonKey(name: 'question_id')required int questionId,
  }) = _AnswerRequest;

  factory AnswerRequest.fromJson(Map<String, Object?> json) => _$AnswerRequestFromJson(json);
}
