// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../../../core/utils/extension.dart';

class CustomIconTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String lable;
  final IconData icon;
  const CustomIconTextButton(
      {super.key,
      required this.onPressed,
      required this.lable,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: InkWell(
          onTap: onPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Icon(
                  icon,
                  size: 23.r,
                  color: context.scheme.secondary,
                ),
              ),
              3.w.pw,
              Text(
                lable,
                textHeightBehavior: const TextHeightBehavior(
                  applyHeightToFirstAscent: true,
                  applyHeightToLastDescent: false,
                ),
                style: context.textTheme.titleMedium!.copyWith(
                  color: context.scheme.secondary,
                ),
              )
            ],
          )),
    );
  }
}
