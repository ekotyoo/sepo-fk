import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth_user.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    AuthUser? user,
  }) = _ProfileState;
}