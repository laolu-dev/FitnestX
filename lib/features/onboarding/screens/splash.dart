import 'package:fitnextx/constants/assets.dart';
import 'package:fitnextx/constants/colors.dart';
import 'package:fitnextx/utils/widgets/button.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.pGradTwo,
              AppColor.pGradOne,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .4),
            Image.asset(Assets.lightLogo),
            const Text('Everybody Can Train.'),
            SizedBox(height: MediaQuery.of(context).size.height * .4),
            TextButton(
              onPressed: () {},
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
