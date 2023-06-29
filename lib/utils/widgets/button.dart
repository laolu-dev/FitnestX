import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  final Color? bgColor;
  final Color? borderColor;
  final List<Color>? gradientColor;
  const AppButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.bgColor,
    this.borderColor,
    this.gradientColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColor ??
              [
                AppColor.pGradTwo,
                AppColor.pGradOne,
              ],
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 129, vertical: 18),
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(99),
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
