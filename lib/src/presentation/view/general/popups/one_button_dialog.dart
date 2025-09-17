// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/config/injector.dart';
import '../../../../core/config/l10n/generated/l10n.dart';
import '../../../../core/utils/enums.dart';
import '../../../../core/utils/extension.dart';
import '../../common/buttons/button_widget.dart';
import '../../common/text_widget.dart';

class OneButtonDialog extends StatelessWidget {
  final String? title;
  final String? desc;
  final Widget? content;
  final EdgeInsetsGeometry? padding;
  final void Function()? onDone;
  final String? btnWord;
  final bool isPopOnDone;
  const OneButtonDialog({
    super.key,
    this.title,
    this.desc,
    this.content,
    this.onDone,
    this.isPopOnDone = true,
    this.padding,
    this.btnWord,
  });

  factory OneButtonDialog.unAuthorizedDialog({BuildContext? context}) {
    return OneButtonDialog(
      onDone: () {
        injector<GlobalKey<NavigatorState>>().currentState?.context.nextNamed(AppLocalRoute.login.route);
      },
      title: context != null ? S.of(context).please : S.current.please,
      desc: context != null
          ? S.of(context).please_register_first_to_complete_this_process
          : S.current.please_register_first_to_complete_this_process,
      btnWord: context != null ? S.of(context).signIn : S.current.signIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
      backgroundColor: AppColors.baseColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      child: Padding(
        padding: padding ?? EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null) ...[
              35.h.ph,
              TextWidget(
                text: title!,
                style: context.headlineL!.black,
              )
            ],
            10.h.ph,
            if (desc != null)
              TextWidget(
                text: desc!,
                style: context.bodyL!.black,
              ),
            if (content != null) content!,
            10.h.ph,
            if (onDone != null)
              ButtonWidget(
                onTab: () {
                  if (isPopOnDone) {
                    context.pop();
                  }
                  onDone!();
                },
                title: btnWord ?? context.localText.done,
                backgroundColor: AppColors.secondaryColor,
              ),
            10.h.ph
          ],
        ),
      ),
    );
  }
}
