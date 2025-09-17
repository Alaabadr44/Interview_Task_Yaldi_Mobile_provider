// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';
import '../text_widget.dart';

class DownloadButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final String? titleButton;
  final Widget? child;
  final TextStyle? style;
  final Color? backgroundColor;
  final Color? progressColor;
  final VoidCallback? onTab;
  final Bloc bloc;

  const DownloadButton({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.titleButton,
    required this.bloc,
    this.backgroundColor,
    this.child,
    this.style,
    this.progressColor,
    this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: bloc,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.zero,
          child: ElevatedButton(
            onPressed: onTab,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? AppColors.primaryColor,
              surfaceTintColor: backgroundColor ?? AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? kRadiusMedium),
              ),
              padding: EdgeInsets.zero,
              minimumSize: Size(
                width ?? context.sizeSide.width,
                height ?? kButtonHeight,
              ),
              maximumSize: Size(
                width ?? context.sizeSide.width,
                height ?? kButtonHeight,
              ),
            ),
            child:
                child ??
                TextWidget(
                  text: titleButton ?? 'Download',
                  style:
                      style ??
                      context.headlineS?.copyWith(color: AppColors.baseColor),
                ),
          ),
        );
      },
    );
  }
}
