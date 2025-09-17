// Flutter imports:
import 'package:flutter/material.dart';

class ScaleAnimate extends StatefulWidget {
  final Widget child;
  const ScaleAnimate({super.key, required this.child});

  @override
  State<ScaleAnimate> createState() => _ScaleAnimateState();
}

class _ScaleAnimateState extends State<ScaleAnimate> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: 1.4),
        weight: 0.5,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.4, end: 1),
        weight: 0.5,
      ),
    ]).animate(_controller);
    Future.delayed(
      const Duration(milliseconds: 250),
      () => _controller.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: widget.child,
      builder: (context, child) {
        return Transform.scale(scale: _animation.value, child: child);
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
