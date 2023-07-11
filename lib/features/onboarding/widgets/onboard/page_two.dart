import 'package:flutter/material.dart';

import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';
import '../clip_path/clip_two.dart';

class BoardTwo extends StatelessWidget {
  const BoardTwo({super.key});

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
                clipper: ClipTwo(),
                child: Container(
                  height: 219,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: AppColor.gradientOne),
                  ),
                ),
              ),
              Positioned(
                left: 75,
                top: 90,
                child: Image.asset(Assets.runner),
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
                  'Get Burn',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
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
