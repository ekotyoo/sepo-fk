import 'package:freezed_annotation/freezed_annotation.dart';

import '../../test/domain/test.dart';
import '../models/education_input.dart';
import '../models/gender_input.dart';

part 'personal_data.freezed.dart';

part 'personal_data.g.dart';

@freezed
class PersonalData with _$PersonalData {
  const factory PersonalData({
    required String name,
    @JsonKey(name: 'birth_date_timestamp') int? birthDate,
    @JsonKey(name: 'birth_date') @TimestampSerializer() DateTime? birth,
    required Gender gender,
    required String address,
    required String phone,
    required Education education,
  }) = _PersonalData;

  factory PersonalData.fromJson(Map<String, Object?> json) =>
      _$PersonalDataFromJson(json);
}
