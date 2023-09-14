import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sepo_app/features/assessment/pill_count_state.dart';

part 'pill_count.freezed.dart';
part 'pill_count.g.dart';

@freezed
class PillCount with _$PillCount {
  const factory PillCount({
    @JsonKey(name: 'medicine_used') required List<String> medicineUsed,
    @JsonKey(name: 'medicine_source') required MedicineSource medicineSource,
    @JsonKey(name: 'medicine_bought_time', defaultValue: null) MedicineBoughtTime? medicineBoughtTime,
    @JsonKey(name: 'medicine_bought_date', defaultValue: null) int? medicineBoughtDate,
    @JsonKey(name: 'medicine_before') required List<MedicineWithCount> medicineBefore,
    @JsonKey(name: 'medicine_after') required List<MedicineWithCount> medicineAfter,
}) = _PillCount;

  factory PillCount.fromJson(Map<String, Object?> json) => _$PillCountFromJson(json);
}