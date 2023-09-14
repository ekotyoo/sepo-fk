// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pill_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PillCount _$$_PillCountFromJson(Map<String, dynamic> json) => _$_PillCount(
      medicineUsed: (json['medicine_used'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      medicineSource:
          $enumDecode(_$MedicineSourceEnumMap, json['medicine_source']),
      medicineBoughtTime: $enumDecodeNullable(
          _$MedicineBoughtTimeEnumMap, json['medicine_bought_time']),
      medicineBoughtDate: json['medicine_bought_date'] as int?,
      medicineBefore: (json['medicine_before'] as List<dynamic>)
          .map((e) => MedicineWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      medicineAfter: (json['medicine_after'] as List<dynamic>)
          .map((e) => MedicineWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PillCountToJson(_$_PillCount instance) =>
    <String, dynamic>{
      'medicine_used': instance.medicineUsed,
      'medicine_source': _$MedicineSourceEnumMap[instance.medicineSource]!,
      'medicine_bought_time':
          _$MedicineBoughtTimeEnumMap[instance.medicineBoughtTime],
      'medicine_bought_date': instance.medicineBoughtDate,
      'medicine_before': instance.medicineBefore,
      'medicine_after': instance.medicineAfter,
    };

const _$MedicineSourceEnumMap = {
  MedicineSource.klinik: 'klinik',
  MedicineSource.apotek: 'apotek',
  MedicineSource.toko: 'toko',
};

const _$MedicineBoughtTimeEnumMap = {
  MedicineBoughtTime.thisWeek: 'thisWeek',
  MedicineBoughtTime.thisMonth: 'thisMonth',
  MedicineBoughtTime.oneToThreeMonthsAgo: 'oneToThreeMonthsAgo',
  MedicineBoughtTime.fourToSixMonthsAgo: 'fourToSixMonthsAgo',
};
