// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../config/themes/i_language.dart';
import '../config/themes/language/arabic_language.dart';
import '../config/themes/language/english_language.dart';
import '../config/themes/language_manager.dart';
import '../config/themes/theme/theme_manager.dart';
import '../utils/app_logger.dart';
import 'service_interface.dart';

class SettingService extends ChangeNotifier implements ServiceInterface {
  @override
  String get name => "Setting Service [Theme - Language]";

  ThemeManager? _theme;
  LanguageManager? _language;

  ThemeManager get theme => _theme!;
  LanguageManager get language => _language!;

  @override
  Future<void> initializeService() async {
    _language ??= LanguageManager();
    _language?.load();
    _theme ??= ThemeManager(_language!.getLanguage);
    _theme?.load();
    AppLogger.logDebug('$name Success initialization');
    AppLogger.logInfo('Theme is: $stateMod \nLanguage is: ${currentLanguage.locale.languageCode}');
  }

  static ThemeMode get stateMod => ThemeManager.mode;
  static bool get isDark => ThemeManager.mode == ThemeMode.dark;
  static Locale? get getLocale => SettingService().localLanguage();
  static bool get isRTL => getLocale?.languageCode == 'ar';

  Locale localLanguage() => _language!.getLanguage.locale;

  void changeLanguage({required ILanguage language}) async {
    // Locale locale = Locale(language.info['langCode']!);
    final result = await _language!.saveLanguage(language);
    if (result) {
      // _language!.load();
      theme.newLanguage = language;
      theme.load();
      notifyListeners();
    }
    AppLogger.logInfo('Language is: ${language.locale.languageCode}, Font Name: ${language.fontName}');
  }

  ILanguage get currentLanguage {
    if (isRTL) {
      return ArabicLanguage();
    }
    return EnglishLanguage();
  }

  void switchLanguage() {
    if (isRTL) {
      changeLanguage(language: EnglishLanguage());
    } else {
      changeLanguage(language: ArabicLanguage());
    }
  }

  setLocale(Locale locale) {
    if (locale.languageCode == 'ar') {
      if (isRTL) {
        return;
      }
      changeLanguage(language: ArabicLanguage());
    } else {
      if (!isRTL) {
        return;
      }

      changeLanguage(language: EnglishLanguage());
    }
  }

  // String currentLangWord(BuildContext context) {
  //   if (isRTL) {
  //     return S.of(context).arabic_ar;
  //   } else {
  //     return S.of(context).english_en;
  //   }
  // } // singleton

  SettingService.init();
  static SettingService? _instance;
  factory SettingService() => _instance ??= SettingService.init();
}
