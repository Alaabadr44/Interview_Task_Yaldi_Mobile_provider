// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'painter/bubbles_painter.dart';
import 'painter/circle_painter.dart';
import 'util/bubble_model.dart';

class BubbleWidget extends StatefulWidget {
  final Widget child;
  final double size;
  final Duration? animatePeriod;
  final Duration? afterDuration;
  const BubbleWidget({
    super.key,
    required this.child,
    required this.size,
    this.animatePeriod,
    this.afterDuration,
  });

  @override
  State<BubbleWidget> createState() => _BubbleWidgetState();
}

class _BubbleWidgetState extends State<BubbleWidget> with TickerProviderStateMixin {
  AnimationController? _controller;
  late Animation<double> _outerCircleAnimation;
  late Animation<double> _innerCircleAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _bubblesAnimation;

  final BubblesColor _bubblesColor = const BubblesColor(
    dotPrimaryColor: Color(0xFFFFC107),
    dotSecondaryColor: Color(0xFFFF9800),
    dotThirdColor: Color(0xFFE31E26),
    dotLastColor: Color(0xFFF44336),
  );

  @override
  void initState() {
    super.initState();
    _initAnimations();
  }

  @override
  void didUpdateWidget(BubbleWidget oldWidget) {
    _initAnimations();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller!,
      builder: (BuildContext c, Widget? w) {
        return Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Positioned(
              top: (widget.size - widget.size * 2.0) / 2.0,
              left: (widget.size - widget.size * 2.0) / 2.0,
              child: CustomPaint(
                size: Size(widget.size * 2.0, widget.size * 2.0),
                painter: BubblesPainter(
                  currentProgress: _bubblesAnimation.value,
                  color1: _bubblesColor.dotPrimaryColor,
                  color2: _bubblesColor.dotSecondaryColor,
                  color3: _bubblesColor.dotThirdColorReal,
                  color4: _bubblesColor.dotLastColorReal,
                ),
              ),
            ),
            Positioned(
              top: (widget.size - widget.size * 0.8) / 2.0,
              left: (widget.size - widget.size * 0.8) / 2.0,
              child: CustomPaint(
                size: Size(widget.size * 0.8, widget.size * 0.8),
                painter: CirclePainter(
                  innerCircleRadiusProgress: _innerCircleAnimation.value,
                  outerCircleRadiusProgress: _outerCircleAnimation.value,
                  circleColor: const CircleColor(
                    start: Color(0xFFFF5722),
                    end: Color(0xFFFFC107),
                  ),
                ),
              ),
            ),
            Container(
              width: widget.size,
              height: widget.size,
              alignment: Alignment.center,
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: SizedBox(
                  height: widget.size,
                  width: widget.size,
                  child: widget.child,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _initAnimations() {
    _controller?.dispose(); // dispose of previous controller if any
    _controller = AnimationController(
      duration: widget.animatePeriod ?? const Duration(seconds: 2),
      vsync: this,
    );
    _outerCircleAnimation = Tween<double>(
      begin: 0.1,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: const Interval(
          0.0,
          0.3,
          curve: Curves.ease,
        ),
      ),
    );
    _innerCircleAnimation = Tween<double>(
      begin: 0.2,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: const Interval(
          0.2,
          0.5,
          curve: Curves.ease,
        ),
      ),
    );
    final Animation<double> animate = Tween<double>(
      begin: 0.2,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: const Interval(
          0.35,
          0.7,
          curve: OvershootCurve(),
        ),
      ),
    );
    _scaleAnimation = animate;
    _bubblesAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: const Interval(
          0.1,
          1.0,
          curve: Curves.decelerate,
        ),
      ),
    );

    Future.delayed(widget.afterDuration ?? const Duration(milliseconds: 100), () {
      if (mounted) {
        _controller?.forward();
      }
    });
  }
}
