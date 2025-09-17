// app_chose_chip

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../../core/config/app_colors.dart';
import '../../../core/utils/extension.dart';

class AppChoseChip extends StatelessWidget {
  final bool selected;
  final Function(bool state) onChange;
  final String label;
  const AppChoseChip({
    super.key,
    required this.selected,
    required this.onChange,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (!selected) {
            onChange(!selected);
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 15.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.r),
            border: Border.all(color: AppColors.baseColor),
            color: !selected ? AppColors.primaryColor : AppColors.baseColor,
          ),
          child: Center(
            child: Text(
              label,
              style: context.bodyS!.copyWith(color: selected ? AppColors.primaryColor : AppColors.baseColor),
            ),
          ),
        ),
      ),
    );
  }
}
