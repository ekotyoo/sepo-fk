// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Test _$$_TestFromJson(Map<String, dynamic> json) => _$_Test(
      id: json['id'] as int,
      title: json['title'] as String,
      doneDate: const TimestampSerializer().fromJson(json['done_date']),
      lockedUntil:
          const TimestampSerializer().fromJson(json['locked_until_date']),
    );

Map<String, dynamic> _$$_TestToJson(_$_Test instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'done_date': const TimestampSerializer().toJson(instance.doneDate),
      'locked_until_date':
          const TimestampSerializer().toJson(instance.lockedUntil),
    };
