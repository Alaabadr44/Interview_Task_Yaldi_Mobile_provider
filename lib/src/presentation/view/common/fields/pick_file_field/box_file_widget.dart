import 'package:flutter/material.dart';
import 'package:multi_listenable_builder/multi_listenable_builder.dart';

import '../../../../../core/config/app_colors.dart';
import '../../../../../core/config/assets/assets.gen.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/extension.dart';
import '../../image_widget.dart';
import '../../text_widget.dart';
import 'single_file_form_field.dart';

class BoxFileWidget extends StatelessWidget {
  final PickFileFieldController? controller;
  final bool onClick;
  final double? radius;
  final double height;
  final double? width;
  final String? title;
  final EdgeInsetsGeometry? margin;

  const BoxFileWidget({
    super.key,
    required this.controller,
    this.onClick = true,
    this.radius,
    this.width,
    this.margin,
    required this.height,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: onClick ? controller?.pickImage : null,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.grey100,
            borderRadius: BorderRadius.circular(kRadiusSmall),
          ),
          child: MultiListenableBuilder(
            notifiers: [controller],
            builder: (context, _) {
              if (controller!.initValue != null) {
                return Stack(
                  children: [
                    // Image
                    ImageWidget(
                      height: height,
                      width: width,
                      fit: BoxFit.fitWidth,
                      image: controller!.initValue,
                      imageBuilder: (context, image) => ClipRRect(
                        borderRadius: BorderRadius.circular(kRadiusSmall),
                        child: image,
                      ),
                    ),

                    // Overlay with action buttons
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadiusSmall),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.6),
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black.withValues(alpha: 0.4),
                            ],
                            stops: const [0.0, 0.3, 0.7, 1.0],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Top action buttons
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // View button
                                  _buildActionButton(
                                    icon: Icons.fullscreen,
                                    backgroundColor: AppColors.primaryColor,
                                    onTap: () => _viewImage(context),
                                  ),
                                  8.pw,
                                  // Delete button
                                  _buildActionButton(
                                    icon: Icons.delete_outline,
                                    backgroundColor: Colors.red,
                                    onTap: () => _deleteImage(context),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }
              return DefaultUploadImg(title: title);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required Color backgroundColor,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: backgroundColor.withValues(alpha: 0.3),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ),
    );
  }

  void _viewImage(BuildContext context) {
    if (controller?.initValue != null) {
      // Use the global viewDocument method with required parameters
      context.viewDocument(
        documentPath: controller!.initValue!.file.path,
        documentType: "Image",
        entityName: title,
        title: title ?? "Image Viewer",
      );
    }
  }

  void _deleteImage(BuildContext context) {
    // Show confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                  size: 20,
                ),
              ),
              12.pw,
              TextWidget(
                text: "Delete Image",
                style: context.titleM?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          content: TextWidget(
            text:
                "Are you sure you want to delete this image? This action cannot be undone.",
            style: context.bodyM?.copyWith(
              color: AppColors.grey600,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: TextWidget(
                text: "Cancel",
                style: context.bodyM?.copyWith(
                  color: AppColors.grey600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Clear the image by setting value to null
                controller?.setValue(null);
                Navigator.of(dialogContext).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: TextWidget(
                text: "Delete",
                style: context.bodyM?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class DefaultUploadImg extends StatelessWidget {
  const DefaultUploadImg({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
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
  }
}
