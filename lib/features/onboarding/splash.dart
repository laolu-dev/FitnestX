import 'onboarding.dart';

import '../../constants/assets.dart';
import '../../constants/colors.dart';

import 'package:flutter/material.dart';


class Splash extends StatelessWidget {
  static String id = '/';
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: AppColor.gradientOne),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .4),
            Image.asset(Assets.lightLogo),
            const Text('Everybody Can Train.'),
            SizedBox(height: MediaQuery.of(context).size.height * .4),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed(Onboarding.id),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 129, vertical: 18),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColor.black),
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
