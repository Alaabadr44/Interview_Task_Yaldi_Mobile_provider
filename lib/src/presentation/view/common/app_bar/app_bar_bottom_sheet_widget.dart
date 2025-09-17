// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/services/setting_service.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';
import '../text_widget.dart';

class AppBarBottomSheetWidget extends StatelessWidget {
  final String title;
  const AppBarBottomSheetWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kAppBarHeight,
      width: context.sizeSide.width,
      child: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                  top: kAppBarHeight / 3,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: TextWidget(
                    text: title,
                    textAlign: TextAlign.center,
                  )),
              PositionedDirectional(
                start: context.sizeSide.width * 0.02,
                top: 0,
                bottom: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(SettingService.isRTL
                      ? FontAwesomeIcons.arrowRight
                      : FontAwesomeIcons.arrowLeft),
                  color: AppColors.reverseBaseColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
