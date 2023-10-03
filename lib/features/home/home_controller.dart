import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/features/auth/domain/auth_user.dart';
import 'package:sepo_app/features/home/home_state.dart';

import '../auth/data/auth_repository.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  Future<HomeState> build() async {
    final currentDate = DateTime.now();
    final authState = ref.watch(authStateProvider) as SignedIn;

    return HomeState(
      currentDate: currentDate,
      authState: authState
    );
  }
}