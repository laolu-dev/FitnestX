
import '../features/auth/screens/goals.dart';
import '../features/auth/screens/login.dart';
import '../features/auth/screens/profile.dart';
import '../features/auth/screens/signup.dart';
import '../features/auth/screens/welcome.dart';
import '../features/dashboard/screens/dashboard.dart';
import 'package:flutter/material.dart';

import '../features/onboarding/onboarding.dart';

import '../features/onboarding/splash.dart';

class AppRoute {
  static Map<String, Widget Function(BuildContext)> routes = {
    Splash.id: (context) => const Splash(),
    Onboarding.id: (context) => const Onboarding(),
    Signup.id: (context) => const Signup(),
    ProfileDetails.id: (context) => const ProfileDetails(),
    Login.id: (context) => const Login(),
    Goals.id: (context) => const Goals(),
    Welcome.id: (context) => const Welcome(),
    Dashboard.id: (context) => const Dashboard()
  };
}
