import 'dart:ui' as ui;
import 'dart:math' as math;

import 'colors.dart';
import 'package:flutter/material.dart';

class ProgressPaint extends CustomPainter {
  double angle;
  ProgressPaint({required this.angle});
  @override
  void paint(Canvas canvas, Size size) {
    const start = Offset(0, 0);
    final end = Offset(size.width, size.height);
    final center = Offset(size.width / 2, size.height / 2);

    //Paint configuration
    final paint = Paint()
      ..shader = ui.Gradient.linear(start, end, AppColor.gradientOne)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    //Arc properties
    Rect rect = Rect.fromCenter(
      center: center,
      width: size.width + 15,
      height: size.height + 15,
    );
    const startAngle = (3 * math.pi) / 2;
    //Sweep Angle: [angle] would get values from 1 - 4
    //multiplying any of the value gotten from this range would give
    //the angle of sweep i.e. assuming [angle] = 1, then 
    //[angle] =  1 * (pi/2) = 90 degrees,if [angle] = 2, then 
    //[angle] = 2 * (pi/2) = 180 degrees etc 
    angle *= (math.pi) / 2;
    canvas.drawArc(rect, startAngle, angle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
