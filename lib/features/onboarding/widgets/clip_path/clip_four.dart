import 'package:flutter/material.dart';

class ClipFour extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
   final double xScaling = size.width / 375;
    final double yScaling = size.height / 347;
    path.lineTo(0 * xScaling, 118.599 * yScaling);
    path.cubicTo(
      0 * xScaling,
      118.599 * yScaling,
      13.8333 * xScaling,
      76.4389 * yScaling,
      42.7333 * xScaling,
      87.378 * yScaling,
    );
    path.cubicTo(
      83.0333 * xScaling,
      102.606 * yScaling,
      186.333 * xScaling,
      346.158 * yScaling,
      294.733 * xScaling,
      346.158 * yScaling,
    );
    path.cubicTo(
      350.3 * xScaling,
      346.158 * yScaling,
      375 * xScaling,
      303.599 * yScaling,
      375 * xScaling,
      303.599 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      303.599 * yScaling,
      375 * xScaling,
      -27 * yScaling,
      375 * xScaling,
      -27 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      -27 * yScaling,
      0 * xScaling,
      -27 * yScaling,
      0 * xScaling,
      -27 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      -27 * yScaling,
      0 * xScaling,
      118.599 * yScaling,
      0 * xScaling,
      118.599 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      118.599 * yScaling,
      0 * xScaling,
      118.599 * yScaling,
      0 * xScaling,
      118.599 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
