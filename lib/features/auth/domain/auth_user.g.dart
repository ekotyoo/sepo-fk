// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthUserWrapper _$$_AuthUserWrapperFromJson(Map<String, dynamic> json) =>
    _$_AuthUserWrapper(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      accessToken: json['access_token'] as String?,
      avatar: json['avatar'] as String?,
      isAdmin: json['is_admin'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      personalDataFilled: json['personal_data_filled'] as bool? ?? false,
      currentConditionFilled:
          json['current_condition_filled'] as bool? ?? false,
      pillCountFilled: json['pill_count_filled'] as bool? ?? false,
      currentExerciseDay: json['current_exercise_day'] as int,
    );

Map<String, dynamic> _$$_AuthUserWrapperToJson(_$_AuthUserWrapper instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'access_token': instance.accessToken,
      'avatar': instance.avatar,
      'is_admin': instance.isAdmin,
      'is_active': instance.isActive,
      'personal_data_filled': instance.personalDataFilled,
      'current_condition_filled': instance.currentConditionFilled,
      'pill_count_filled': instance.pillCountFilled,
      'current_exercise_day': instance.currentExerciseDay,
    };

_$SignedIn _$$SignedInFromJson(Map<String, dynamic> json) => _$SignedIn(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      accessToken: json['accessToken'] as String?,
      avatar: json['avatar'] as String?,
      isAdmin: json['isAdmin'] as bool? ?? false,
      personalDataFilled: json['personalDataFilled'] as bool? ?? false,
      currentConditionFilled: json['currentConditionFilled'] as bool? ?? false,
      pillCountFilled: json['pillCountFilled'] as bool? ?? false,
      currentExerciseDay: json['currentExerciseDay'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SignedInToJson(_$SignedIn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'accessToken': instance.accessToken,
      'avatar': instance.avatar,
      'isAdmin': instance.isAdmin,
      'personalDataFilled': instance.personalDataFilled,
      'currentConditionFilled': instance.currentConditionFilled,
      'pillCountFilled': instance.pillCountFilled,
      'currentExerciseDay': instance.currentExerciseDay,
      'runtimeType': instance.$type,
    };

_$SignedOut _$$SignedOutFromJson(Map<String, dynamic> json) => _$SignedOut(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SignedOutToJson(_$SignedOut instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
