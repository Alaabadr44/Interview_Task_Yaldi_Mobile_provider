import 'package:flutter/material.dart';
import '../../../../core/config/app_colors.dart';

/// A reusable general container widget that provides consistent styling
/// throughout the app with customizable properties.
class GeneralContainer extends StatelessWidget {
  /// The child widget to be contained
  final Widget child;

  /// Background color of the container
  final Color? backgroundColor;

  /// Border radius for rounded corners
  final double borderRadius;

  /// Shadow color
  final Color? shadowColor;

  /// Shadow blur radius
  final double shadowBlurRadius;

  /// Shadow offset
  final Offset shadowOffset;

  /// Border color
  final Color? borderColor;

  /// Border width
  final double borderWidth;

  /// Padding around the child
  final EdgeInsetsGeometry? padding;

  /// Margin around the container
  final EdgeInsetsGeometry? margin;

  /// Gradient colors for background
  final List<Color>? gradientColors;

  /// Gradient direction
  final AlignmentGeometry? gradientBegin;
  final AlignmentGeometry? gradientEnd;

  /// Whether to show shadow
  final bool showShadow;

  /// Whether to show border
  final bool showBorder;

  /// Whether to show gradient
  final bool showGradient;

  const GeneralContainer({
    super.key,
    required this.child,
    this.backgroundColor,
    this.borderRadius = 16.0,
    this.shadowColor,
    this.shadowBlurRadius = 10.0,
    this.shadowOffset = const Offset(0, 5),
    this.borderColor,
    this.borderWidth = 1.0,
    this.padding,
    this.margin,
    this.gradientColors,
    this.gradientBegin,
    this.gradientEnd,
    this.showShadow = true,
    this.showBorder = false,
    this.showGradient = false,
  });

  /// Factory constructor for a white container with shadow (most common use case)
  factory GeneralContainer.white({
    Key? key,
    required Widget child,
    double borderRadius = 16.0,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Color? shadowColor,
    double shadowBlurRadius = 10.0,
    Offset shadowOffset = const Offset(0, 5),
  }) {
    return GeneralContainer(
      key: key,
      child: child,
      backgroundColor: Colors.white,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
      shadowColor: shadowColor ?? Colors.black.withOpacity(0.05),
      shadowBlurRadius: shadowBlurRadius,
      shadowOffset: shadowOffset,
    );
  }

  /// Factory constructor for a primary colored container
  factory GeneralContainer.primary({
    Key? key,
    required Widget child,
    double borderRadius = 16.0,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Color? shadowColor,
    double shadowBlurRadius = 15.0,
    Offset shadowOffset = const Offset(0, 8),
  }) {
    return GeneralContainer(
      key: key,
      child: child,
      backgroundColor: AppColors.primaryColor,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
      shadowColor: shadowColor ?? AppColors.primaryColor.withOpacity(0.3),
      shadowBlurRadius: shadowBlurRadius,
      shadowOffset: shadowOffset,
    );
  }

  /// Factory constructor for a gradient container
  factory GeneralContainer.gradient({
    Key? key,
    required Widget child,
    required List<Color> gradientColors,
    double borderRadius = 16.0,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? gradientBegin,
    AlignmentGeometry? gradientEnd,
    Color? shadowColor,
    double shadowBlurRadius = 10.0,
    Offset shadowOffset = const Offset(0, 5),
  }) {
    return GeneralContainer(
      key: key,
      child: child,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
      gradientColors: gradientColors,
      gradientBegin: gradientBegin ?? Alignment.topCenter,
      gradientEnd: gradientEnd ?? Alignment.bottomCenter,
      showGradient: true,
      shadowColor: shadowColor,
      shadowBlurRadius: shadowBlurRadius,
      shadowOffset: shadowOffset,
    );
  }

  /// Factory constructor for an outlined container
  factory GeneralContainer.outlined({
    Key? key,
    required Widget child,
    double borderRadius = 16.0,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Color? borderColor,
    double borderWidth = 2.0,
    Color? backgroundColor,
    Color? shadowColor,
    double shadowBlurRadius = 10.0,
    Offset shadowOffset = const Offset(0, 5),
  }) {
    return GeneralContainer(
      key: key,
      child: child,
      backgroundColor: backgroundColor ?? Colors.white,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
      borderColor: borderColor ?? AppColors.primaryColor.withOpacity(0.3),
      borderWidth: borderWidth,
      showBorder: true,
      shadowColor: shadowColor ?? Colors.black.withOpacity(0.05),
      shadowBlurRadius: shadowBlurRadius,
      shadowOffset: shadowOffset,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: showGradient ? null : backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border:
            showBorder
                ? Border.all(
                  color: borderColor ?? AppColors.primaryColor,
                  width: borderWidth,
                )
                : null,
        gradient:
            showGradient && gradientColors != null
                ? LinearGradient(
                  begin: gradientBegin ?? Alignment.topCenter,
                  end: gradientEnd ?? Alignment.bottomCenter,
                  colors: gradientColors!,
                )
                : null,
        boxShadow:
            showShadow
                ? [
                  BoxShadow(
                    color: shadowColor ?? Colors.black.withOpacity(0.05),
                    blurRadius: shadowBlurRadius,
                    offset: shadowOffset,
                  ),
                ]
                : null,
      ),
      child: child,
    );
  }
}

