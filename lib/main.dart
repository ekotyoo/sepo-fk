import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sepo_app/common/routing/router.dart';
import 'package:sepo_app/common/theme/sepo_theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider.notifier);
    final routerConfig = GoRouter(
      navigatorKey: kNavigatorKey,
      initialLocation: '/auth',
      routes: appRouter.routes,
      redirect: appRouter.redirect,
      refreshListenable: appRouter,
      debugLogDiagnostics: true,
    );

    return MaterialApp.router(
      routerConfig: routerConfig,
      theme: SepoTheme.light,
    );
  }
}