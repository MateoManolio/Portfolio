import 'package:flutter/material.dart';

class MovingText extends StatefulWidget {
  final String text;
  final TextDirection scrollDirection;
  final Duration initialDelay;
  final double speed;
  final double spacing;
  final double width;

  final TextStyle? textStyle;

  MovingText({
    required this.text,
    required this.width,
    this.initialDelay = const Duration(seconds: 0),
    this.scrollDirection = TextDirection.ltr,
    this.speed = 1.0,
    this.spacing = 1.0,
    this.textStyle,
  }) : super(key: ValueKey('${width.hashCode}_${UniqueKey()}'));

  @override
  State<MovingText> createState() => _MovingTextState();
}

class _MovingTextState extends State<MovingText>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;
  late final double _leftBorder;
  late final double _rightBorder;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: (10 / widget.speed).round()),
    );

    _leftBorder = -(widget.text.length + 200).toDouble();
    _rightBorder = widget.width + widget.spacing * widget.text.length;

    if (widget.scrollDirection == TextDirection.ltr) {
      animation = Tween<double>(
        begin: _leftBorder,
        end: _rightBorder,
      ).animate(animationController);
    } else {
      animation = Tween<double>(
        begin: _rightBorder,
        end: _leftBorder,
      ).animate(animationController);
    }

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reset();
        animationController.forward();
      }
    });

    Future.delayed(widget.initialDelay, () {
      if (mounted) {
        animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(animation.value, 0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: widget.spacing),
              child: Text(
                widget.text,
                style: widget.textStyle,
              ),
            ),
          );
        },
      ),
    );
  }
}
