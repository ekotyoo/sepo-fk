import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../common/models/date_input.dart';
import '../../../assessment/pill_count_state.dart';

part 'post_pill_count_state.freezed.dart';

@freezed
class PostPillCountState with _$PostPillCountState {
  const factory PostPillCountState({
    @Default([]) List<Medicine> medicineUsed,
    @Default(null) MedicineSource? medicineSource,
    @Default(null) MedicineBoughtTime? medicineBoughtTime,
    @Default(DateInput.pure()) DateInput medicineBoughtDateInput,
    @Default([]) List<MedicineWithCount> medicineBefore,
    @Default([]) List<MedicineWithCount> medicineAfter,
    @Default(false) bool isLoading,
    String? errorMessage,
    String? successMessage,
  }) = _PostPillCountState;
}