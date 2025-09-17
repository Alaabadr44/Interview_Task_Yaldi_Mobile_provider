// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart'
    show BuildContext, Color, Orientation, ThemeData;

// Project imports:
import '../../enums.dart';

class InformationPage {
  final double screenWidth;
  final double screenHeight;
  final double bottomPadding;
  final Orientation orientation;
  final ThemeData appTheme;
  final bool isRTL;
  final bool showBottomNavBar;
  final BuildContext? context;

  const InformationPage({
    required this.screenWidth,
    required this.screenHeight,
    required this.bottomPadding,
    required this.orientation,
    required this.appTheme,
    required this.isRTL,
    required this.showBottomNavBar,
    this.context,
  });

  InformationPage copyWith({
    double? screenWidth,
    double? screenHeight,
    double? bottomPadding,
    Orientation? orientation,
    ThemeData? appTheme,
    Map<ThemeColor, Color>? appColor,
    bool? isRTL,
    bool? showBottomNavBar,
    BuildContext? context,
  }) {
    return InformationPage(
      screenWidth: screenWidth ?? this.screenWidth,
      screenHeight: screenHeight ?? this.screenHeight,
      bottomPadding: bottomPadding ?? this.bottomPadding,
      orientation: orientation ?? this.orientation,
      appTheme: appTheme ?? this.appTheme,
      isRTL: isRTL ?? this.isRTL,
      showBottomNavBar: showBottomNavBar ?? this.showBottomNavBar,
      context: context ?? this.context,
    );
  }
}
