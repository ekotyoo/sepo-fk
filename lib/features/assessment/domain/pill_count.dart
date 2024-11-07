import 'package:freezed_annotation/freezed_annotation.dart';

import '../../test/domain/test.dart';
import '../pill_count_state.dart';

part 'pill_count.freezed.dart';
part 'pill_count.g.dart';

@freezed
class PillCount with _$PillCount {
  const factory PillCount({
    int? id,
    String? name,
    int? number,
    @JsonKey(name: 'medicine_used') required List<String>? medicineUsed,
    @JsonKey(name: 'medicine_source', defaultValue: null) MedicineSource? medicineSource,
    @JsonKey(name: 'medicine_bought_time', defaultValue: null) MedicineBoughtTime? medicineBoughtTime,
    @JsonKey(name: 'medicine_bought_timestamp', defaultValue: null) int? medicineBoughtTimestamp,
    @JsonKey(name: 'medicine_bought_date') @TimestampSerializer() DateTime? medicineBoughtDate,
    @JsonKey(name: 'medicine_before', defaultValue: null) List<MedicineWithCount>? medicineBefore,
    @JsonKey(name: 'medicine_after', defaultValue: null) List<MedicineWithCount>? medicineAfter,
    @JsonKey(name: 'done_date') @TimestampSerializer() DateTime? doneDate,
    @JsonKey(name: 'locked_until_date') @TimestampSerializer() DateTime? lockedUntil,
}) = _PillCount;

  factory PillCount.fromJson(Map<String, Object?> json) => _$PillCountFromJson(json);
}