// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_listenable_builder/multi_listenable_builder.dart';

// Project imports:
import '../../../../../core/config/app_colors.dart';
import '../../../../../core/config/assets/assets.gen.dart';
import '../../../../../core/services/setting_service.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/extension.dart';
import '../../image_widget.dart';
import '../../text_widget.dart';
import 'multi_file_form_field.dart';

class MultiFileBoxWidget extends StatelessWidget {
  final PickMultiFileFieldController? controller;
  final bool onClick;
  final double? radius;
  final double height;
  final String? title;
  final EdgeInsetsGeometry? margin;

  const MultiFileBoxWidget({
    super.key,
    required this.controller,
    this.onClick = true,
    this.radius,
    this.margin,
    required this.height,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: MultiListenableBuilder(
        notifiers: [controller],
        builder: (context, _) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                4.pw,
                SizedBox(
                  height: height,
                  width: context.sizeSide.smallSide * .25,
                  child: GestureDetector(
                    onTap: onClick ? controller?.pickImage : null,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.grey100,
                          borderRadius: BorderRadius.circular(kRadiusSmall),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        context.sizeSide.smallSide * .05),
                                child: ImageWidget(
                                  image: Assets.icons.uploadImg,
                                  svgColor: AppColors.grey500,
                                  width: context.sizeSide.smallSide * .15,
                                ),
                              ),
                              if (title.isNotNull)
                                Flexible(
                                  child: TextWidget(
                                    text: title!,
                                    style: context.bodyM,
                                  ),
                                )
                            ],
                          ),
                        )),
                  ),
                ),
                5.w.pw,
                if (controller!.initValue != null)
                  ...List.generate(
                      controller!.initValue!.length,
                      (index) => Stack(
                            clipBehavior: Clip.none,
                            children: [
                              InkWell(
                                onTap: () => context.showAlert(AlertDialog(
                                  content: Padding(
                                    padding: EdgeInsets.all(18.r),
                                    child: ImageWidget(
                                      image: controller!.initValue![index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: ImageWidget(
                                    // padding: EdgeInsets.symmetric(horizontal: 10.w),
                                    width: context.sizeSide.smallSide * .25,
                                    height: context.sizeSide.smallSide * .25,
                                    fit: BoxFit.cover,
                                    image: controller!.initValue![index],
                                    imageBuilder: (context, image) => ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(kRadiusSmall),
                                      child: image,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.directional(
                                textDirection: SettingService.isRTL
                                    ? TextDirection.rtl
                                    : TextDirection.ltr,
                                end: 7.w,
                                top: 2.w,
                                child: InkWell(
                                  onTap: () => controller!.removeItem(index),
                                  child: Material(
                                    color: AppColors.reverseBaseColor
                                        .withOpacity(.5),
                                    shape: const CircleBorder(),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.close,
                                        color: AppColors.baseColor,
                                        size: 18.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ))
              ],
            ),
          );
        },
      ),
    );
  }
}
