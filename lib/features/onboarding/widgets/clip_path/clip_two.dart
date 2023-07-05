import 'package:flutter/material.dart';

class ClipTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 375;
    final double yScaling = size.height / 219;
    path.lineTo(0 * xScaling, 214.043 * yScaling);
    path.cubicTo(
      0 * xScaling,
      214.043 * yScaling,
      59.4333 * xScaling,
      90.4374 * yScaling,
      122.033 * xScaling,
      90.4374 * yScaling,
    );
    path.cubicTo(
      184.633 * xScaling,
      90.4374 * yScaling,
      228.467 * xScaling,
      218.742 * yScaling,
      291.067 * xScaling,
      218.742 * yScaling,
    );
    path.cubicTo(
      353.667 * xScaling,
      218.742 * yScaling,
      346.733 * xScaling,
      151.957 * yScaling,
      375 * xScaling,
      151.957 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      151.957 * yScaling,
      375 * xScaling,
      -40 * yScaling,
      375 * xScaling,
      -40 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      -40 * yScaling,
      0 * xScaling,
      -40 * yScaling,
      0 * xScaling,
      -40 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      -40 * yScaling,
      0 * xScaling,
      214.043 * yScaling,
      0 * xScaling,
      214.043 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      214.043 * yScaling,
      0 * xScaling,
      214.043 * yScaling,
      0 * xScaling,
      214.043 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
