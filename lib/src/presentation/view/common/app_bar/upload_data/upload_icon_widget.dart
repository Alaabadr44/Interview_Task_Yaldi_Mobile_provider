// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_listenable_builder/multi_listenable_builder.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// Project imports:
import '../../../../../core/config/app_colors.dart';
import '../../../../../core/config/injector.dart';
import '../../../../../core/utils/extension.dart';
import '../../../../view_model/blocs/assistance/bloc_progress_helper.dart';
import 'progress_list_widget.dart';

class UploadIconWidget extends StatefulWidget {
  const UploadIconWidget({super.key});

  @override
  State<UploadIconWidget> createState() => _UploadIconWidgetState();
}

class _UploadIconWidgetState extends State<UploadIconWidget> {
  late CustomPopupMenuController controller;
  double? size;

  void processController() {
    if (!injector<BlocProgressHelper>().allProgress.isNotNull && controller.menuIsShowing) {
      controller.hideMenu();
    }
    final progressLength = injector<BlocProgressHelper>().allProgress.length;
    if (progressLength <= 2) {
      size = (context.sizeSide.smallSide * 0.25) * progressLength;
    } else {
      size = (context.sizeSide.smallSide * 0.5);
    }
  }

  @override
  void initState() {
    super.initState();
    injector<BlocProgressHelper>().addListener(processController);
    controller = CustomPopupMenuController();
  }

  @override
  void dispose() {
    controller.dispose();
    injector<BlocProgressHelper>().removeListener(processController);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPopupMenu(
      controller: controller,
      menuBuilder: () => SizedBox(
        width: context.sizeSide.smallSide * 0.7,
        height: size,
        child: const ProgressListWidget(),
      ),
      pressType: PressType.singleClick,
      verticalMargin: -6,
      position: PreferredPosition.bottom,
      arrowColor: AppColors.reverseBaseColor,
      child: MultiListenableBuilder(
          notifiers: [injector<BlocProgressHelper>()],
          builder: (context, child) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: injector<BlocProgressHelper>().allProgress.isNotNull ? 48 : 0,
              height: injector<BlocProgressHelper>().allProgress.isNotNull ? 48 : 0,
              margin: const EdgeInsetsDirectional.only(start: 8),
              child: Visibility(
                visible: injector<BlocProgressHelper>().allProgress.isNotNull,
                child: FittedBox(
                  child: CircularPercentIndicator(
                    percent: getPercentage(
                        injector<BlocProgressHelper>().downloadedSize, injector<BlocProgressHelper>().totalSize),
                    animation: true,
                    lineWidth: 1,
                    animationDuration: 250,
                    animateFromLastPercent: true,
                    backgroundColor: AppColors.cardSecondaryColor,
                    progressColor: AppColors.cardPrimaryColor,
                    center: child ??
                        Icon(
                          FontAwesomeIcons.upload,
                          size: 20,
                          color: AppColors.reverseBaseColor,
                        ),
                    radius: 22,
                  ),
                ),
              ),
            );
          }),
    );
  }

  double getPercentage(int? count, int? total) {
    if ((count != null && count > 0.0) && (total != null && total > 0.0)) {
      if (count >= total * 2) {
        injector<BlocProgressHelper>().resetDownloadSize();
        count = 0;
      }
      return count / total;
    }
    return 0.0;
  }
}
