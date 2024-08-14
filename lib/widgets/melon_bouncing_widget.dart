import 'package:flutter/material.dart';

class MelonBouncingWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final Duration? duration;
  final double scaleFactor;
  final double? borderRadius;

  const MelonBouncingWidget(
      {super.key,
      required this.child,
      required this.duration,
      required this.onPressed,
      this.borderRadius,
      this.scaleFactor = 1})
      : assert(child != null);

  @override
  MelonBouncingWidgetState createState() => MelonBouncingWidgetState();
}

class MelonBouncingWidgetState extends State<MelonBouncingWidget>
    with SingleTickerProviderStateMixin {
  late double _scale;

  late AnimationController _animate;

  VoidCallback? get onPressed => widget.onPressed;

  Duration? get userDuration => widget.duration;

  double get scaleFactor => widget.scaleFactor;

  @override
  void initState() {
    _animate = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 100),
        lowerBound: 0.0,
        upperBound: 0.1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _animate.value * scaleFactor;
    return GestureDetector(
        onTap: _onTap,
        onLongPress: _onLongPress,
        onLongPressUp: _onTapCancel,
        child: Transform.scale(
          scale: _scale,
          child: _animate.value >= 0.02
              ? ClipRRect(
                  borderRadius:
                      BorderRadius.circular(widget.borderRadius ?? 20),
                  child: widget.child,
                )
              : widget.child,
        ));
  }

  void _onLongPress() {
    _animate.forward();
  }

  void _onTapCancel() {
    _animate.reverse();
  }

  void _onTap() {
    _animate.forward();

    Future.delayed(userDuration ?? const Duration(milliseconds: 10), () {
      _animate.reverse();

      if (onPressed != null) onPressed!();
    });
  }
}
