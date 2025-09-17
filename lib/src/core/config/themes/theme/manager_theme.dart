// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../../services/storage_service.dart';
import '../../../utils/constant.dart';
import '../../injector.dart';
import '../i_language.dart';
import '../i_theme.dart';
import 'dark_theme.dart';
import 'light_theme.dart';

class ManagerTheme {
  late ILanguage currentLanguage;
  late ITheme currentTheme;

  final StorageService _storage = injector<StorageService>();

  late ThemeData theme;
  static late ThemeMode mode;

  void load() {
    _getPlatformTheme();
    initTheme();
    mode = currentTheme.mode;
  }

  void initTheme() {
    theme = currentTheme.themeData(currentLanguage.getTextTheme(currentTheme.defaultTextColor));
    _setSystemStatusDefaultColor();
    mode = currentTheme.mode;
  }

  void _getPlatformTheme() {
    bool? darkMode = _storage.getBool(kThemeModeKey);
    if (darkMode != null) {
      currentTheme = darkMode ? DarkTheme() : LightTheme();
    } else {
      // final brightness = PlatformDispatcher.instance.platformBrightness;
      const brightness = Brightness.light;
      currentTheme = brightness == Brightness.dark ? DarkTheme() : LightTheme();
    }
  }

  Future<bool> saveTheme(ITheme newTheme) async {
    currentTheme = newTheme;
    return await _storage.saveBool(kThemeModeKey, newTheme.mode == ThemeMode.dark);
  }

  // static bool get isDark => mode == ThemeMode.dark;

  SystemUiOverlayStyle copySystemUiOverlayStyle({
    Brightness? statusBarBrightness,
    Color? statusBarColor,
    Brightness? statusBarIconBrightness,
    Color? systemNavigationBarColor,
    Color? systemNavigationBarDividerColor,
    Brightness? systemNavigationBarIconBrightness,
  }) {
    return SystemUiOverlayStyle(
      statusBarBrightness: statusBarBrightness ?? currentTheme.systemUiOverlayStyle.statusBarBrightness,
      statusBarColor: statusBarColor ?? currentTheme.systemUiOverlayStyle.statusBarColor,
      statusBarIconBrightness: statusBarIconBrightness ?? currentTheme.systemUiOverlayStyle.statusBarIconBrightness,
      systemNavigationBarColor: systemNavigationBarColor ?? currentTheme.systemUiOverlayStyle.systemNavigationBarColor,
      systemNavigationBarDividerColor:
          systemNavigationBarDividerColor ?? currentTheme.systemUiOverlayStyle.systemNavigationBarDividerColor,
      systemNavigationBarIconBrightness:
          systemNavigationBarIconBrightness ?? currentTheme.systemUiOverlayStyle.systemNavigationBarIconBrightness,
      systemNavigationBarContrastEnforced: true,
      systemStatusBarContrastEnforced: true,
    );
  }

  void _setSystemStatusDefaultColor() {
    SystemChrome.setSystemUIOverlayStyle(currentTheme.systemUiOverlayStyle);
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  }

  set newLanguage(ILanguage language) => currentLanguage = language;

  static ManagerTheme? _instance;
  ManagerTheme._init(this.currentLanguage);
  factory ManagerTheme(ILanguage language) => _instance ??= ManagerTheme._init(language);
}
