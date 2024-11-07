import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:SEPO/features/assessment/data/personal_data_repository.dart';
import 'package:SEPO/features/auth/domain/auth_user.dart';

import '../../data/auth_repository.dart';
import '../../auth_controller.dart';
import 'profile_state.dart';

part 'profile_controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<ProfileState> build() async {
    final authState = ref.watch(authStateProvider);
    final personalDataRepo = ref.read(personalDataRepositoryProvider);
    final personalDataResult = await personalDataRepo.getPersonalData((authState as SignedIn).id);
    final personalData = personalDataResult.fold(
      (l) => null,
      (r) => r,
    );

    return ProfileState(
      user: authState,
      personalData: personalData,
    );
  }

  void logout() async {
    ref.read(authControllerProvider.notifier).logout();
  }
}
