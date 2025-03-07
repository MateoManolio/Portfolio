import 'package:flutter/material.dart';

class MovingText extends StatefulWidget {
  final String text;
  final TextDirection scrollDirection;
  final Duration initialDelay;
  final double speed;
  final double spacing;
  final double width;
  final double widgetWidth;
  final double leftBorder;
  final TextStyle? textStyle;
  final Duration? repeatDuration;

  MovingText({
    required this.text,
    required this.width,
    required this.widgetWidth,
    this.initialDelay = const Duration(seconds: 0),
    this.scrollDirection = TextDirection.ltr,
    this.speed = 1.0,
    this.spacing = 1.0,
    this.textStyle,
    this.repeatDuration,
    this.leftBorder = 0,
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

    _leftBorder = -(widget.text.length + widget.leftBorder);
    _rightBorder = widget.width + widget.spacing * widget.text.length;

    animation = Tween<double>(
      begin: widget.scrollDirection == TextDirection.ltr
          ? _leftBorder
          : _rightBorder,
      end: widget.scrollDirection == TextDirection.ltr
          ? _rightBorder
          : _leftBorder,
    ).animate(animationController);

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        Future.delayed(widget.repeatDuration ?? Duration.zero, () {
          if (mounted) {
            animationController
              ..reset()
              ..forward();
          }
        });
      }
    });

    Future.delayed(widget.initialDelay, () {
      if (mounted) animationController.forward();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (_, __) => Transform.translate(
        offset: Offset(animation.value, 0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.spacing),
          child: SizedBox(
            width: widget.widgetWidth,
            child: Center(
              child: Text(
                widget.text,
                style: widget.textStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
