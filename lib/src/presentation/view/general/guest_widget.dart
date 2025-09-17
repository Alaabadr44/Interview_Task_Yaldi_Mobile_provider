// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../../core/config/assets/assets.gen.dart';
import '../../../core/utils/extension.dart';
import '../common/buttons/button_widget.dart';
import '../common/image_widget.dart';

class GuestWidget extends StatelessWidget {
  final String content;
  final String buttonTitle;
  final void Function() onTab;
  final bool isDialog;
  const GuestWidget(
      {super.key, this.isDialog = false, required this.content, required this.buttonTitle, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageWidget(
            image: Assets.images.onLogo,
            fit: BoxFit.contain,
            width: 200.w,
          ),
          Padding(
            padding: EdgeInsets.all(20.r),
            child: Text(
              content,
              style: isDialog ? context.titleM! : context.titleM!.white,
              textAlign: TextAlign.center,
            ),
          ),
          10.h.ph,
          ButtonWidget(
              onTab: () {
                if (isDialog) context.pop();
                onTab();
              },
              title: buttonTitle),
          15.h.ph,
        ],
      ),
    );
  }
}
