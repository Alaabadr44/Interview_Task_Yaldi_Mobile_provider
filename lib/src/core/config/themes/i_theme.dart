// Flutter imports:
import 'package:flutter/material.dart' show Color, TextTheme, ThemeData, ThemeMode;
import 'package:flutter/services.dart';

// Project imports:
import '../../utils/enums.dart';

abstract interface class ITheme {
  String get themeName;
  Color get defaultTextColor;
  SystemUiOverlayStyle get systemUiOverlayStyle;
  ThemeMode get mode;
  ThemeData themeData(TextTheme textTheme);
  Color get scaffoldColor;

  Map<ThemeColor, Color> get appColor;
}
