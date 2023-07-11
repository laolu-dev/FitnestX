import 'package:fitnextx/features/dashboard/screens/dashboard.dart';

import '../../../constants/colors.dart';

import '../../../utils/widgets/button.dart';
import 'package:flutter/material.dart';

import '../../../constants/assets.dart';

class Welcome extends StatelessWidget {
  static String id = '/welcome';
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              SizedBox(
                width: screenWidth,
                child: Stack(
                  children: [
                    Center(child: Image.asset(Assets.welcomeVector)),
                    Center(child: Image.asset(Assets.welcome))
                  ],
                ),
              ),
              const SizedBox(height: 45),
              Column(
                children: [
                  const Text(
                    'Welcome Stefani,',
                    style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 5),
                  const SizedBox(
                    width: 214,
                    child: Text(
                      'You are all set now, let’s reach your goals together with us',
                      style: TextStyle(color: AppColor.grayOne),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 280),
                  AppButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Dashboard.id);
                      },
                      buttonText: 'To Home')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
