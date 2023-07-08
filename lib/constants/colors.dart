import 'package:flutter/material.dart';

class AppColor {
  //Gradient Colors
  static const pGradOne = Color(0xFF92A3FD);
  static const pGradTwo = Color(0xFF9DCEFF);
  static const sGradOne = Color(0xFFC58BF2);
  static const sGradTwo = Color(0xFFEEA4CE);

//Other Colors
  static const black = Color(0xFF1D1517);
  static const white = Color(0xFFFFFFFF);
  static const grayOne = Color(0xFF7B6F72);
  static const grayTwo = Color(0xffaca3a5);
  static const grayThree = Color(0xffddd9da);
  static const border = Color(0xfff7f8f8);
  static const shadow = Color.fromRGBO(149, 173, 254, .3);

  //Linear Gradients
  static const gradientOne = [pGradTwo, pGradOne];
  static const gradientTwo = [sGradOne, sGradTwo];
}
