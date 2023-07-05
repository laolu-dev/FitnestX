import '../../../constants/colors.dart';
import '../../../constants/painter.dart';
import 'package:flutter/material.dart';

class OnboardButton extends StatelessWidget {
  final double angle;
  final void Function()? onTap;
  const OnboardButton({super.key, required this.angle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ProgressPaint(angle: angle),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: 50,
          decoration: const ShapeDecoration(
            gradient: LinearGradient(colors: AppColor.gradientOne),
            shape: OvalBorder(),
          ),
          child: const Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}
