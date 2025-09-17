import '../../../../core/config/app_colors.dart';
import '../../../../core/config/assets/assets.gen.dart';
import '../../../../core/utils/extension.dart';
import 'delete_dialog.dart';
import 'success_dialog.dart';
import '../../common/buttons/button_widget.dart';
import '../../common/image_widget.dart';
import '../../common/text_widget.dart';
import '../../common/ticker_widget.dart';
import 'package:flutter/material.dart';

class LogOutDialog extends StatelessWidget {
  final Function() action;
  const LogOutDialog({
    super.key,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageWidget(
            image: Assets.images.logOutImg,
          ),
          TextWidget(
            // TODO:: st
            text: "logout",
            style: context.headlineL?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          4.ph,
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: TickerWidget(
              child: TextWidget(
                // TODO:: st
                text: "Are you sure you want to log out?",
                style: context.headlineS?.copyWith(color: AppColors.grey500),
              ),
            ),
          ),
          24.ph,
          ButtonWidget(
            onTab: () {
              context.pop();
              action.call();
            },
            backgroundColor: AppColors.error600Color,
            // TODO:: st
            title: "yes",
          ),
          16.ph,
          ButtonWidget(
            onTab: () {
              context.pop();
            },
            type: ButtonType.outline,
            // TODO:: st
            title: "no",
          ),
        ],
      ),
    );
  }
}
