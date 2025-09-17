// Flutter imports:
import 'package:flutter/material.dart' show Color, Colors, TextTheme, ThemeData, ThemeMode;
import 'package:flutter/services.dart';

// Project imports:
import '../../../utils/enums.dart';
import '../i_theme.dart';

class DarkTheme implements ITheme {

  @override
  String get themeName => 'Dark Theme';

  @override
  Color get scaffoldColor => appColor[ThemeColor.primaryColor]!;

  @override
  Map<ThemeColor, Color> get appColor => {
        ThemeColor.baseColor: const Color(0xffffffff),
        ThemeColor.reverseBaseColor: const Color(0xff000000),
        ThemeColor.primaryColor: const Color(0xff5C2D87),
        ThemeColor.secondaryColor: const Color(0xff9A328A),
        ThemeColor.textPrimaryColor: const Color(0xff2B2828),
        ThemeColor.textAccentColor: const Color(0xffD7D7D7),
        ThemeColor.textSecondaryColor: const Color(0xffFFFFFF),
        ThemeColor.cardPrimaryColor: const Color(0xffE5E5E5),
        ThemeColor.cardAccentColor: const Color(0xffE9CAE4),
        ThemeColor.cardSecondaryColor: const Color(0xffF6ECFF),
        ThemeColor.successColor: const Color(0xFF43A048),
        ThemeColor.errorColor: const Color(0xFFF80606),
        ThemeColor.warningColor: const Color(0xFFFB8A00),
      };

  @override
  ThemeMode get mode => ThemeMode.dark;

  @override
  ThemeData themeData(TextTheme textTheme) {
    return ThemeData.dark(useMaterial3: true);
  }

  @override
  SystemUiOverlayStyle get systemUiOverlayStyle => SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: appColor[ThemeColor.primaryColor],
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarContrastEnforced: true,
        systemStatusBarContrastEnforced: true,
      );

  @override
  Color get defaultTextColor => appColor[ThemeColor.textSecondaryColor]!;
}
