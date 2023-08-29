import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/error/network_exceptions.dart';
import '../../common/services/auth_interceptor.dart';
import 'data/auth_repository.dart';
import 'domain/auth_user.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  late SharedPreferences prefs;

  @override
  Future<AuthUser> build() async {
    prefs = await SharedPreferences.getInstance();

    _validateToken();

    return _recoverLogin();
  }

  Future<AuthUser> _recoverLogin() async {
    final accessToken = prefs.getString(kAccessToken);

    if (accessToken == null || accessToken.isEmpty) {
      return const AuthUser.signedOut();
    }

    final result = await ref.read(authRepositoryProvider).loginWithToken();

    return result.fold(
      (l) {
        if (l.cause is UnauthorisedRequest) {
          return const AuthUser.signedOut();
        }
        return const AuthUser.signedOut();
      },
      (r) => r as SignedIn,
    );
  }

  Future<void> logout() async {
    final result = await ref.read(authRepositoryProvider).logout();
    result.fold(
      (l) {},
      (r) {
        prefs.remove(kAccessToken);
        ref.read(authStateProvider.notifier).state = const AuthUser.signedOut();
        return state = const AsyncValue<AuthUser>.data(AuthUser.signedOut());
      },
    );
  }

  void setAuthUser(AuthUser user) => state = AsyncValue<AuthUser>.data(user);

  void _validateToken() {
    ref.listenSelf((previous, next) {
      if (next.isLoading) return;
      if (next.hasError) {
        ref.read(authStateProvider.notifier).state = const AuthUser.signedOut();
        return;
      }

      final val = next.requireValue;
      val.map(
        signedIn: (user) {
          ref.read(authStateProvider.notifier).state = user;
          return prefs.setString(kAccessToken, user.accessToken ?? '');
        },
        signedOut: (user) {
          ref.read(authStateProvider.notifier).state = user;
          return prefs.remove(kAccessToken);
        },
      );
    });
  }
}
