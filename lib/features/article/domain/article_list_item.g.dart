// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleListItem _$$_ArticleListItemFromJson(Map<String, dynamic> json) =>
    _$_ArticleListItem(
      id: json['id'] as int,
      title: json['title'] as String,
      point: json['point'] as int,
      duration: json['duration'] as int,
      week: json['week'] as int,
      isLocked: json['isLocked'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ArticleListItemToJson(_$_ArticleListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'point': instance.point,
      'duration': instance.duration,
      'week': instance.week,
      'isLocked': instance.isLocked,
    };
