// Flutter imports:

import 'package:flutter_application_1/src/core/config/app_colors.dart';
import 'package:flutter/material.dart';

class AppIconBtn extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? backGroundColor;
  const AppIconBtn({
    super.key,
    required this.child,
    this.margin,
    this.backGroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsetsDirectional.all(10),
      padding: padding,
      decoration: BoxDecoration(
        color: backGroundColor ?? AppColors.grey50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
