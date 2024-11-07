import 'package:SEPO/features/test/data/test_repository.dart';
import 'package:SEPO/features/test/domain/test.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:SEPO/features/auth/domain/auth_user.dart';
import 'package:SEPO/features/home/home_state.dart';

import '../auth/data/auth_repository.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  Future<HomeState> build() async {
    final currentDate = DateTime.now();
    final authState = ref.watch(authStateProvider) as SignedIn;

    final testRepo = ref.read(testRepositoryProvider);
    final tests = (await testRepo.getTests()).fold((l) => null, (r) => r);

    return HomeState(
      currentDate: currentDate,
      authState: authState,
      testId: tests?[0].id
    );
  }
}