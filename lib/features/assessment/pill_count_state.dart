import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/models/date_input.dart';

part 'pill_count_state.freezed.dart';
part 'pill_count_state.g.dart';

@freezed
class Medicine with _$Medicine {
  const factory Medicine({
    required String name,
  }) = _Medicine;
}

@freezed
class MedicineWithCount with _$MedicineWithCount {
  const factory MedicineWithCount({
    required String name,
    @Default(0) int count
  }) = _MedicineWithCount;

  factory MedicineWithCount.fromJson(Map<String, Object?> json) => _$MedicineWithCountFromJson(json);
}

enum MedicineSource {
  klinik,
  apotek,
  toko;

  String getLabel() => switch(this) {
    klinik => 'Klinik',
    apotek => 'Apotek',
    toko => 'Toko Obat',
  };
}

enum MedicineBoughtTime {
  thisWeek,
  thisMonth,
  oneToThreeMonthsAgo,
  fourToSixMonthsAgo;

  String getLabel() => switch(this) {
    thisWeek => 'Dalam minggu ini',
    thisMonth => 'Dalam bulan ini',
    oneToThreeMonthsAgo => '1-3 Bulan lalu',
    fourToSixMonthsAgo => '4-6 Bulan lalu'
  };
}

@freezed
class PillCountState with _$PillCountState {
  const factory PillCountState({
    @Default([]) List<Medicine> medicineUsed,
    @Default(null) MedicineSource? medicineSource,
    @Default(null) MedicineBoughtTime? medicineBoughtTime,
    @Default(DateInput.pure()) DateInput medicineBoughtDateInput,
    @Default([]) List<MedicineWithCount> medicineBefore,
    @Default([]) List<MedicineWithCount> medicineAfter
  }) = _PillCountState;
}