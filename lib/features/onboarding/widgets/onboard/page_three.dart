import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';
import '../clip_path/clip_three.dart';
import 'package:flutter/material.dart';

class BoardThree extends StatelessWidget {
  const BoardThree({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              ClipPath(
                clipper: ClipThree(),
                child: Container(
                  height: 405,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: AppColor.gradientOne),
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 58,
                child: Image.asset(Assets.man),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Eat Well',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
