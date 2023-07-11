import 'package:flutter/material.dart';

import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';
import '../clip_path/clip_one.dart';

class BoardOne extends StatelessWidget {
  const BoardOne({super.key});

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
                clipper: ClipOne(),
                child: Container(
                  height: 405,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: AppColor.gradientOne),
                  ),
                ),
              ),
              Positioned(
                left: 100,
                top: 70,
                child: Image.asset(Assets.woman),
              )
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
                  'Track Your Goal',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
