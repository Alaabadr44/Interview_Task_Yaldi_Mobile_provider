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
import 'multi_document_form_field.dart';

class MultiDocumentBoxWidget extends StatelessWidget {
  final PickMultiDocumentFieldController? controller;
  final bool onClick;
  final double? radius;
  final double height;
  final String? title;
  final EdgeInsetsGeometry? margin;

  const MultiDocumentBoxWidget({
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
                    onTap: onClick ? controller?.pickDocument : null,
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
                                onTap: () =>
                                    _showDocumentDetails(context, index),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Container(
                                    width: context.sizeSide.smallSide * .25,
                                    height: context.sizeSide.smallSide * .25,
                                    decoration: BoxDecoration(
                                      color: AppColors.grey100,
                                      borderRadius:
                                          BorderRadius.circular(kRadiusSmall),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Document icon based on file type
                                        _buildDocumentIcon(
                                            controller!.initValue![index].name),
                                        const SizedBox(height: 5),
                                        // Document name
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: TextWidget(
                                            text: controller!
                                                .initValue![index].name,
                                            style: context.bodyM?.copyWith(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.grey100,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLine: 2,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
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

  void _showDocumentDetails(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Document Details'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildDocumentIcon(controller!.initValue![index].name),
            const SizedBox(height: 16),
            TextWidget(
              text: controller!.initValue![index].name,
              style: context.bodyM?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            TextWidget(
              text: 'File Path: ${controller!.initValue![index].file.path}',
              style: context.bodyM,
              textAlign: TextAlign.center,
              maxLine: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentIcon(String filename) {
    // Determine file type based on extension
    if (filename.toLowerCase().endsWith('.pdf')) {
      return Icon(
        Icons.picture_as_pdf,
        color: Colors.red,
        size: 36,
      );
    } else if (filename.toLowerCase().endsWith('.doc') ||
        filename.toLowerCase().endsWith('.docx')) {
      return Icon(
        Icons.description,
        color: Colors.blue,
        size: 36,
      );
    } else {
      // Default document icon
      return Icon(
        Icons.insert_drive_file,
        color: AppColors.grey500,
        size: 36,
      );
    }
  }
}
