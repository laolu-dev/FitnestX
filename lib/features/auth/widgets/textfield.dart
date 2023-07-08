import 'package:fitnextx/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboard;
  final bool? showText;
  final String? hint;
  final String? icon;
  final Widget? suffixIcon;
  final void Function()? onTap;
  const AppTextField({
    super.key,
    this.controller,
    this.keyboard,
    this.showText,
    this.hint,
    this.icon,
    this.suffixIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        onTap: onTap,
        obscureText: showText ?? false,
        decoration: InputDecoration(
          prefixIcon: Image.asset(icon ?? '', width: 18, height: 18),
          filled: true,
          fillColor: AppColor.border,
          hintText: hint,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
