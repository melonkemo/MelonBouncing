import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final bool disableScale;
  final double? x;
  final double? y;
  final double? z;

  const OnHover(
      {super.key,
      required this.builder,
      this.disableScale = false,
      this.x,
      this.y,
      this.z});

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    //final hovered = Matrix4.identity()..translate(0,-10,0);
    final hovered = Matrix4.identity()
      ..translate(
          (widget.x ?? 5.0).toDouble(), (widget.y ?? 6.0).toDouble(), 0.0)
      ..scale((widget.z ?? 0.92).toDouble(), (widget.z ?? 0.92).toDouble());
    final transform = isHovered
        ? (widget.disableScale ? Matrix4.identity() : hovered)
        : Matrix4.identity();
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
