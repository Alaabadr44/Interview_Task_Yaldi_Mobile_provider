import '../../../core/config/app_colors.dart';
import '../../../core/utils/extension.dart';
import '../common/text_widget.dart';
import 'package:flutter/material.dart';

class SwitchSelectTextBtnWidget extends StatelessWidget {
  final String categoryName;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final Color? selectedTextColor;
  final Color? unSelectedTextColor;
  final Color? selectedBorderColor;
  final Color? unSelectedBorderColor;
  final bool isSelected;
  final Function() onTap;
  const SwitchSelectTextBtnWidget({
    super.key,
    this.selectedColor = AppColors.secondaryColor,
    this.unSelectedColor = Colors.transparent,
    this.selectedTextColor = AppColors.baseColor,
    this.unSelectedTextColor = AppColors.grey400,
    this.selectedBorderColor = AppColors.secondaryColor,
    this.unSelectedBorderColor = AppColors.grey400,
    required this.onTap,
    required this.categoryName,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Durations.medium3,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(15),
            left: Radius.circular(15),
          ),
          border: Border.all(
            color:
                !isSelected
                    ? unSelectedBorderColor ?? Colors.transparent
                    : selectedBorderColor ?? Colors.transparent,
            width: 1,
          ),
          color: !isSelected ? unSelectedColor : selectedColor,
        ),
        alignment: Alignment.center,
        child: TextWidget(
          text: categoryName,
          style: context.bodyL?.copyWith(
            fontWeight: FontWeight.w600,
            color: isSelected ? selectedTextColor : unSelectedTextColor,
          ),
        ),
      ),
    );
  }
}
