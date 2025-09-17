// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';
import '../text_widget.dart';

class TextIconButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final String? title;
  final Widget icon;
  final TextStyle? style;
  final VoidCallback? onTab;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final OutlinedBorder? shape;

  const TextIconButton({
    super.key,
    this.height,
    this.style,
    required this.title,
    required this.onTab,
    required this.icon,
    this.margin,
    this.backgroundColor,
    this.shape,
    this.width,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? kButtonHeight,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: TextButton.icon(
          onPressed: onTab,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape:
                shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? context.sizeSide.smallSide)),
            // foregroundColor: AppColors.secondaryColor,
          ),
          label: TextWidget(
              text: title!,
              style: style ?? context.bodyL?.copyWith(fontWeight: FontWeight.w500, color: AppColors.reverseBaseColor)),
          icon: icon,
        ),
      ),
    );
  }
}
