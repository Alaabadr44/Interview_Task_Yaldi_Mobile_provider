// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

// Project imports:
import '../../../../../core/config/app_colors.dart';
import '../../../../../core/config/injector.dart';
import '../../../../../core/config/l10n/generated/l10n.dart';
import '../../../../../core/services/setting_service.dart';
import '../../../../../core/utils/extension.dart';
import '../../../../view_model/blocs/assistance/bloc_progress_helper.dart';
import '../../../../view_model/blocs/assistance/bloc_progress_model.dart';
import '../../text_widget.dart';
import '../../ticker_widget.dart';

class ProgressItemWidget extends StatelessWidget {
  final BlocProgressModel progressModel;
  const ProgressItemWidget({super.key, required this.progressModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            start: context.sizeSide.smallSide * 0.02,
            bottom: context.sizeSide.smallSide * 0.01),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              progressModel.succeeded == null
                  ? FontAwesomeIcons.upload
                  : progressModel.succeeded == true
                      ? Icons.cloud_done_outlined
                      : Icons.report_problem_outlined,
              color: AppColors.reverseBaseColor,
              size: progressModel.succeeded == null ? 18 : null,
            ),
            (context.sizeSide.smallSide * 0.02).pw,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TickerWidget(
                      child: TextWidget(
                        text: progressModel.title,
                        style: context.bodyS,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: LinearPercentIndicator(
                        //leaner progress bar
                        animation: true,
                        animateFromLastPercent: true,
                        isRTL: SettingService.isRTL,
                        padding: EdgeInsets.zero,
                        lineHeight: 4.0,
                        percent: progressModel.count != null &&
                                progressModel.total != null
                            ? progressModel.count! / progressModel.total!
                            : 0.0,
                        backgroundColor: AppColors.cardSecondaryColor,
                        progressColor: AppColors.cardPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    TextWidget(
                      text: progressModel.succeeded == null
                          ? '${formatFileSize(progressModel.count)} / ${formatFileSize(progressModel.total)}'
                          : progressModel.succeeded!
                              ? S.of(context).progress_success_message
                              : S.of(context).progress_fail_message,
                      style: context.bodyS,
                      maxLine: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: Icon(
                progressModel.succeeded == null
                    ? Icons.stop_circle_rounded
                    : Icons.cancel,
                color: AppColors.cardPrimaryColor,
              ),
              onPressed: () =>
                  injector<BlocProgressHelper>().removeProgress(progressModel),
            ),
          ],
        ),
      ),
    );
  }

  String formatFileSize(int? fileSize) {
    if (fileSize == null || fileSize <= 0) return '0 B';

    const int kb = 1024;

    final List<String> units = SettingService.isRTL
        ? ['ب', 'ك.ب', 'م.ب', 'ج.ب']
        : ['B', 'KB', 'MB', 'GB'];
    final int i = (log(fileSize) / log(kb)).floor();
    final double size = fileSize / pow(kb, i);

    final format = SettingService.isRTL
        ? NumberFormat.compact(locale: 'ar')
        : NumberFormat.decimalPattern();

    return '${format.format(size)} ${units[i]}';
  }
}
