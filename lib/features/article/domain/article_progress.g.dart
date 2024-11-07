// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleProgress _$$_ArticleProgressFromJson(Map<String, dynamic> json) =>
    _$_ArticleProgress(
      progress: (json['progress'] as num).toDouble(),
      score: json['score'] as int,
      nextArticle: json['nextArticle'] == null
          ? null
          : ArticleListItem.fromJson(
              json['nextArticle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleProgressToJson(_$_ArticleProgress instance) =>
    <String, dynamic>{
      'progress': instance.progress,
      'score': instance.score,
      'nextArticle': instance.nextArticle,
    };
