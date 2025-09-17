/* // Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/config/themes/theme_manager.dart';
import '../../../../core/utils/enums.dart';
import '../../../../core/utils/extension.dart';
import '../buttons/button_widget.dart';
import '../text_widget.dart';

class HeaderBottomSheetWidget extends StatelessWidget {
  final BoxConstraints constraints;
  final String? title;
  final bool? showDetailsBar;
  final Widget? leading;
  final double? headerHeight;

  HeaderBottomSheetWidget({
    super.key,
    required this.constraints,
    this.title,
    this.showDetailsBar = true,
    this.leading,
    this.headerHeight,
  }) : assert((showDetailsBar == true && title.isNotNull) || showDetailsBar == false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (constraints.minHeight * .05).h,
        Center(
          child: SizedBox(
            width: context.sizeSide.smallSide * 0.25,
            height: 8,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: ThemeManager().appColor[ThemeColor.subColorLow],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        if (showDetailsBar!) ...[
          (constraints.minHeight * 0.01).h,
          SizedBox(
            height: headerHeight ?? constraints.maxHeight * 0.2,
            width: constraints.maxWidth,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 10,
                  child: TextWidget(
                    text: title!,
                    textAlign: TextAlign.center,
                    style: context.bodyL,
                  ),
                ),
                PositionedDirectional(
                  end: 0,
                  top: 0,
                  child: ButtonWidget(
                    type: ButtonType.onlyIcon,
                    width: 48,
                    height: 48,
                    onTab: () {},
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.close,
                      color: ThemeManager().appColor[ThemeColor.reversThemeColor],
                    ),
                  ),
                ),
                if (leading != null) Align(alignment: AlignmentDirectional.centerStart, child: leading),
              ],
            ),
          ),
        ]
      ],
    );
  }
}
 */
