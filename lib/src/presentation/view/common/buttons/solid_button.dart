// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';
import '../text_widget.dart';

class SolidButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final double? elevation;
  final String? title;
  final Widget? child;
  final TextStyle? style;
  final Color? backgroundColor;
  final VoidCallback? onTab;
  final OutlinedBorder? shape;
  final EdgeInsetsGeometry? margin;

  const SolidButton({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.style,
    required this.title,
    required this.onTab,
    this.backgroundColor,
    this.child,
    this.shape,
    this.margin,
    this.elevation,
  }) : assert(title != null || child != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
          onPressed: onTab,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? AppColors.primaryColor,
            surfaceTintColor: backgroundColor ?? AppColors.primaryColor,
            shape: shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? kRadiusMedium)),
            padding: EdgeInsets.zero,
            elevation: elevation,
            shadowColor: elevation != null && elevation == 0 ? Colors.transparent : null,
            // foregroundColor: AppColors.baseColor,
            minimumSize: Size(width ?? context.sizeSide.width, height ?? kButtonHeight),
            maximumSize: Size(width ?? context.sizeSide.width, height ?? kButtonHeight),
          ),
          child: child ??
              TextWidget(
                text: title!,
                style: style ?? context.headlineS?.copyWith(color: AppColors.baseColor),
              )),
    );
  }
}
