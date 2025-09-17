// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../../../core/services/setting_service.dart';
import '../../../../core/utils/extension.dart';

AnimationController? bottomSheetAnimation;

void _initBottomSheetAnimation(TickerProvider vsync) {
  try {
    bottomSheetAnimation ??= BottomSheet.createAnimationController(vsync)..duration = const Duration(milliseconds: 750);
  } catch (e) {
    return;
  }
}

Future<T?> customBottomSheet<T>({
  required BuildContext context,
  required Widget Function(BuildContext context, BoxConstraints constraints) builder,
  required double height,
  SystemUiOverlayStyle? systemUiOverlayStyle,
  Color? backgroundColor,
  AnimationController? controller,
  TickerProvider? vsync,
  bool? canClose = true,
  ShapeBorder? shape,
  bool? portraitOnly = false,
  EdgeInsetsGeometry? padding
}) async {
  if (portraitOnly!) {
    SettingService().theme.setPortraitMode();
  }
  if (vsync != null) {
    _initBottomSheetAnimation(vsync);
  }
  return showModalBottomSheet<T>(
    transitionAnimationController: controller ?? bottomSheetAnimation,
    context: context,
    isScrollControlled: true,
    useRootNavigator: true,
    useSafeArea: false,
    isDismissible: canClose!,
    enableDrag: canClose,
    backgroundColor: backgroundColor,
    shape: shape,
    constraints: BoxConstraints(
      minHeight: height,
      maxHeight: context.sizeSide.largeSide,
      minWidth: context.sizeSide.width,
    ),
    builder: (context) {
      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: systemUiOverlayStyle ??
            SettingService().theme.copySystemUiOverlayStyle(
              systemNavigationBarColor: backgroundColor ?? Colors.transparent,
              // systemNavigationBarDividerColor: ThemeManager().currentTheme.scaffoldColor.last,
            ),
        child: Padding(
          padding: padding ?? EdgeInsets.only(
            left: context.sizeSide.smallSide * 0.03,
            right: context.sizeSide.smallSide * 0.03,
            bottom: context.viewInsets.bottom,
          ),
          child: SizedBox(
            height: height,
            child: LayoutBuilder(
              builder: builder,
            ),
          ),
        ),
      );
    },
  ).then((value) {
    if (portraitOnly) {
      SettingService().theme.defaultOrientationMode();
    }
    if (vsync != null) {
      bottomSheetAnimation?.dispose();
    }
    return value;
  });
}
