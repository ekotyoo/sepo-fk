import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/features/assessment/assessment_screen.dart';
import '../../features/auth/auth_controller.dart';
import '../../features/auth/presentation/email_verification/email_verification_screen.dart';
import '../../features/auth/presentation/login/login_screen.dart';
import '../../features/auth/presentation/register/register_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../services/shared_prefs.dart';
import 'app_scaffold.dart';

part 'router.g.dart';

final kNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
class AppRouter extends _$AppRouter implements Listenable {
  VoidCallback? routerListener;
  bool authenticated = false;
  bool assessed = false;

  @override
  Future<void> build() async {
    assessed = await ref.watch(
      sharedPreferencesProvider.selectAsync((data) => data.getBool('assessed') ?? false),
    );

    debugPrint(assessed.toString());

    authenticated = await ref.watch(
      authControllerProvider.selectAsync(
        (data) => data.map(
          signedIn: (_) => true,
          signedOut: (_) => false,
        ),
      ),
    );

    ref.listenSelf((previous, next) {
      if (state.isLoading) return;
      routerListener?.call();
    });
  }

  List<RouteBase> get routes => [
        ShellRoute(
          builder: (context, state, child) => AppScaffold(child: child),
          routes: [
            GoRoute(
              path: '/home',
              name: 'home',
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const HomeScreen(),
              ),
            ),
            GoRoute(
              path: '/exercise',
              name: 'exercise',
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: Container(),
              ),
            ),
            GoRoute(
              path: '/profile',
              name: 'profile',
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: Container(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/assessment',
          name: 'assessment',
          pageBuilder: (context, state) => const MaterialPage(
            child: AssessmentScreen(),
          ),
        ),
        GoRoute(
          path: '/auth',
          name: 'auth',
          pageBuilder: (context, state) => const MaterialPage(
            child: OnboardingScreen(),
          ),
          routes: [
            GoRoute(
              path: 'login',
              name: 'login',
              pageBuilder: (context, state) => const MaterialPage(
                child: LoginScreen(),
              ),
            ),
            GoRoute(
              path: 'register',
              name: 'register',
              pageBuilder: (context, state) => const MaterialPage(
                child: RegisterScreen(),
              ),
            ),
            GoRoute(
              path: 'verification',
              name: 'verification',
              pageBuilder: (context, state) {
                final email = state.extra as String?;
                return MaterialPage(
                  key: state.pageKey,
                  child: EmailVerificationScreen(email: email),
                );
              },
            ),
          ],
        ),
      ];

  String? redirect(BuildContext context, GoRouterState state) {
    if (this.state.isLoading || this.state.hasError) return null;

    final loggingIn = state.location.contains('/auth') ||
        state.location.contains('login') ||
        state.location.contains('register');

    if (loggingIn && authenticated) return assessed ? '/home' : '/assessment';

    return null;
  }

  @override
  void addListener(VoidCallback listener) => routerListener = listener;

  @override
  void removeListener(VoidCallback listener) => routerListener = null;
}
