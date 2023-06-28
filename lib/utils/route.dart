import 'package:fitnextx/features/onboarding/screens/splash.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, _) => const Splash(),
    ),
  ],
);

GoRouter get router => _router;
