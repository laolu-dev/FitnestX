import 'package:flutter/material.dart';

import 'utils/route.dart';

void main() {
  runApp(const FitnestX());
}

class FitnestX extends StatelessWidget {
  const FitnestX({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FitnestX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom())),
      routerConfig: router,
    );
  }
}