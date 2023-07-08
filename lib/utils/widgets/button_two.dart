import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AppButtonTwo extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  final BoxShape? shape;

  const AppButtonTwo(
      {super.key,
      required this.onPressed,
      required this.buttonText,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: shape ?? BoxShape.rectangle,
        borderRadius: BorderRadius.circular(14),
        gradient: const LinearGradient(colors: AppColor.gradientTwo),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          fixedSize: const Size(48, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
              color: AppColor.white, fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
