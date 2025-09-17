// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';
import '../buttons/button_widget.dart';

class BookNowButton extends StatelessWidget {
  final VoidCallback onPress;
  final String? title;
  final Widget? child;
  final Color? backgroundBtnColor;
  final Color? backgroundColor;
  final Color? shadowColor;
  const BookNowButton({
    super.key,
    required this.onPress,
    this.title,
    this.child,
    this.backgroundBtnColor,
    this.backgroundColor,
    this.shadowColor,
  }) : assert(title != null || child != null);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundBtnColor,
        boxShadow: [
          BoxShadow(
              color: shadowColor ?? Colors.transparent,
              offset: const Offset(0, 10),
              blurRadius: 24,
              spreadRadius: 4)
        ],
      ),
      child: ButtonWidget(
        margin: EdgeInsets.symmetric(
          horizontal: context.sizeSide.smallSide * .2,
          vertical: context.sizeSide.smallSide * .05,
        ),
        onTab: onPress,
        title: title,
        style: context.bodyL,
        backgroundColor: backgroundColor,
        radius: kRadiusLarge,
        child: child,
      ),
    );
  }
}
