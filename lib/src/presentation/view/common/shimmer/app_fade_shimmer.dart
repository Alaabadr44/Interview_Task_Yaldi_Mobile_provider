// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:fade_shimmer/fade_shimmer.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/config/themes/theme/theme_manager.dart';

class AppFadeShimmer extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Color? highlightColor;
  final Color? baseColor;
  final FadeTheme? fadeTheme;
  final int millisecondsDelay;
  final EdgeInsetsGeometry? padding;

  const AppFadeShimmer({
    super.key,
    required this.width,
    required this.height,
    this.radius = 0,
    this.highlightColor,
    this.baseColor,
    this.fadeTheme,
    this.millisecondsDelay = 300,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: FadeShimmer(
        width: width,
        height: height,
        radius: radius,
        highlightColor: AppColors.textAccentColor.withOpacity(.2),
        baseColor: AppColors.baseColor.withOpacity(.7),
        millisecondsDelay: millisecondsDelay,
        // fadeTheme: fadeTheme ?? (ThemeManager.isLight ? FadeTheme.light : FadeTheme.dark),
      ),
    );
  }
}

class CircleFadeShimmer extends StatelessWidget {
  final double size;
  final Color? baseColor;
  final Color? highlightColor;
  final int millisecondsDelay;
  final EdgeInsetsGeometry? padding;

  const CircleFadeShimmer({
    super.key,
    required this.size,
    this.baseColor,
    this.highlightColor,
    this.millisecondsDelay = 0,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: FadeShimmer.round(
        size: size,
        fadeTheme: ThemeManager.isLight ? FadeTheme.light : FadeTheme.dark,
        baseColor: baseColor,
        highlightColor: highlightColor,
        millisecondsDelay: millisecondsDelay,
      ),
    );
  }
}
