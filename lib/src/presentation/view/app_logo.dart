// Flutter imports:

import 'package:flutter_application_1/src/core/config/app_colors.dart';
import 'package:flutter_application_1/src/core/utils/extension.dart';
import 'package:flutter_application_1/src/presentation/view/common/text_widget.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text: "Logo",
      style: context.titleM?.copyWith(
        fontSize: 52,
        fontWeight: FontWeight.w900,
        color: AppColors.primaryColor,
      ),
    );
  }
}
