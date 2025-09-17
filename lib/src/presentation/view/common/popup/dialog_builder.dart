// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';
import '../bubble_widget/bubble_widget.dart';
import '../buttons/button_widget.dart';
import '../image_widget.dart';
import '../text_widget.dart';
import 'scale_animate.dart';

class DialogBuilder extends StatelessWidget {
  final dynamic image;
  final Widget? header;
  final String title;
  final String? titleAcceptBtn;
  final String? titleCancelBtn;
  final String content;
  final VoidCallback onDone;
  final VoidCallback? onCancel;
  final bool? withAnimate;
  final bool multiActions;
  final double? radius;
  final Color? backgroundColor;
  const DialogBuilder({
    super.key,
    this.image,
    required this.title,
    required this.content,
    required this.onDone,
    this.withAnimate = false,
    this.radius = kRadiusMedium,
    this.backgroundColor,
    this.header,
    this.titleAcceptBtn,
    this.titleCancelBtn,
    this.onCancel,
    this.multiActions = false,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius!)),
      title: Column(
        children: [
          if (image != null || header != null) ...[
            withAnimate!
                ? BubbleWidget(
                    size: context.isTablet ? context.sizeSide.width * 0.15 : context.sizeSide.width * 0.2,
                    afterDuration: const Duration(milliseconds: 250),
                    child: image != null
                        ? ImageWidget(
                            image: image,
                            fit: BoxFit.contain,
                            height: 100,
                          )
                        : header ?? const SizedBox.shrink(),
                  )
                : ScaleAnimate(
                    child: image != null
                        ? ImageWidget(
                            image: image,
                            fit: BoxFit.contain,
                            height: 100,
                          )
                        : header ?? const SizedBox.shrink(),
                  ),
            (context.sizeSide.smallSide * .02).ph,
          ],
          TextWidget(
            text: title,
            style: context.headlineM?.copyWith(color: AppColors.reverseBaseColor, fontWeight: FontWeight.w600),
          )
        ],
      ),
      content: TextWidget(
        text: content,
        textAlign: TextAlign.center,
        style: context.bodyM?.copyWith(color: AppColors.reverseBaseColor),
      ),
      actions: [
        if (multiActions)
          ButtonWidget(
            type: ButtonType.outline,
            width: multiActions ? context.sizeSide.smallSide * .31 : null,
            borderOutlinedColor: AppColors.secondaryColor,
            onTab: () {
              context.popWidget();
              onCancel?.call();
            },
            title: titleCancelBtn ?? context.localText.button_no_title,
            style: context.bodyL?.copyWith(color: AppColors.secondaryColor),
            radius: kRadiusSmall,
          ),
        ButtonWidget(
          onTab: onDone,
          title: titleAcceptBtn ?? context.localText.button_yes_title,
          radius: kRadiusSmall,
          width: multiActions ? context.sizeSide.smallSide * .31 : null,
          style: context.bodyL,
        ),
      ],
    );
  }
}
