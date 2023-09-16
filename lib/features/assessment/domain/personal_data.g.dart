// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalData _$$_PersonalDataFromJson(Map<String, dynamic> json) =>
    _$_PersonalData(
      name: json['name'] as String,
      birthDate: json['birth_date'] as int,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      address: json['address'] as String,
      phone: json['phone'] as String,
      education: $enumDecode(_$EducationEnumMap, json['education']),
    );

Map<String, dynamic> _$$_PersonalDataToJson(_$_PersonalData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birth_date': instance.birthDate,
      'gender': _$GenderEnumMap[instance.gender]!,
      'address': instance.address,
      'phone': instance.phone,
      'education': _$EducationEnumMap[instance.education]!,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$EducationEnumMap = {
  Education.sd: 'sd',
  Education.smp: 'smp',
  Education.sma: 'sma',
  Education.d3: 'd3',
  Education.s1s2: 's1s2',
};
