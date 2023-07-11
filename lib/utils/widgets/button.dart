import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;

  const AppButton(
      {super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        boxShadow: const [
          BoxShadow(offset: Offset(6, 7), blurRadius: 8, color: AppColor.shadow)
        ],
        gradient: const LinearGradient(colors: AppColor.gradientOne),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(99),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 129, vertical: 18),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: AppColor.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
