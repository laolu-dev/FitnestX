import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';
import 'package:flutter/material.dart';

import '../clip_path/clip_four.dart';

class BoardFour extends StatelessWidget {
  const BoardFour({super.key});

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
                clipper: ClipFour(),
                child: Container(
                  height: 405,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: AppColor.gradientOne),
                  ),
                ),
              ),
              Positioned(
                left: 85,
                top: 188,
                child: Image.asset(Assets.womanSitting),
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
                SizedBox(
                  width: 181,
                  child: Text(
                    'Improve Sleep Quality',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
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