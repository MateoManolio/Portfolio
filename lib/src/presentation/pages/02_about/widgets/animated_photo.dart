import 'dart:math';

import 'package:flutter/material.dart';

import 'image_clipper.dart';

class AnimatedPhoto extends StatefulWidget implements PreferredSizeWidget {
  const AnimatedPhoto({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  State<AnimatedPhoto> createState() => _AnimatedPhotoState();

  @override
  Size get preferredSize => Size.fromWidth(screenWidth * 0.35);
}

class _AnimatedPhotoState extends State<AnimatedPhoto>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    );

    animation =
        Tween<double>(begin: 0.0, end: 2 * pi).animate(animationController);

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reset();
        animationController.forward();
      }
    });

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget? child) => Center(
          child: ClipPath(
            clipper: ImageClipper(rotationAngle: animationController.value),
            child: Image.asset(
              'assets/images/profile_picture.jpg',
              fit: BoxFit.cover,
              width: widget.screenWidth * 0.35,
              height: widget.screenWidth * 0.35,
            ),
          ),
        ),
      ),
    );
  }
}
