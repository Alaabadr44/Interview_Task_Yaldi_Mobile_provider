// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:
import '../../../core/utils/extension.dart';

class CustomRichText extends StatelessWidget {
  final String baseText;
  final List<TextSpan> children;
  final TextStyle? style;
  final TextAlign? align;
  final VoidCallback? onClick;
  const CustomRichText(
      {super.key,
      required this.baseText,
      required this.children,
      this.style,
      this.onClick,
      this.align});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: align ?? TextAlign.start,
      text: TextSpan(
        text: baseText,
        style: style ?? context.bodyM,
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: (context.sizeSide.width * 0.01).pw,
          ),
          ...children,
        ],
        recognizer: TapGestureRecognizer()..onTap = onClick,
      ),
    );
  }
}

TextSpan spanText(
    {required String text, TextStyle? style, VoidCallback? onClick}) {
  return TextSpan(
      text: text,
      style: style,
      recognizer: TapGestureRecognizer()..onTap = onClick);
}
