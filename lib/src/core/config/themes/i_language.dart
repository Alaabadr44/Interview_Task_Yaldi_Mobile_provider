// Flutter imports:
import 'package:flutter/material.dart' show Color, Locale, TextStyle, TextTheme;

// Project imports:
import '../../utils/enums.dart';

abstract interface class ILanguage {
  Locale get locale;
  String get fontName;

  Map<StyleText, TextStyle> get textStyle;

  TextTheme getTextTheme(Color textColor);
}
