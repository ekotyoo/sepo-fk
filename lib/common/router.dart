import 'package:go_router/go_router.dart';
import '../features/onboarding/onboarding_screen.dart';

final kRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => OnboardingScreen(),
    ),
  ],
);
