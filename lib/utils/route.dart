import '../features/onboarding/onboarding.dart';
import 'package:go_router/go_router.dart';

import '../features/onboarding/splash.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, _) => const Splash(),
    ),
     GoRoute(
      path: '/onboard',
      name: 'onboard',
      builder: (context, _) => const Onboarding(),
    ),
  ],
);

GoRouter get router => _router;
