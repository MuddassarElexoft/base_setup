import 'package:flutter/material.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 1 Dec, 2025
*/

class DottedLinePainter extends CustomPainter {
  /// CONSTRUCTOR
  DottedLinePainter({
    this.space = 3,
    this.width = 4,
    this.strokeWidth = 2,
    this.color,
  });

  /// PROPS
  final double space;
  final double width;
  final double strokeWidth;
  final Color? color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color ?? Colors.grey
      ..strokeWidth = strokeWidth;

    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + width, 0), paint);
      startX += width + space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
