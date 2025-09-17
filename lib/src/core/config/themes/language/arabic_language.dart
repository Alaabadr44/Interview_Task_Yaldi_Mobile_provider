// Flutter imports:
import 'package:flutter/material.dart'
    show Color, FontWeight, Locale, TextOverflow, TextStyle, TextTheme;

// Project imports:
import '../../../utils/enums.dart';
import '../i_language.dart';

class ArabicLanguage implements ILanguage {
  @override
  Locale get locale => const Locale('ar');

  @override
  String get fontName => 'Cairo';

  @override
  Map<StyleText, TextStyle> get textStyle => {};

  @override
  TextTheme getTextTheme(Color textColor) {
    return TextTheme(
      headlineSmall: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w500,
        fontSize: 18,
        fontFamily: fontName,
        overflow: TextOverflow.visible,
      ),
      headlineMedium: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 22,
        fontFamily: fontName,
        overflow: TextOverflow.visible,
      ),
      headlineLarge: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 28,
        fontFamily: fontName,
        overflow: TextOverflow.visible,
      ),
      bodyLarge: TextStyle(
        color: textColor,
        fontSize: 16,
        // height: 1.2,
        // letterSpacing: .2,
        fontWeight: FontWeight.w400,
        fontFamily: fontName,
        overflow: TextOverflow.visible,
      ),
      bodyMedium: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w400,
        fontSize: 15,
        fontFamily: fontName,
        overflow: TextOverflow.visible,
      ),
      bodySmall: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w400,
        fontSize: 13,
        fontFamily: fontName,
        overflow: TextOverflow.visible,
      ),
      labelMedium: TextStyle(
        color: textColor,
        fontSize: 10,
        fontFamily: fontName,
        overflow: TextOverflow.visible,
      ),
      labelSmall: TextStyle(
        color: textColor,
        fontSize: 8,
        fontFamily: fontName,
        overflow: TextOverflow.visible,
      ),
      titleSmall: TextStyle(
        color: textColor,
        fontSize: 14,
        fontFamily: fontName,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.visible,
      ),
      titleMedium: TextStyle(
        color: textColor,
        fontSize: 20,
        fontFamily: fontName,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.visible,
      ),
      displayLarge: TextStyle(
        color: textColor,
        fontSize: 14,
        fontFamily: fontName,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.visible,
      ),
      displayMedium: TextStyle(
        color: textColor,
        fontSize: 12,
        fontFamily: fontName,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.visible,
      ),
    );
  }
}
