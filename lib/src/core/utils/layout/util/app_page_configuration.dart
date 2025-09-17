// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import '../../../../presentation/view/common/app_bar/app_bar_option.dart';

class AppPageConfiguration {
  final String? title;

  final SystemUiOverlayStyle? systemUiOverlayStyle;
  final Color? backgroundColor;

  final AppBarOption options;

  final bool resizeToAvoidBottomInset;
  final bool showAppBar;
  final bool isPadding;
  final bool portraitOnly;

  final Color? appBarColor;

  final bool bottomSafeArea;
  final bool topSafeArea;

  const AppPageConfiguration({
    this.title,
    this.systemUiOverlayStyle,
    this.backgroundColor,
    this.options = const AppBarOption(),
    this.resizeToAvoidBottomInset = false,
    this.showAppBar = true,
    this.isPadding = true,
    this.portraitOnly = false,
    this.appBarColor,
    this.bottomSafeArea = true,
    this.topSafeArea = true,
  });
}
