// Dart imports:
import 'dart:math';

import 'package:flutter/material.dart';
// Flutter imports:
import 'package:flutter_application_1/src/core/config/app_colors.dart';
// Package imports:
import 'package:flutter_html/flutter_html.dart';

// Project imports:
import '../../../core/utils/extension.dart';

class TextWidget extends StatelessWidget {
  final TextStyle? style;
  final String text;
  final TextOverflow? overflow;
  final double? maxScale;
  final TextAlign? textAlign;
  final VoidCallback? onClick;
  final int? maxLine;
  final EdgeInsetsGeometry? padding;
  final TextDirection? direction;
  final bool isHtml;
  final Color? htmlColor;
  final FontSize? htmlSize;
  const TextWidget({
    super.key,
    required this.text,
    this.style,
    this.overflow,
    this.maxScale,
    this.textAlign,
    this.onClick,
    this.maxLine,
    this.padding,
    this.direction,
    this.isHtml = false,
    this.htmlSize,
    this.htmlColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child:
            isHtml
                ? Html(
                  data: text,
                  onLinkTap: (url, attributes, element) async {
                    if (url.isNotNull) {
                      // injector<LaunchAppHelper>().navigateToUrl(url!);
                      // Uri uri = _handleUrl(url!);
                      // bool canLaunch = await canLaunchUrl(uri);
                      // canLaunch ? await launchUrl(uri) : null;
                    }
                  },
                  style: {
                    "body": Style(
                      textOverflow: TextOverflow.visible,
                      fontSize: htmlSize,
                      color: htmlColor,
                      // backgroundColor: ThemeManager().appColor[ThemeColor.scaffoldBackgroundColor],
                    ),
                  },
                )
                : Text(
                  text,
                  style:
                      style ??
                      context.bodyM?.copyWith(
                        color: AppColors.reverseBaseColor,
                      ),
                  softWrap: true,
                  overflow: overflow,
                  textAlign: textAlign,
                  maxLines: maxLine,
                  textDirection: direction,
                  textScaler: TextScaler.linear(
                    textScaleFactor(
                      context,
                      maxScale ??
                          (context.isMobile
                              ? 1.6
                              : context.orientationInfo.isPortrait
                              ? 2.5
                              : 2),
                    ),
                  ),
                ),
      ),
    );
  }

  double textScaleFactor(BuildContext context, double maxTextScaleFactor) {
    final width = context.sizeSide.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
