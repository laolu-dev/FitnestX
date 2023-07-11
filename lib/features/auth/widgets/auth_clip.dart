import 'package:flutter/material.dart';

class AuthClipOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
     final double xScaling = size.width / 349;
    final double yScaling = size.height / 263;
    path.lineTo(172.418 * xScaling, 257.733 * yScaling);
    path.cubicTo(
      154.057 * xScaling,
      254.451 * yScaling,
      138.191 * xScaling,
      243.255 * yScaling,
      119.64 * xScaling,
      241.323 * yScaling,
    );
    path.cubicTo(
      90.4308 * xScaling,
      238.283 * yScaling,
      47.6928 * xScaling,
      268.531 * yScaling,
      32.667 * xScaling,
      243.185 * yScaling,
    );
    path.cubicTo(
      16.2989 * xScaling,
      215.575 * yScaling,
      75.2261 * xScaling,
      186.471 * yScaling,
      68.4976 * xScaling,
      155.055 * yScaling,
    );
    path.cubicTo(
      61.9012 * xScaling,
      124.254 * yScaling,
      4.28444 * xScaling,
      122.988 * yScaling,
      0.233613 * xScaling,
      91.7469 * yScaling,
    );
    path.cubicTo(
      -3.11913 * xScaling,
      65.8894 * yScaling,
      30.3622 * xScaling,
      48.3126 * yScaling,
      53.0038 * xScaling,
      35.561 * yScaling,
    );
    path.cubicTo(
      73.2949 * xScaling,
      24.1331 * yScaling,
      97.6536 * xScaling,
      24.2599 * yScaling,
      120.911 * xScaling,
      23.7817 * yScaling,
    );
    path.cubicTo(
      138.574 * xScaling,
      23.4186 * yScaling,
      155.117 * xScaling,
      36.7014 * yScaling,
      172.418 * xScaling,
      33.1057 * yScaling,
    );
    path.cubicTo(
      195.893 * xScaling,
      28.2267 * yScaling,
      211.354 * xScaling,
      -0.293305 * yScaling,
      235.324 * xScaling,
      0.00226142 * yScaling,
    );
    path.cubicTo(
      258.009 * xScaling,
      0.281981 * yScaling,
      292.755 * xScaling,
      11.8041 * yScaling,
      293.04 * xScaling,
      34.593 * yScaling,
    );
    path.cubicTo(
      293.461 * xScaling,
      68.1734 * yScaling,
      224.678 * xScaling,
      85.1647 * yScaling,
      236.784 * xScaling,
      116.469 * yScaling,
    );
    path.cubicTo(
      251.667 * xScaling,
      154.956 * yScaling,
      325.169 * xScaling,
      135.256 * yScaling,
      345.781 * xScaling,
      170.977 * yScaling,
    );
    path.cubicTo(
      359.031 * xScaling,
      193.939 * yScaling,
      328.4 * xScaling,
      223.001 * yScaling,
      307.953 * xScaling,
      239.808 * yScaling,
    );
    path.cubicTo(
      288.064 * xScaling,
      256.155 * yScaling,
      260.567 * xScaling,
      258.591 * yScaling,
      235.089 * xScaling,
      261.961 * yScaling,
    );
    path.cubicTo(
      214.067 * xScaling,
      264.742 * yScaling,
      193.293 * xScaling,
      261.465 * yScaling,
      172.418 * xScaling,
      257.733 * yScaling,
    );
    path.cubicTo(
      172.418 * xScaling,
      257.733 * yScaling,
      172.418 * xScaling,
      257.733 * yScaling,
      172.418 * xScaling,
      257.733 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
