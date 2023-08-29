import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/common/models/date_input.dart';
import 'package:sepo_app/common/models/name_text_input.dart';
import 'package:sepo_app/features/assessment/assessment_state.dart';
import 'package:sepo_app/features/assessment/models/address_input.dart';
import 'package:sepo_app/features/assessment/models/education_input.dart';
import 'package:sepo_app/features/assessment/models/gender_input.dart';
import 'package:sepo_app/features/assessment/models/phone_input.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'assessment_controller.g.dart';

@riverpod
class AssessmentController extends _$AssessmentController {

  @override
  AssessmentState build() => const AssessmentState();

  void onPageChange(int value) => state = state.copyWith(currentPage: value);

  // Personal Data
  void onNameChange(String value) => state = state.copyWith(
    personalDataState: state.personalDataState.copyWith(
      nameInput: NameTextInput.dirty(value: value)
    )
  );

  void onBirthDateChange(DateTime? value) => state = state.copyWith(
    personalDataState: state.personalDataState.copyWith(
      birthDateInput: DateInput.dirty(value: value)
    )
  );

  void onGenderChange(Gender? value) => state = state.copyWith(
    personalDataState: state.personalDataState.copyWith(
      genderInput: GenderInput.dirty(value: value)
    )
  );

  void onAddressChange(String value) => state = state.copyWith(
    personalDataState: state.personalDataState.copyWith(
      addressInput: AddressInput.dirty(value: value)
    )
  );

  void onPhoneChange(String value) => state = state.copyWith(
    personalDataState: state.personalDataState.copyWith(
      phoneInput: PhoneInput.dirty(value: value)
    )
  );

  void onEducationChange(Education value) => state = state.copyWith(
    personalDataState: state.personalDataState.copyWith(
      educationInput: EducationInput.dirty(value: value)
    )
  );

  Future<void> onSubmit() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('assessed', true);
  }
}