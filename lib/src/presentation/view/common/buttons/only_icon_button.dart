// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';

class OnlyIconButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget icon;
  final VoidCallback? onTab;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final OutlinedBorder? shape;

  const OnlyIconButton({
    super.key,
    this.height,
    required this.onTab,
    required this.icon,
    this.margin,
    this.backgroundColor,
    this.shape,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? kButtonHeight,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: IconButton(
          onPressed: onTab,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizeSide.smallSide)),
          ),
          icon: icon,
        ),
      ),
    );
  }
}
