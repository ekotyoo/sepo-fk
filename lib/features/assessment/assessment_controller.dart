import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/common/models/date_input.dart';
import 'package:sepo_app/common/models/name_text_input.dart';
import 'package:sepo_app/features/assessment/assessment_state.dart';
import 'package:sepo_app/features/assessment/data/personal_data_repository.dart';
import 'package:sepo_app/features/assessment/domain/current_condition.dart';
import 'package:sepo_app/features/assessment/domain/personal_data.dart';
import 'package:sepo_app/features/assessment/domain/pill_count.dart';
import 'package:sepo_app/features/assessment/models/address_input.dart';
import 'package:sepo_app/features/assessment/models/education_input.dart';
import 'package:sepo_app/features/assessment/models/exercise_duration.dart';
import 'package:sepo_app/features/assessment/models/gender_input.dart';
import 'package:sepo_app/features/assessment/models/illness_duration_input.dart';
import 'package:sepo_app/features/assessment/models/phone_input.dart';
import 'package:sepo_app/features/assessment/pill_count_state.dart';
import 'package:sepo_app/features/test/data/current_condition_repository.dart';
import 'package:sepo_app/features/test/data/pill_count_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'assessment_controller.g.dart';

@riverpod
class AssessmentController extends _$AssessmentController {
  @override
  AssessmentState build() {
    initializeAssessment();
    return const AssessmentState();
  }

  void initializeAssessment() async {

  }

  void setErrorMessage(String? value) => state = state.copyWith(errorMessage: value);

  void setSuccessMessage(String? value) => state = state.copyWith(successMessage: value);

  void onPageChange(int value) => state = state.copyWith(currentPage: value);

  // Personal Data
  void onNameChange(String value) => state = state.copyWith(
      personalDataState: state.personalDataState
          .copyWith(nameInput: NameTextInput.dirty(value: value)));

  void onBirthDateChange(DateTime? value) => state = state.copyWith(
      personalDataState: state.personalDataState
          .copyWith(birthDateInput: DateInput.dirty(value: value)));

  void onGenderChange(Gender? value) => state = state.copyWith(
      personalDataState: state.personalDataState
          .copyWith(genderInput: GenderInput.dirty(value: value)));

  void onAddressChange(String value) => state = state.copyWith(
      personalDataState: state.personalDataState
          .copyWith(addressInput: AddressInput.dirty(value: value)));

  void onPhoneChange(String value) => state = state.copyWith(
      personalDataState: state.personalDataState
          .copyWith(phoneInput: PhoneInput.dirty(value: value)));

  void onEducationChange(Education value) => state = state.copyWith(
      personalDataState: state.personalDataState
          .copyWith(educationInput: EducationInput.dirty(value: value)));

  // Current Condition
  void onIllnessHistoryChange(String key, bool value) {
    final newIllnessHistory = {...state.currentConditionState.illnessHistory};
    newIllnessHistory[key] = value;
    state = state.copyWith(
        currentConditionState: state.currentConditionState.copyWith(
      illnessHistory: newIllnessHistory,
    ));
  }

  void onOtherIllnessChange(String value) => state = state.copyWith(
      currentConditionState:
          state.currentConditionState.copyWith(otherIllness: value));

  void onIllnessDurationChange(IllnessDuration value) => state = state.copyWith(
      currentConditionState: state.currentConditionState.copyWith(
          illnessDurationInput: IllnessDurationInput.dirty(value: value)));

  void onExerciseDurationChange(ExerciseDuration value) =>
      state = state.copyWith(
          currentConditionState: state.currentConditionState.copyWith(
              exerciseDurationInput:
                  ExerciseDurationInput.dirty(value: value)));

  void onJointTraumaCauseChange(String value) => state = state.copyWith(
      currentConditionState:
          state.currentConditionState.copyWith(jointTraumaCause: value));

  // Pill Count
  void addMedicine(Medicine medicine) => state = state.copyWith(
      pillCountState: state.pillCountState.copyWith(
          medicineUsed: [...state.pillCountState.medicineUsed, medicine]));

  void deleteMedicine(Medicine medicine) {
    final newMedicineUsed = [...state.pillCountState.medicineUsed];
    newMedicineUsed.remove(medicine);
    state = state.copyWith(
        pillCountState:
            state.pillCountState.copyWith(medicineUsed: newMedicineUsed));
  }

  void onMedicineSourceChange(MedicineSource value) => state = state.copyWith(
        pillCountState: state.pillCountState.copyWith(medicineSource: value),
      );

  void onMedicineBoughtDateChange(DateTime? value) => state = state.copyWith(
        pillCountState: state.pillCountState.copyWith(
          medicineBoughtDateInput: DateInput.dirty(value: value),
          medicineBoughtTime: null,
        ),
      );

  void onMedicineBoughtTimeChange(MedicineBoughtTime value) =>
      state = state.copyWith(
        pillCountState: state.pillCountState.copyWith(
          medicineBoughtDateInput: const DateInput.pure(),
          medicineBoughtTime: value,
        ),
      );

  void addMedicineBefore(MedicineWithCount medicine) => state = state.copyWith(
      pillCountState: state.pillCountState.copyWith(
          medicineBefore: [...state.pillCountState.medicineBefore, medicine]));

  void deleteMedicineBefore(MedicineWithCount medicine) {
    final newMedicineBefore = [...state.pillCountState.medicineBefore];
    newMedicineBefore.remove(medicine);
    state = state.copyWith(
        pillCountState:
            state.pillCountState.copyWith(medicineBefore: newMedicineBefore));
  }

  void addMedicineAfter(MedicineWithCount medicine) => state = state.copyWith(
      pillCountState: state.pillCountState.copyWith(
          medicineAfter: [...state.pillCountState.medicineAfter, medicine]));

  void deleteMedicineAfter(MedicineWithCount medicine) {
    final newMedicineAfter = [...state.pillCountState.medicineAfter];
    newMedicineAfter.remove(medicine);
    state = state.copyWith(
        pillCountState:
            state.pillCountState.copyWith(medicineAfter: newMedicineAfter));
  }

  void onPersonalDataSubmit() async {
    final personalDataState = state.personalDataState;

    if (personalDataState.birthDateInput.value == null ||
        personalDataState.genderInput.value == null ||
        personalDataState.educationInput.value == null) return;

    state = state.copyWith(isLoading: true);
    final repo = ref.read(personalDataRepositoryProvider);

    final personalData = PersonalData(
      name: personalDataState.nameInput.value,
      birthDate: personalDataState.birthDateInput.value!.millisecondsSinceEpoch,
      gender: personalDataState.genderInput.value!,
      address: personalDataState.addressInput.value,
      phone: personalDataState.phoneInput.value,
      education: personalDataState.educationInput.value!,
    );

    final result = await repo.postPersonalData(personalData);

    result.fold(
      (l) => state = state.copyWith(isLoading: false, errorMessage: l.message),
      (r) => state = state.copyWith(
          isLoading: false, successMessage: 'Data berhasil disimpan'),
    );
  }

  void onCurrentConditionSubmit() async {
    final repo = ref.read(currentConditionRepositoryProvider);
    final currentConditionState = state.currentConditionState;

    if (currentConditionState.illnessDurationInput.value == null ||
        currentConditionState.exerciseDurationInput.value == null) return;

    state = state.copyWith(isLoading: true);

    final currentCondition = CurrentCondition(
        illnessHistory: currentConditionState.illnessHistory.entries
            .filter((t) => t.value == true)
            .map((e) => e.key)
            .toList(),
        illnessDuration: currentConditionState.illnessDurationInput.value!,
        exerciseDuration: currentConditionState.exerciseDurationInput.value!,
        jointTraumaCause: currentConditionState.jointTraumaCause);

    final result = await repo.postCurrentCondition(currentCondition);
    result.fold(
      (l) => state = state.copyWith(isLoading: false, errorMessage: l.message),
      (r) => state = state.copyWith(isLoading: false, successMessage: 'Data berhasil disimpan'),
    );
  }

  void onSubmit() async {
    final repo = ref.read(pillCountRepositoryProvider);
    final pillCountState = state.pillCountState;

    if (pillCountState.medicineSource == null) return;
    state = state.copyWith(isLoading: true);

    final pillCount = PillCount(
        medicineUsed: pillCountState.medicineUsed.map((e) => e.name).toList(),
        medicineSource: pillCountState.medicineSource!,
        medicineBefore: pillCountState.medicineBefore,
        medicineAfter: pillCountState.medicineAfter,
        medicineBoughtTime: pillCountState.medicineBoughtTime,
        medicineBoughtDate: pillCountState
            .medicineBoughtDateInput.value?.millisecondsSinceEpoch);
    final result = await repo.postPillCount(pillCount);

    result.fold(
      (l) => state = state.copyWith(isLoading: false, errorMessage: l.message),
      (r) async {
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool('assessed', true);
        state = state.copyWith(
            isLoading: false, successMessage: 'Data berhasil disimpan');
      },
    );
  }
}
