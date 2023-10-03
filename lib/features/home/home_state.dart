import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth/domain/auth_user.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required DateTime currentDate,
    required AuthUser authState,
  }) = _HomeState;
}
