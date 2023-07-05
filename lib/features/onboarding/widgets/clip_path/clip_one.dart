import 'package:flutter/material.dart';

class ClipOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 375;
    final double yScaling = size.height / 406;
    path.lineTo(375 * xScaling, 236.901 * yScaling);
    path.cubicTo(
      375 * xScaling,
      236.901 * yScaling,
      302.933 * xScaling,
      399.894 * yScaling,
      191.1 * xScaling,
      405.5 * yScaling,
    );
    path.cubicTo(
      79.2667 * xScaling,
      411.105 * yScaling,
      0 * xScaling,
      350.512 * yScaling,
      0 * xScaling,
      350.512 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      350.512 * yScaling,
      0 * xScaling,
      -37 * yScaling,
      0 * xScaling,
      -37 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      -37 * yScaling,
      375 * xScaling,
      -37 * yScaling,
      375 * xScaling,
      -37 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      -37 * yScaling,
      375 * xScaling,
      236.901 * yScaling,
      375 * xScaling,
      236.901 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      236.901 * yScaling,
      375 * xScaling,
      236.901 * yScaling,
      375 * xScaling,
      236.901 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
