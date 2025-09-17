// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:percent_indicator/percent_indicator.dart';

// Project imports:
import 'text_widget.dart';

class AnimationCircularDurationWidget extends StatefulWidget {
  final int duration;
  final Function(Timer) onFinished;
  final Color progressColor;
  final Color? backgroundColor;
  final Widget? child;
  final double? radius;
  final double? lineWidth;
  final Stream<bool>? timerController;

  const AnimationCircularDurationWidget({
    super.key,
    required this.duration,
    required this.onFinished,
    required this.progressColor,
    this.radius = 35,
    this.lineWidth = 4,
    this.timerController,
    this.child,
    this.backgroundColor,
  });

  @override
  State<AnimationCircularDurationWidget> createState() =>
      _AnimationCircularDurationWidgetState();
}

class _AnimationCircularDurationWidgetState
    extends State<AnimationCircularDurationWidget> {
  late final Duration _duration;
  double percent = 0.0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _duration = Duration(seconds: widget.duration);
    _startTimer();
    widget.timerController?.listen((event) {
      _timer.cancel();
      percent = 0.0;
      if (event) {
        widget.onFinished.call(_timer);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: widget.radius!,
      lineWidth: widget.lineWidth!,
      percent: percent,
      animation: true,
      animationDuration: 1000,
      animateFromLastPercent: true,
      circularStrokeCap: CircularStrokeCap.round,
      center: widget.child ??
          TextWidget(text: formatDuration(_duration * (1 - percent))),
      backgroundColor: widget.backgroundColor ?? Colors.transparent,
      progressColor: widget.progressColor,
    );
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      setState(() {
        percent = (timer.tick / _duration.inSeconds);
        if (percent >= 1.0) {
          _timer.cancel();
          widget.onFinished.call(_timer);
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String formatDuration(Duration duration) {
    final hours = duration.inHours.remainder(24);
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    String hoursStr = hours.toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');
    if (hours != 0) {
      return "$hoursStr:$minutesStr:$secondsStr";
    } else if (minutes != 0) {
      return "$minutesStr:$secondsStr";
    } else {
      return secondsStr;
    }
  }
}
