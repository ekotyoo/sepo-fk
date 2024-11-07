import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:SEPO/features/assessment/domain/personal_data.dart';

import '../../domain/auth_user.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    AuthUser? user,
    PersonalData? personalData,
  }) = _ProfileState;
}