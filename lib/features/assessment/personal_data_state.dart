import 'package:freezed_annotation/freezed_annotation.dart';
import '../../common/models/date_input.dart';
import '../../common/models/name_text_input.dart';
import 'models/address_input.dart';
import 'models/education_input.dart';
import 'models/gender_input.dart';
import 'models/phone_input.dart';

part 'personal_data_state.freezed.dart';

@freezed
class PersonalDataState with _$PersonalDataState {
  const factory PersonalDataState({
    @Default(NameTextInput.pure()) NameTextInput nameInput,
    @Default(DateInput.pure()) DateInput birthDateInput,
    @Default(GenderInput.pure()) GenderInput genderInput,
    @Default(AddressInput.pure()) AddressInput addressInput,
    @Default(PhoneInput.pure()) PhoneInput phoneInput,
    @Default(EducationInput.pure()) EducationInput educationInput,
  }) = _PersonalDataState;
}