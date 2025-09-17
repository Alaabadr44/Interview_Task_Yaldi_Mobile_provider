// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../../core/utils/extension.dart';

import 'download_button.dart';
import 'only_icon_button.dart';
import 'outline_button.dart';
import 'solid_button.dart';
import 'text_icon_button.dart';

enum ButtonType { solid, outline, download, textIcon, onlyIcon }

class ButtonWidget extends StatelessWidget {
  final ButtonType type;
  final String? title;
  final Widget? child;
  final Widget Function(
    ({double? progress, String? title, bool? underProcessing}) progressData,
  )?
  downloadProgressChild;
  final VoidCallback? onTab;
  final double? width;
  final double? height;
  final double? radius;
  final double? elevation;
  // final double? percentage;
  final TextStyle? style;
  final Color? backgroundColor;
  final Color? borderOutlinedColor;
  final Color? progressColor;
  final OutlinedBorder? shape;
  final EdgeInsetsGeometry? margin;
  final Bloc? bloc;

  const ButtonWidget({
    super.key,
    this.type = ButtonType.solid,
    this.title,
    required this.onTab,
    this.width,
    this.height,
    this.radius,
    this.style,
    this.backgroundColor,
    // this.percentage,
    this.progressColor,
    this.child,
    this.downloadProgressChild,
    this.shape,
    this.margin,
    this.bloc,
    this.elevation,
    this.borderOutlinedColor,
  }) : assert(
         (title != null || child != null || downloadProgressChild != null),
         'Either title, child, or downloadProgressChild must be provided',
       );

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      ButtonType.solid => SolidButton(
        title: title,
        onTab:
            onTab != null
                ? () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  onTab?.call();
                }
                : null,
        height: height ?? (context.isTablet ? 72 : null),
        width: width,
        radius: radius,
        shape: shape,
        style: style,
        backgroundColor: backgroundColor,
        margin: margin,
        elevation: elevation,
        child: child,
      ),
      ButtonType.outline => OutlineButton(
        title: title,
        shape: shape,
        onTab:
            onTab != null
                ? () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  onTab?.call();
                }
                : null,
        height: height ?? (context.isTablet ? 72 : null),
        width: width,
        radius: radius,
        style: style,
        backgroundColor: backgroundColor,
        borderOutlinedColor: borderOutlinedColor,
        margin: margin,
        child: child,
      ),
      ButtonType.download => DownloadButton(
        bloc: bloc!,
        titleButton: title,
        height: height ?? (context.isTablet ? 72 : null),
        width: width,
        onTab:
            onTab != null
                ? () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  onTab?.call();
                }
                : null,
        backgroundColor: backgroundColor,
        style: style,
        progressColor: progressColor,
        child: child,
      ),
      ButtonType.textIcon => TextIconButton(
        title: title,
        onTab:
            onTab != null
                ? () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  onTab?.call();
                }
                : null,
        height: height ?? (context.isTablet ? 72 : null),
        width: width,
        radius: radius,
        style: style,
        margin: margin,
        backgroundColor: backgroundColor,
        shape: shape,
        icon: child!,
      ),
      ButtonType.onlyIcon => OnlyIconButton(
        onTab:
            onTab != null
                ? () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  onTab?.call();
                }
                : null,
        height: height ?? (context.isTablet ? 72 : null),
        width: width,
        margin: margin,
        backgroundColor: backgroundColor,
        shape: shape,
        icon: child!,
      ),
    };
  }
}
