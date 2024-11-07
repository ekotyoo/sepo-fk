import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:SEPO/features/assessment/pill_count_state.dart';
import 'package:SEPO/features/pill_count/presentation/pill_count_provider.dart';
import 'package:SEPO/features/pill_count/presentation/post_pill_count/post_pill_count_state.dart';

import '../../../../common/models/date_input.dart';
import '../../../assessment/domain/pill_count.dart';
import '../../../auth/data/auth_repository.dart';
import '../../../auth/domain/auth_user.dart';
import '../../../test/data/pill_count_repository.dart';

part 'post_pill_count_controller.g.dart';

@riverpod
class PostPillCountController extends _$PostPillCountController {
  @override
  PostPillCountState build() {
    return const PostPillCountState();
  }

  void addMedicine(Medicine medicine) => state = state.copyWith(
        medicineUsed: [...state.medicineUsed, medicine],
      );

  void deleteMedicine(Medicine medicine) {
    final newMedicineUsed = [...state.medicineUsed];
    newMedicineUsed.remove(medicine);
    state = state.copyWith(medicineUsed: newMedicineUsed);
  }

  void onMedicineSourceChange(MedicineSource value) =>
      state = state.copyWith(medicineSource: value);

  void onMedicineBoughtDateChange(DateTime? value) => state = state.copyWith(
        medicineBoughtDateInput: DateInput.dirty(value: value),
        medicineBoughtTime: null,
      );

  void onMedicineBoughtTimeChange(MedicineBoughtTime value) =>
      state = state.copyWith(
        medicineBoughtDateInput: const DateInput.pure(),
        medicineBoughtTime: value,
      );

  void addMedicineBefore(MedicineWithCount medicine) => state = state.copyWith(
        medicineBefore: [...state.medicineBefore, medicine],
      );

  void deleteMedicineBefore(MedicineWithCount medicine) {
    final newMedicineBefore = [...state.medicineBefore];
    newMedicineBefore.remove(medicine);

    state = state.copyWith(medicineBefore: newMedicineBefore);
  }

  void addMedicineAfter(MedicineWithCount medicine) => state = state.copyWith(
        medicineAfter: [...state.medicineAfter, medicine],
      );

  void deleteMedicineAfter(MedicineWithCount medicine) {
    final newMedicineAfter = [...state.medicineAfter];
    newMedicineAfter.remove(medicine);
    state = state.copyWith(medicineAfter: newMedicineAfter);
  }

  void setSuccessMessage(String? message) =>
      state = state.copyWith(successMessage: message);

  void setErrorMessage(String? message) =>
      state = state.copyWith(errorMessage: message);

  void onSubmit(int number) async {
    final repo = ref.read(pillCountRepositoryProvider);
    final pillCountState = state;

    final authState = ref.watch(authStateProvider) as SignedIn;
    final userId = authState.id;

    if (pillCountState.medicineSource == null) return;
    state = state.copyWith(isLoading: true);

    final pillCount = PillCount(
        medicineUsed: pillCountState.medicineUsed.map((e) => e.name).toList(),
        medicineSource: pillCountState.medicineSource!,
        medicineBefore: pillCountState.medicineBefore,
        medicineAfter: pillCountState.medicineAfter,
        medicineBoughtTime: pillCountState.medicineBoughtTime,
        medicineBoughtTimestamp: pillCountState
            .medicineBoughtDateInput.value?.millisecondsSinceEpoch);
    final result = await repo.updatePillCount(userId, number, pillCount);

    result.fold(
      (l) => state = state.copyWith(isLoading: false, errorMessage: l.message),
      (r) async {
        ref.invalidate(pillCountsProvider);
        state = state.copyWith(
            isLoading: false, successMessage: 'Data berhasil disimpan');
      },
    );
  }
}
