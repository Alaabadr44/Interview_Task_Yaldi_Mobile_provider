// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:overlay_support/overlay_support.dart';

// Project imports:
import '../../../../core/config/assets/assets.gen.dart';
import '../../../../core/services/setting_service.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/extension.dart';
import '../image_widget.dart';
import '../text_widget.dart';
import '../ticker_widget.dart';

enum OverlayType {
  info({'en': 'Info', 'ar': 'تنبيه'}),
  success({'en': 'success', 'ar': 'عملية ناجحة'}),
  error({'en': 'Error', 'ar': 'خطأ'}),
  warning({'en': 'Warning', 'ar': 'تحذير'}),
  notification({'en': 'Notification', 'ar': 'إشعار'}),
  ;

  final Map<String, String> type;

  const OverlayType(this.type);
}

class OverlayBodyWidget extends StatelessWidget {
  final String message;
  final String? title;
  final OverlayType type;
  final NotificationPosition position;
  final DismissDirection? dismissDirection;
  final int secondDuration;
  final VoidCallback? onClick;
  final OverlaySupportEntry notify;

  const OverlayBodyWidget({
    super.key,
    required this.message,
    required this.type,
    required this.position,
    required this.secondDuration,
    this.dismissDirection,
    this.title,
    this.onClick,
    required this.notify,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.sizeSide.smallSide * 0.02),
      child: SlideDismissible(
        direction: dismissDirection,
        key: UniqueKey(),
        child: SafeArea(
          bottom: position == NotificationPosition.bottom,
          top: position == NotificationPosition.top,
          child: GestureDetector(
            onTap: () {
              if (onClick != null) {
                notify.dismiss();
                onClick!();
              }
            },
            child: SizedBox(
              width: context.sizeSide.smallSide,
              height: kBottomNavBarHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: _getAlertColor(type),
                  borderRadius: BorderRadiusDirectional.circular(kRadiusSmall),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _getAlertIcon(type),
                      (context.sizeSide.smallSide * 0.03).pw,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text: title ?? type.type[SettingService.getLocale?.languageCode]!,
                              style: type == OverlayType.notification ? context.bodyS?.black : context.bodyS?.white,
                            ),
                            TickerWidget(
                              child: TextWidget(
                                text: message,
                                style: type == OverlayType.notification ? context.bodyM?.black : context.bodyM?.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Color _getAlertColor(OverlayType type) {
    switch (type) {
      case OverlayType.info:
        return Colors.grey;
      case OverlayType.success:
        return Colors.green;
      case OverlayType.error:
        return Colors.red;
      case OverlayType.warning:
        return Colors.orange.shade400;
      case OverlayType.notification:
        return Colors.white;
    }
  }

  static Widget _getAlertIcon(OverlayType type) {
    switch (type) {
      case OverlayType.info:
        return const Icon(
          FontAwesomeIcons.circleInfo,
          color: Colors.white,
        );
      case OverlayType.success:
        return const Icon(
          FontAwesomeIcons.solidCircleCheck,
          color: Colors.white,
        );
      case OverlayType.error:
        return const Icon(
          FontAwesomeIcons.solidCircleXmark,
          color: Colors.white,
        );
      case OverlayType.warning:
        return const Icon(
          FontAwesomeIcons.triangleExclamation,
          color: Colors.white,
        );
      case OverlayType.notification:
        return ImageWidget(
          image: Assets.images.onLogo,
          fit: BoxFit.contain,
          width: 38,
          height: 38,
        );
    }
  }
}
