import '../../../../core/config/assets/assets.gen.dart';
import '../../../../core/utils/extension.dart';
import '../../common/buttons/button_widget.dart';
import '../../common/image_widget.dart';
import '../../common/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';
import '../../common/ticker_widget.dart';

class SuccessDialog extends StatelessWidget {
  final Function() action;
  final String? word;
  final String? line;
  final String? actionBtnWord;

  const SuccessDialog({
    super.key,
    required this.action,
    this.word,
    this.actionBtnWord,
    this.line,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageWidget(image: Assets.images.successfullyImg),
          TextWidget(
            // TODO:: st
            text: word ?? "Password changed successfully!",
            style: context.headlineL?.copyWith(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          if (line != null) ...[
            4.ph,
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: TickerWidget(
                child: TextWidget(
                  // TODO:: st
                  text: line!,
                  style: context.headlineS?.copyWith(color: AppColors.grey500),
                ),
              ),
            ),
          ],
          24.ph,
          ButtonWidget(
            onTab: () {
              context.pop();
              action.call();
            },
            child: TextWidget(
              text: actionBtnWord ?? "yes",
              style: context.bodyL?.copyWith(color: AppColors.baseColor),
            ),
          ),
          8.ph,
        ],
      ),
    );
  }
}
