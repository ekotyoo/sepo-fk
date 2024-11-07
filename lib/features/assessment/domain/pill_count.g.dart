// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pill_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PillCount _$$_PillCountFromJson(Map<String, dynamic> json) => _$_PillCount(
      id: json['id'] as int?,
      name: json['name'] as String?,
      number: json['number'] as int?,
      medicineUsed: (json['medicine_used'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      medicineSource:
          $enumDecodeNullable(_$MedicineSourceEnumMap, json['medicine_source']),
      medicineBoughtTime: $enumDecodeNullable(
          _$MedicineBoughtTimeEnumMap, json['medicine_bought_time']),
      medicineBoughtTimestamp: json['medicine_bought_timestamp'] as int?,
      medicineBoughtDate:
          const TimestampSerializer().fromJson(json['medicine_bought_date']),
      medicineBefore: (json['medicine_before'] as List<dynamic>?)
          ?.map((e) => MedicineWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      medicineAfter: (json['medicine_after'] as List<dynamic>?)
          ?.map((e) => MedicineWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      doneDate: const TimestampSerializer().fromJson(json['done_date']),
      lockedUntil:
          const TimestampSerializer().fromJson(json['locked_until_date']),
    );

Map<String, dynamic> _$$_PillCountToJson(_$_PillCount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'medicine_used': instance.medicineUsed,
      'medicine_source': _$MedicineSourceEnumMap[instance.medicineSource],
      'medicine_bought_time':
          _$MedicineBoughtTimeEnumMap[instance.medicineBoughtTime],
      'medicine_bought_timestamp': instance.medicineBoughtTimestamp,
      'medicine_bought_date':
          const TimestampSerializer().toJson(instance.medicineBoughtDate),
      'medicine_before': instance.medicineBefore,
      'medicine_after': instance.medicineAfter,
      'done_date': const TimestampSerializer().toJson(instance.doneDate),
      'locked_until_date':
          const TimestampSerializer().toJson(instance.lockedUntil),
    };

const _$MedicineSourceEnumMap = {
  MedicineSource.klinik: 'klinik',
  MedicineSource.apotek: 'apotek',
  MedicineSource.toko: 'toko',
  MedicineSource.puskesmas: 'puskesmas',
};

const _$MedicineBoughtTimeEnumMap = {
  MedicineBoughtTime.thisWeek: 'thisWeek',
  MedicineBoughtTime.thisMonth: 'thisMonth',
  MedicineBoughtTime.oneToThreeMonthsAgo: 'thisOneToThreeMonthsAgo',
  MedicineBoughtTime.fourToSixMonthsAgo: 'fourToSixMonthsAgo',
};
