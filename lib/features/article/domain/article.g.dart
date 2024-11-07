// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as int,
      title: json['title'] as String,
      video: json['video'] as String,
      transcript: json['transcript'] as String,
      point: json['point'] as int,
      duration: json['duration'] as int,
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'video': instance.video,
      'transcript': instance.transcript,
      'point': instance.point,
      'duration': instance.duration,
    };
