// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:ticker_text/ticker_text.dart';

class TickerWidget extends StatelessWidget {
  final Widget child;
  final int speed;
  final Axis scrollDirection;

  const TickerWidget({
    super.key,
    required this.child,
    this.speed = 50,
    this.scrollDirection = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: TickerText(
        scrollDirection: scrollDirection,
        speed: speed,
        startPauseDuration: const Duration(milliseconds: 2000),
        endPauseDuration: const Duration(milliseconds: 1500),
        child: child,
      ),
    );
  }
}
