// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../services/storage_service.dart';
import '../../utils/constant.dart';
import '../injector.dart';
import '../l10n/generated/l10n.dart';
import 'i_language.dart';
import 'language/arabic_language.dart';
import 'language/english_language.dart';

class LanguageManager {
  static late ILanguage language;

  void load() async {
    String languageApp = getLanguagePlatform();
    // String? countryCode = StorageService().getString(kLocaleCountryCode);
    language = switch (languageApp) { 'ar' => ArabicLanguage(), 'en' => EnglishLanguage(), _ => ArabicLanguage() };
    // _locale = Locale(languageApp);

    await S.load(language.locale);
    // notifyListeners();
  }

  String getLanguagePlatform() {
    String? language = StorageService().getString(kLocaleLanguageCode);
    if (language != null) {
      return language;
    } else {
      // String deviceLang = Platform.localeName.split('_').first;
      String deviceLang = 'ar';
      if (['ar', 'en'].contains(deviceLang)) {
        language = deviceLang;
      }
      return language ?? 'ar';
    }
  }

  Future<bool> saveLanguage(ILanguage pLanguage) async {
    language = pLanguage;
    bool result = await _saveCurrentLang(language.locale);
    result ? await S.load(language.locale) : null;
    // notifyListeners();
    return result;
  }

  Future<bool> _saveCurrentLang(Locale newLocale) async {
    return await injector<StorageService>().saveString(kLocaleLanguageCode, newLocale.languageCode);
    // await StorageService().saveString(kLocaleCountryCode, newLocale.countryCode ?? 'us');
  }

  ILanguage get getLanguage => language;
  static ILanguage get getLang => language;

  static LanguageManager? _instance;
  LanguageManager._init();
  factory LanguageManager() => _instance ??= LanguageManager._init();
}
