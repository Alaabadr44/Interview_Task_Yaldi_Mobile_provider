import 'package:flutter/material.dart'
    show
        AppBarTheme,
        BorderRadius,
        BottomNavigationBarThemeData,
        Brightness,
        CardTheme,
        Color,
        ColorScheme,
        Colors,
        ElevatedButton,
        ElevatedButtonThemeData,
        ListTileThemeData,
        RoundedRectangleBorder,
        TextButton,
        TextButtonThemeData,
        TextSelectionThemeData,
        TextTheme,
        ThemeData,
        ThemeMode;

// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import '../../../utils/enums.dart';
import '../i_theme.dart';

class LightTheme implements ITheme {

  @override
  String get themeName => 'Light Theme';

  
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
  ThemeMode get mode => ThemeMode.light;

  @override
  ThemeData themeData(TextTheme textTheme) {
    final pColor = appColor[ThemeColor.primaryColor]!;
    final sCOlor = appColor[ThemeColor.secondaryColor]!;

    return ThemeData.light(useMaterial3: true).copyWith(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: pColor,
        selectedItemColor: appColor[ThemeColor.textSecondaryColor],
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: pColor,
        elevation: 0,
        centerTitle: true,
        foregroundColor: appColor[ThemeColor.textSecondaryColor],
      ),
      primaryColor: pColor,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: sCOlor,
        selectionColor: sCOlor,
        selectionHandleColor: sCOlor,
      ),
      scaffoldBackgroundColor: pColor,
      cardColor: appColor[ThemeColor.cardPrimaryColor],
      //Text Theme
      textTheme: textTheme,
      listTileTheme: ListTileThemeData(
        textColor: appColor[ThemeColor.textPrimaryColor],
        iconColor: appColor[ThemeColor.textAccentColor],
      ),
      cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: appColor[ThemeColor.textPrimaryColor]),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: sCOlor,
          disabledBackgroundColor: const Color(0xffc9c9c9),
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: pColor,
        brightness: Brightness.light,
        primary: pColor,
        secondary: sCOlor,
        background: scaffoldColor
      ),
    );
  }

  @override
  SystemUiOverlayStyle get systemUiOverlayStyle => SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: appColor[ThemeColor.primaryColor],
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarContrastEnforced: true,
        systemStatusBarContrastEnforced: true,
      );

  @override
  Color get defaultTextColor => appColor[ThemeColor.textSecondaryColor]!;
}
