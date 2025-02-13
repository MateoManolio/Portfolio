import 'package:flutter/material.dart';
import '../../core/const.dart';

class Separator extends StatelessWidget {
  final double width;
  final double height;

  const Separator({
    super.key,
    this.width = double.infinity,
    this.height = defaultHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
