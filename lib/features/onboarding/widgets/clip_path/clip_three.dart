import 'package:flutter/material.dart';

class ClipThree extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
     final double xScaling = size.width / 375;
    final double yScaling = size.height / 437;
    path.lineTo(0 * xScaling, 208.102 * yScaling);
    path.cubicTo(
      0 * xScaling,
      208.102 * yScaling,
      22.4 * xScaling,
      211.641 * yScaling,
      45.1 * xScaling,
      293.939 * yScaling,
    );
    path.cubicTo(
      67.8 * xScaling,
      376.236 * yScaling,
      130.8 * xScaling,
      437 * yScaling,
      212.967 * xScaling,
      437 * yScaling,
    );
    path.cubicTo(
      295.133 * xScaling,
      437 * yScaling,
      375 * xScaling,
      322.517 * yScaling,
      375 * xScaling,
      248.065 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      248.065 * yScaling,
      375 * xScaling,
      -2 * yScaling,
      375 * xScaling,
      -2 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      -2 * yScaling,
      0 * xScaling,
      -2 * yScaling,
      0 * xScaling,
      -2 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      -2 * yScaling,
      0 * xScaling,
      208.102 * yScaling,
      0 * xScaling,
      208.102 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      208.102 * yScaling,
      0 * xScaling,
      208.102 * yScaling,
      0 * xScaling,
      208.102 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
