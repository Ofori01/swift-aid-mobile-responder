import 'package:flutter/material.dart';

class CurvedEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    final firstCurveControl = Offset(0, 20);
    final firstCurveEnd = Offset(30, 20);
    path.quadraticBezierTo(
      firstCurveControl.dx,
      firstCurveControl.dy,
      firstCurveEnd.dx,
      firstCurveEnd.dy,
    );

    final secondCurveControl = Offset(30, 20);
    final secondCurveEnd = Offset(size.width - 30, 20);
    path.quadraticBezierTo(
      secondCurveControl.dx,
      secondCurveControl.dy,
      secondCurveEnd.dx,
      secondCurveEnd.dy,
    );

    final thirdCurveControl = Offset(size.width, 20);
    final thirdCurveEnd = Offset(size.width, 0);
    path.quadraticBezierTo(
      thirdCurveControl.dx,
      thirdCurveControl.dy,
      thirdCurveEnd.dx,
      thirdCurveEnd.dy,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
