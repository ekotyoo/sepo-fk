import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/auth_repository.dart';
import '../../auth_controller.dart';
import 'profile_state.dart';

part 'profile_controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<ProfileState> build() async {
    final authState = ref.watch(authStateProvider);

    return ProfileState(user: authState);
  }

  void logout() async {
    ref.read(authControllerProvider.notifier).logout();
  }
}
