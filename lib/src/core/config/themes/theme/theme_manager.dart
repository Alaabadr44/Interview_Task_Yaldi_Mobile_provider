// Flutter imports:
// ignore_for_file: invalid_use_of_protected_member

// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../../services/storage_service.dart';
import '../../../utils/constant.dart';
import '../../app_colors.dart';
import '../../injector.dart';
import '../i_language.dart';

class ThemeManager {
  late ILanguage currentLanguage;
  static late ThemeData _themeData;
  static late ThemeMode _mode;
  late bool _isDark;
  final StorageService _storage = injector<StorageService>();

  // late Map<ThemeTextStyle, TextStyle> appStyle;

  void load() {
    // CustomLogger.logInfo(SettingService().currentLanguage.info);
    _getPlatformTheme();

    _initialCurrentThemeApp();
    // appStyle = _theme.appStyle;
    setThemeData();
    _setSystemStatusDefaultColor();
  }

  void _getPlatformTheme([bool? isDark]) {
    bool? darkMode = isDark;
    if (darkMode != null) {
      _isDark = darkMode;
    } else {
      darkMode = _storage.getBool(kThemeModeKey);
      if (darkMode != null) {
        _getPlatformTheme(darkMode);
      } else {
        // final brightness = PlatformDispatcher.instance.platformBrightness;
        const brightness = Brightness.light;
        brightness == Brightness.dark
            ? _getPlatformTheme(true)
            : _getPlatformTheme(false);
      }
    }
  }

  void _initialCurrentThemeApp() {
    if (_isDark) {
      _mode = ThemeMode.dark;
    } else {
      _mode = ThemeMode.light;
    }
  }

  static ThemeMode get mode => _mode;

  // ITheme get themes => _theme;

  static bool get isLight => mode == ThemeMode.light ? true : false;

  static const _pColor = AppColors.primaryColor;
  static const _sCOlor = AppColors.secondaryColor;
  ThemeData setThemeData() {
    final textTheme = currentLanguage.getTextTheme(AppColors.reverseBaseColor);
    _themeData = ThemeData(
      brightness: Brightness.light,

      timePickerTheme: TimePickerThemeData(
        helpTextStyle: const TextStyle(color: AppColors.reverseBaseColor),
        dayPeriodTextStyle: const TextStyle(color: AppColors.reverseBaseColor),
        dialTextStyle: const TextStyle(color: AppColors.reverseBaseColor),
        inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(color: AppColors.reverseBaseColor)),
        // hourMinuteTextStyle: TextStyle(color: AppColors.reverseBaseColor),
        timeSelectorSeparatorTextStyle: WidgetStateProperty.all(
            const TextStyle(color: AppColors.reverseBaseColor)),
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: AppColors.textSecondaryColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.baseColor,
        surfaceTintColor: AppColors.baseColor,
        titleTextStyle: TextStyle(
          color: AppColors.textPrimaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        elevation: 0,
        centerTitle: false,
        foregroundColor: AppColors.primaryColor,
      ),
      primaryColor: _pColor,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.secondaryColor,
        selectionColor: AppColors.secondaryColor,
        selectionHandleColor: AppColors.secondaryColor,
      ),
      scaffoldBackgroundColor: AppColors.baseColor,
      cardColor: AppColors.cardPrimaryColor,
      //Text Theme
      textTheme: textTheme,
      listTileTheme: const ListTileThemeData(
          textColor: AppColors.textPrimaryColor,
          iconColor: AppColors.textAccentColor),
      radioTheme: const RadioThemeData(),
      cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: AppColors.textPrimaryColor)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: _pColor,
        disabledBackgroundColor: const Color(0xffc9c9c9c9),
      )),
      colorScheme: ColorScheme.fromSeed(
        seedColor: _pColor,
        brightness: Brightness.light,
        primary: _pColor,
        secondary: _sCOlor,
      ),
    );

    return _themeData;
  }

  SystemUiOverlayStyle get systemUiOverlayStyle {
    return SystemUiOverlayStyle(
      statusBarBrightness: isLight ? Brightness.light : Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: _pColor,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness:
          isLight ? Brightness.dark : Brightness.light,
      systemNavigationBarContrastEnforced: true,
      systemStatusBarContrastEnforced: true,
    );
  }

  SystemUiOverlayStyle copySystemUiOverlayStyle({
    Brightness? statusBarBrightness,
    Color? statusBarColor,
    Brightness? statusBarIconBrightness,
    Color? systemNavigationBarColor,
    Color? systemNavigationBarDividerColor,
    Brightness? systemNavigationBarIconBrightness,
  }) {
    return SystemUiOverlayStyle(
      statusBarBrightness:
          statusBarBrightness ?? systemUiOverlayStyle.statusBarBrightness,
      statusBarColor: statusBarColor ?? systemUiOverlayStyle.statusBarColor,
      statusBarIconBrightness: statusBarIconBrightness ??
          (isLight ? Brightness.dark : Brightness.light),
      systemNavigationBarColor: systemNavigationBarColor ??
          systemUiOverlayStyle.systemNavigationBarColor,
      systemNavigationBarDividerColor: systemNavigationBarDividerColor ??
          systemUiOverlayStyle.systemNavigationBarDividerColor,
      systemNavigationBarIconBrightness: systemNavigationBarIconBrightness ??
          (isLight ? Brightness.dark : Brightness.light),
      systemNavigationBarContrastEnforced: true,
      systemStatusBarContrastEnforced: true,
    );
  }

  void _setSystemStatusDefaultColor() {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  void setPortraitMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void defaultOrientationMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void systemNavigationController({SystemUiMode? mode}) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
  }

  set newLanguage(ILanguage language) => currentLanguage = language;

  static ThemeData get myTheme => _themeData;

  static ThemeManager? _instance;
  ThemeManager._init(this.currentLanguage);
  factory ThemeManager(ILanguage language) =>
      _instance ??= ThemeManager._init(language);
}
