// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';
import '../text_widget.dart';

class OutlineButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final String? title;
  final Widget? child;
  final TextStyle? style;
  final Color? backgroundColor;
  final Color? borderOutlinedColor;
  final VoidCallback? onTab;
  final OutlinedBorder? shape;
  final EdgeInsetsGeometry? margin;

  const OutlineButton({
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
    this.borderOutlinedColor,
  }) : assert(title != null || child != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.sizeSide.width,
      height: height ?? kButtonHeight,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: OutlinedButton(
          onPressed: onTab,
          style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            side: borderOutlinedColor != null ? BorderSide(
              color: borderOutlinedColor!,
              width: 2
            ) : null,
            shape: shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? kRadiusMedium)),
            padding: EdgeInsets.zero,
          ),
          child: child ?? TextWidget(text: title!, style: style),
        ),
      ),
    );
  }
}
