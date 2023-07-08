import 'package:fitnextx/features/auth/screens/goals.dart';
import 'package:fitnextx/features/auth/screens/login.dart';
import 'package:fitnextx/features/auth/screens/profile.dart';
import 'package:fitnextx/features/auth/screens/signup.dart';

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
    GoRoute(
      path: '/onboard/signup',
      name: 'signup',
      builder: (context, _) => const Signup(),
    ),
      GoRoute(
      path: '/onboard/login',
      name: 'login',
      builder: (context, _) => const Login(),
    ),
     GoRoute(
      path: '/onboard/signup/profile',
      name: 'profile',
      builder: (context, _) => const ProfileDetails(),
    ),
     GoRoute(
      path: '/onboard/signup/profile/goals',
      name: 'goals',
      builder: (context, _) => const Goals(),
    ),


  ],
);

GoRouter get router => _router;
