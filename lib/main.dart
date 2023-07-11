import 'package:flutter/material.dart';

import 'constants/themes.dart';
import 'utils/route.dart';

void main() {
  runApp(const FitnestX());
}

class FitnestX extends StatelessWidget {
  const FitnestX({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnestX',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      routes: AppRoute.routes,
    );
  }
}
