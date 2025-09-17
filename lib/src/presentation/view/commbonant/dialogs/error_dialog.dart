import '../../../../core/config/app_colors.dart';
import '../../../../core/config/assets/assets.gen.dart';
import '../../../../core/utils/extension.dart';
import '../../common/buttons/button_widget.dart';
import '../../common/image_widget.dart';
import '../../common/text_widget.dart';
import '../../common/ticker_widget.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final Function() action;
  final String? word;
  final String? line;
  final String? actionBtnWord;
  final bool popOnDefault;
  const ErrorDialog({
    super.key,
    required this.action,
    this.word,
    this.line,
    this.popOnDefault = true,
    this.actionBtnWord,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageWidget(image: Assets.images.errorImg),
          TextWidget(
            // TODO:: st
            text: word ?? "Invalid data entered!",
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
              if (popOnDefault) {
                context.pop();
              }
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
