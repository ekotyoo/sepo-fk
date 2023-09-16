// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Survey _$$_SurveyFromJson(Map<String, dynamic> json) => _$_Survey(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image_path'] as String,
      isDone: json['is_done'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SurveyToJson(_$_Survey instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_path': instance.image,
      'is_done': instance.isDone,
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as int,
      question: json['question'] as String,
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      image: json['image_path'] as String?,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      offeredAnswer: json['offeredAnswer'] == null
          ? null
          : OfferedAnswer.fromJson(
              json['offeredAnswer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'image_path': instance.image,
      'options': instance.options,
      'offeredAnswer': instance.offeredAnswer,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.boolean: 'boolean',
  QuestionType.range: 'range',
  QuestionType.option: 'option',
};

_$_Option _$$_OptionFromJson(Map<String, dynamic> json) => _$_Option(
      id: json['id'] as int,
      number: json['number'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_OptionToJson(_$_Option instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'text': instance.text,
    };

_$_OfferedAnswer _$$_OfferedAnswerFromJson(Map<String, dynamic> json) =>
    _$_OfferedAnswer(
      option: Option.fromJson(json['option'] as Map<String, dynamic>),
      additional: json['additional'] as String?,
    );

Map<String, dynamic> _$$_OfferedAnswerToJson(_$_OfferedAnswer instance) =>
    <String, dynamic>{
      'option': instance.option,
      'additional': instance.additional,
    };

_$_AnswerRequest _$$_AnswerRequestFromJson(Map<String, dynamic> json) =>
    _$_AnswerRequest(
      optionId: json['option_id'] as int,
      questionId: json['question_id'] as int,
    );

Map<String, dynamic> _$$_AnswerRequestToJson(_$_AnswerRequest instance) =>
    <String, dynamic>{
      'option_id': instance.optionId,
      'question_id': instance.questionId,
    };
