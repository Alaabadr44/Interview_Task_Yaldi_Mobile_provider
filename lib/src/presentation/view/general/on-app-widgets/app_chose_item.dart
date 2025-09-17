// app_chose_item

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/extension.dart';
import '../../common/buttons/button_widget.dart';
import '../../common/image_widget.dart';

class AppChoseItem extends StatelessWidget {
  const AppChoseItem({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.child,
  });
  final bool isSelected;
  final Function() onTap;

  final dynamic child;

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor = isSelected ? AppColors.baseColor : null;
    Color contentColor =
        isSelected ? AppColors.primaryColor : AppColors.baseColor;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 50,
      width: 50,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ButtonWidget(
        type: ButtonType.outline,
        // margin: const EdgeInsets.all(20),
        backgroundColor: backgroundColor
        // widget.compareItem.call(widget.controller.data, dataList[index], dataList)
        ,
        width: 120,
        // title: 'M',
        onTab: onTap,
        child: child is String
            ? Text(
                child,
                style: context.bodyL?.copyWith(
                      color: contentColor,
                    ) ??
                    TextStyle(color: contentColor),
              )
            : child is Widget
                ? child
                : ImageWidget(
                    image: child,
                    svgColor: contentColor,
                  ),
      ),
    );
  }
}
