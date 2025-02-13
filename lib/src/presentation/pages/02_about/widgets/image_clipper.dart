import 'dart:math';

import 'package:flutter/material.dart';

class ImageClipper extends CustomClipper<Path> {
  final double rotationAngle;

  ImageClipper({this.rotationAngle = 0.0});

  @override
  Path getClip(Size size) {
    final path = Path();
    double width = size.width;
    double height = size.height;

    path.addOval(Rect.fromCenter(
      center: Offset(width / 2, height / 2),
      width: width * 0.7,
      height: height * 0.7,
    ));

    int numPoints = 8;

    double normalizedAngle = rotationAngle * 2 * pi;

    for (int i = 0; i <= numPoints; i++) {
      double angle = (i * 2 * pi / numPoints) + normalizedAngle;
      double x = width / 2 + cos(angle) * width * 0.35;
      double y = height / 2 + sin(angle) * height * 0.35;

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        double controlX = width / 2 + cos(angle - pi / numPoints) * width * 0.5;
        double controlY =
            height / 2 + sin(angle - pi / numPoints) * height * 0.5;
        path.quadraticBezierTo(controlX, controlY, x, y);
      }
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper is ImageClipper &&
        oldClipper.rotationAngle != rotationAngle;
  }
}
