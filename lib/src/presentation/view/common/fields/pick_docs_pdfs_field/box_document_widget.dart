// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:multi_listenable_builder/multi_listenable_builder.dart';

// Project imports:
import '../../../../../core/config/app_colors.dart';
import '../../../../../core/config/assets/assets.gen.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/extension.dart';
import '../../image_widget.dart';
import '../../text_widget.dart';
import 'single_document_form_field.dart';

class BoxDocumentWidget extends StatelessWidget {
  final PickDocumentFieldController? controller;
  final bool onClick;
  final double? radius;
  final double? height;
  final String? title;
  final EdgeInsetsGeometry? margin;

  const BoxDocumentWidget({
    super.key,
    required this.controller,
    this.onClick = true,
    this.radius,
    this.margin,
    this.height,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? double.infinity,
      child: InkWell(
        onTap: onClick
            ? () {
                controller?.pickDocument();
              }
            : null,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.grey100,
            borderRadius: BorderRadius.circular(kRadiusSmall),
          ),
          child: MultiListenableBuilder(
            notifiers: [controller],
            builder: (context, _) {
              if (controller!.initValue != null) {
                // Display document info instead of image preview
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Display document icon based on file extension
                      _buildDocumentIcon(controller!.initValue!.name),
                      const SizedBox(height: 8),
                      // Document name
                      Flexible(
                        child: TextWidget(
                          text: controller!.initValue!.name,
                          style: context.bodyM?.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLine: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageWidget(
                      image: Assets.icons.uploadImg,
                    ),
                    if (title.isNotNull) ...[
                      5.pw,
                      Flexible(
                        child: TextWidget(
                          text: title!,
                          style: context.bodyM?.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey500,
                          ),
                        ),
                      )
                    ],
                  ],
                ),
              );
            },
          ),
        ),
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
