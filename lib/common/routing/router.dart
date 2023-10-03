import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/features/assessment/assessment_screen.dart';
import 'package:sepo_app/features/assessment/domain/pill_count.dart';
import 'package:sepo_app/features/auth/presentation/profile/profile_screen.dart';
import 'package:sepo_app/features/exercise/exercise.dart';
import 'package:sepo_app/features/exercise/exercise_finish_screen.dart';
import 'package:sepo_app/features/exercise/exercise_session_screen.dart';
import 'package:sepo_app/features/pill_count/presentation/pill_count_list_screen.dart';
import 'package:sepo_app/features/pill_count/presentation/post_pill_count/post_pill_count_screen.dart';
import 'package:sepo_app/features/test/presentation/test_list/test_list_screen.dart';
import 'package:sepo_app/features/test/presentation/test_session/test_session_screen.dart';
import '../../features/auth/auth_controller.dart';
import '../../features/auth/presentation/email_verification/email_verification_screen.dart';
import '../../features/auth/presentation/login/login_screen.dart';
import '../../features/auth/presentation/register/register_screen.dart';
import '../../features/exercise/exercise_list_screen.dart';
import '../../features/exercise/exercise_schedule_screen.dart';
import '../../features/exercise/exercise_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/test/presentation/test_intro/test_intro_screen.dart';
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
    authenticated = await ref.watch(
      authControllerProvider.selectAsync(
        (data) => data.map(
          signedIn: (data) {
            assessed = data.personalDataFilled &&
                data.pillCountFilled &&
                data.currentConditionFilled;
            return true;
          },
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
                child: const ExerciseScreen(),
              ),
            ),
            GoRoute(
              path: '/profile',
              name: 'profile',
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const ProfileScreen(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/trainingschedule',
          name: 'trainingschedule',
          parentNavigatorKey: kNavigatorKey,
          pageBuilder: (context, state) {
            final level = state.extra as ExerciseLevel;
            return MaterialPage(child: ExerciseScheduleScreen(level: level));
          },
          routes: [
            GoRoute(
              path: 'traininglist/:week/:day',
              name: 'traininglist',
              parentNavigatorKey: kNavigatorKey,
              pageBuilder: (context, state) {
                final week = int.parse(state.params['week']!);
                final day = int.parse(state.params['day']!);

                return MaterialPage(
                  child: ExerciseListScreen(
                    week: week,
                    day: day,
                  ),
                );
              },
            ),
            GoRoute(
              path: 'exercisesession/:week/:day',
              name: 'exercisesession',
              parentNavigatorKey: kNavigatorKey,
              pageBuilder: (context, state) {
                final week = int.parse(state.params['week']!);
                final day = int.parse(state.params['day']!);
                final exercise = state.extra as List<Exercise>;
                return MaterialPage(
                  child: ExerciseSessionScreen(
                    exercises: exercise,
                    day: day,
                    week: week,
                  ),
                );
              },
            ),
            GoRoute(
              path: 'trainingfinish/:week/:day',
              name: 'trainingfinish',
              parentNavigatorKey: kNavigatorKey,
              pageBuilder: (context, state) {
                final week = int.parse(state.params['week']!);
                final day = int.parse(state.params['day']!);

                return MaterialPage(
                  child: ExerciseFinishScreen(day: day, week: week),
                );
              },
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
          path: '/pillcount',
          name: 'pillcount',
          parentNavigatorKey: kNavigatorKey,
          pageBuilder: (context, state) => const MaterialPage(
            child: PillCountListScreen(),
          ),
          routes: [
            GoRoute(
              path: 'postpillcount',
              parentNavigatorKey: kNavigatorKey,
              name: 'postpillcount',
              pageBuilder: (context, state) {
                final pillCount = state.extra as PillCount;
                return MaterialPage(
                  child: PostPillCountScreen(
                    pillCount: pillCount,
                  ),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: '/test',
          name: 'test',
          parentNavigatorKey: kNavigatorKey,
          pageBuilder: (context, state) => const MaterialPage(
            child: TestListScreen(),
          ),
          routes: [
            GoRoute(
              path: 'intro/:testId',
              name: 'intro',
              parentNavigatorKey: kNavigatorKey,
              pageBuilder: (context, state) {
                final testId = state.params['testId'];
                if (testId == null) throw Error();

                return MaterialPage(
                  child: TestIntroScreen(testId: testId),
                );
              },
            ),
            GoRoute(
              path: ':testId/session/:surveyId',
              name: 'session',
              parentNavigatorKey: kNavigatorKey,
              pageBuilder: (context, state) {
                final testId = state.params['testId'];
                final surveyId = state.params['surveyId'];
                if (testId == null || surveyId == null) throw Error();
                return MaterialPage(
                  child: TestSessionScreen(testId: testId, surveyId: surveyId),
                );
              },
            ),
          ],
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
