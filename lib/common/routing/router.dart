import 'package:SEPO/features/auth/presentation/about/about_screen.dart';
import 'package:SEPO/features/notification/presentation/notification_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/article/article_detail_screen.dart';
import '../../features/article/article_list_screen.dart';
import '../../features/assessment/assessment_screen.dart';
import '../../features/assessment/domain/pill_count.dart';
import '../../features/auth/auth_controller.dart';
import '../../features/auth/presentation/email_verification/email_verification_screen.dart';
import '../../features/auth/presentation/login/login_screen.dart';
import '../../features/auth/presentation/profile/profile_screen.dart';
import '../../features/auth/presentation/register/register_screen.dart';
import '../../features/exercise/exercise.dart';
import '../../features/exercise/exercise_finish_screen.dart';
import '../../features/exercise/exercise_list_screen.dart';
import '../../features/exercise/exercise_screen.dart';
import '../../features/exercise/exercise_session_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/pill_count/presentation/pill_count_list_screen.dart';
import '../../features/pill_count/presentation/post_pill_count/post_pill_count_screen.dart';
import '../../features/test/presentation/test_intro/test_intro_screen.dart';
import '../../features/test/presentation/test_list/test_list_screen.dart';
import '../../features/test/presentation/test_session/test_session_screen.dart';
import '../widgets/image_viewer.dart';
import '../widgets/splash.dart';
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
        GoRoute(
          path: '/splash',
          name: 'splash',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: const Splash(),
          ),
        ),
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
            // GoRoute(
            //   path: '/exercise',
            //   name: 'exercise',
            //   pageBuilder: (context, state) => NoTransitionPage(
            //     key: state.pageKey,
            //     child: const ExerciseScheduleScreen(),
            //   ),
            // ),
            GoRoute(
              path: '/exercise',
              name: 'exercise',
              pageBuilder: (context, state) {
                const week = 1;
                const day = 1;

                const level = ExerciseLevel.beginner;

                return NoTransitionPage(
                  key: state.pageKey,
                  child: const ExerciseListScreen(
                    level: level,
                    week: week,
                    day: day,
                  ),
                );
              },
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
        // GoRoute(
        //   path: '/traininglist/:week/:day',
        //   name: 'traininglist',
        //   parentNavigatorKey: kNavigatorKey,
        //   pageBuilder: (context, state) {
        //     final week = int.parse(state.params['week']!);
        //     final day = int.parse(state.params['day']!);
        //
        //     final level = state.extra as ExerciseLevel;
        //
        //     return MaterialPage(
        //       child: ExerciseListScreen(
        //         level: level,
        //         week: week,
        //         day: day,
        //       ),
        //     );
        //   },
        // ),
        GoRoute(
          path: '/exercisesession/:week/:day',
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
          path: '/trainingfinish/:week/:day',
          name: 'trainingfinish',
          parentNavigatorKey: kNavigatorKey,
          pageBuilder: (context, state) {
            final week = int.parse(state.params['week']!);
            final day = int.parse(state.params['day']!);

            final level = state.extra as ExerciseLevel;

            return MaterialPage(
              child: ExerciseFinishScreen(
                level: level,
                day: day,
                week: week,
              ),
            );
          },
        ),
        GoRoute(
          path: '/article',
          name: 'article',
          parentNavigatorKey: kNavigatorKey,
          pageBuilder: (context, state) => const MaterialPage(
            child: ArticleListScreen(),
          ),
          routes: [
            GoRoute(
              path: ':id',
              name: 'articledetail',
              parentNavigatorKey: kNavigatorKey,
              pageBuilder: (context, state) {
                final id = state.params['id'];
                if (id == null) throw Error();
                final articleId = int.parse(state.params['id']!);

                return MaterialPage(
                  child: ArticleDetailScreen(
                    id: articleId,
                  ),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: '/notification',
          name: 'notification',
          parentNavigatorKey: kNavigatorKey,
          pageBuilder: (context, state) => const MaterialPage(
            child: NotificationListScreen(),
          ),
        ),
        GoRoute(
          path: '/assessment',
          name: 'assessment',
          pageBuilder: (context, state) => const MaterialPage(
            child: AssessmentScreen(),
          ),
        ),
        GoRoute(
          path: '/about',
          name: 'about',
          parentNavigatorKey: kNavigatorKey,
          pageBuilder: (context, state) => const MaterialPage(
            child: AboutScreen(),
          ),
        ),
        GoRoute(
          path: '/poster',
          name: 'poster',
          parentNavigatorKey: kNavigatorKey,
          pageBuilder: (context, state) {
            final image = state.extra as String?;
            if (image == null) throw Exception();
            return MaterialPage(
              child: ImageViewer(url: image),
            );
          },
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
                final name = state.extra as String;
                if (testId == null || surveyId == null) throw Error();
                return MaterialPage(
                  child: TestSessionScreen(
                    testId: testId,
                    surveyId: surveyId,
                    surveyName: name,
                  ),
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

    if (!authenticated && !loggingIn) return '/auth';

    return null;
  }

  @override
  void addListener(VoidCallback listener) => routerListener = listener;

  @override
  void removeListener(VoidCallback listener) => routerListener = null;
}
