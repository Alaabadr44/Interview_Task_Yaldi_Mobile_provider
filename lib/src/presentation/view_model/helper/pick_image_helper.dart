// ignore_for_file: public_member_api_docs, sort_constructors_first

// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

// Package imports:
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

// Project imports:
import '../../../core/config/app_colors.dart';
import '../../../core/config/injector.dart';
import '../../../core/config/l10n/generated/l10n.dart';
import '../../../core/utils/app_logger.dart';
import '../../../core/utils/constant.dart';
import '../../../core/utils/enums.dart';
import '../../../core/utils/extension.dart';
import '../../../core/utils/file_model.dart';
import '../../view/common/popup/bottom_sheet.dart';
import '../../view/common/popup/overlay_alert.dart';
import '../../view/common/popup/overlay_body_widget.dart';
import '../../view/common/text_widget.dart';
/* 
class PickImageHelper {
  FileSource fileSource;
  int maxSize;
  bool imageCompression;

  late final ImagePicker _picker;

  PickImageHelper({
    required this.fileSource,
    this.maxSize = 2 * 1024 * 1024,
    this.imageCompression = true,
  }) {
    _picker = ImagePicker();
  }

  set changeSource(FileSource source) => fileSource = source;

  // Simplified permission check that handles both Android and iOS
  Future<bool> _checkPermissions() async {
    try {
      if (fileSource == FileSource.camera) {
        final status = await Permission.camera.request();
        return status.isGranted;
      } else if (fileSource == FileSource.glary) {
        // For gallery
        final status = await Permission.photos.request();
        return status.isGranted;
      } else {
        // For 'both' source type, check both permissions
        final cameraStatus = await Permission.camera.request();
        final photosStatus = await Permission.photos.request();
        return cameraStatus.isGranted && photosStatus.isGranted;
      }
    } catch (e) {
      print('Error checking permissions: $e');
      return false;
    }
  }

  // Simplified pick method with clearer flow and better error handling
  Future<List<FileModel>?> pick({bool? isMulti = true}) async {
    // Check permissions first
    final bool hasPermission = await _checkPermissions();
    
    if (!hasPermission) {
      // Show appropriate error message
      final context = injector<GlobalKey<NavigatorState>>().currentState!.context;
      if (context.mounted) {
        OverlayAlert.notify(
          message: "Permission denied for ${fileSource == FileSource.camera ? 'camera' : 'gallery'}",
          context: context,
          type: OverlayType.error,
        );
      }
      return null;
    }
    
    try {
      if (fileSource == FileSource.camera) {
        // Direct camera capture
        final XFile? file = await _picker.pickImage(source: ImageSource.camera);
        return processImagesConverter([file]);
      } 
      else if (fileSource == FileSource.glary) {
        // Gallery selection
        if (isMulti!) {
          final List<XFile> files = await _picker.pickMultiImage();
          return processImagesConverter(files);
        } else {
          final XFile? file = await _picker.pickImage(source: ImageSource.gallery);
          return processImagesConverter([file]);
        }
      } 
      else {
        // FileSource.both - Show selection bottom sheet
        return await _showSourceSelectionSheet(isMulti);
      }
    } on PlatformException catch (e) {
      print('PlatformException picking image: ${e.code} - ${e.message}');
      if (e.code == 'invalid_image') {
        final context = injector<GlobalKey<NavigatorState>>().currentState!.context;
        if (context.mounted) {
          OverlayAlert.notify(
            message: e.message ?? 'Invalid image',
            context: context,
            type: OverlayType.error,
          );
        }
      }
      return null;
    } catch (e) {
      print('Error picking image: $e');
      return null;
    }
  }

  // Extracted method to show the bottom sheet for source selection
  Future<List<FileModel>?> _showSourceSelectionSheet(bool? isMulti) async {
    final context = injector<GlobalKey<NavigatorState>>().currentState!.context;
    if (!context.mounted) return null;
    
    return await customBottomSheet<List<FileModel>?>(
      context: context,
      height: 250,
      builder: (context, constraints) {
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Camera option
              _buildSourceOption(
                context, 
                IconlyLight.camera, 
                S.current.camera,
                () async {
                  // Use a direct approach
                  final FileSource originalSource = fileSource;
                  fileSource = FileSource.camera;
                  final result = await pick();
                  // Restore original source after picking
                  fileSource = originalSource;
                  Navigator.pop(context, result);
                },
              ),
              
              // Gallery option
              _buildSourceOption(
                context, 
                IconlyLight.image, 
                S.current.gallery,
                () async {
                  // Use a direct approach
                  final FileSource originalSource = fileSource;
                  fileSource = FileSource.glary;
                  final result = await pick(isMulti: isMulti);
                  // Restore original source after picking
                  fileSource = originalSource;
                  Navigator.pop(context, result);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  // Helper method to build source selection options
  Widget _buildSourceOption(
    BuildContext context, 
    IconData icon, 
    String label, 
    VoidCallback onTap
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: context.sizeSide.smallSide * .25,
            height: context.sizeSide.smallSide * .25,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(.25),
              borderRadius: BorderRadius.circular(context.sizeSide.smallSide),
            ),
            child: Icon(
              icon,
              size: 48,
              color: AppColors.baseColor,
            ),
          ),
        ),
        12.ph,
        TextWidget(
          text: label,
          style: context.bodyL?.copyWith(color: AppColors.textPrimaryColor),
        ),
      ],
    );
  }

  // Process the picked images into FileModel objects
  List<FileModel>? processImagesConverter(List<XFile?>? images) {
    if (images == null || images.isEmpty) {
      return null;
    }
    
    List<FileModel> result = [];
    
    for (var image in images) {
      if (image != null) {
        File file = File(image.path);
        result.add(FileModel(file: file, name: image.name));
      }
    }
    
    return result.isEmpty ? null : result;
  }
} */

class PickImageHelper {
  FileSource fileSource;
  int maxSize;
  bool imageCompression;

  late final ImagePicker _picker;

  PickImageHelper({
    required this.fileSource,
    this.maxSize = 2 * 1024 * 1024,
    this.imageCompression = true,
  }) {
    _picker = ImagePicker();
  }

  set changeSource(FileSource source) => fileSource = source;

  Future<List<FileModel>?> pick({bool? isMulti = true}) async {
    // final bool isPermission = await checkPermission();
    List<FileModel>? images;
    try {
      if (fileSource == FileSource.camera) {
        final XFile? file = await _picker.pickImage(source: ImageSource.camera);
        images = processImagesConverter([file]);
      } else if (fileSource == FileSource.glary) {
        if (isMulti!) {
          final List<XFile> files = await _picker.pickMultiImage();

          images = processImagesConverter(files);
        } else {
          final XFile? file =
              await _picker.pickImage(source: ImageSource.gallery);
          images = processImagesConverter([file]);
        }
      } else {
        return await customBottomSheet<List<FileModel>?>(
          context: injector<GlobalKey<NavigatorState>>().currentState!.context,
          height: 370,
          builder: (context, constraints) {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {
                          changeSource = FileSource.camera;
                          pick().then((value) {
                            images = value;
                            context.popWidget(value: images);
                            return images;
                          });
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(.25),
                            borderRadius: BorderRadius.circular(kRadiusMedium),
                          ),
                          child: const Icon(
                            IconlyLight.camera,
                            size: 140,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      12.ph,
                      TextWidget(
                        text: S.current.camera,
                        style: context.bodyL
                            ?.copyWith(color: AppColors.textPrimaryColor),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {
                          changeSource = FileSource.glary;
                          pick(isMulti: isMulti).then((value) {
                            images = value;
                            context.popWidget(value: images);
                            return images;
                          });
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(.25),
                            borderRadius: BorderRadius.circular(kRadiusMedium),
                          ),
                          child: const Icon(
                            IconlyLight.image,
                            size: 140,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      12.ph,
                      TextWidget(
                        text: S.current.gallery,
                        style: context.bodyL
                            ?.copyWith(color: AppColors.textPrimaryColor),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        );
      }
    } on PlatformException catch (e) {
      if (e.code == 'invalid_image') {
        BuildContext context =
            injector<GlobalKey<NavigatorState>>().currentState!.context;
        if (context.mounted) {
          OverlayAlert.notify(
            message: e.message!,
            context: context,
            type: OverlayType.error,
          );
        }
      }

      checkPermission();
    }

    if (images.isNotNull) {
      List<FileModel> compressedImages = [];
      for (var image in images!) {
        compressedImages.add((await compressImage(image)) ?? image);
      }
      return compressedImages;
    }
    return null;
  }

  List<FileModel>? processImagesConverter(List<XFile?>? images) {
    if (images.isNotNull) {
      List<FileModel> result = [];
      File file;
      for (var image in images!) {
        if (image != null) {
          file = File(image.path);
          result.add(FileModel(file: file, name: image.name));
        }
      }
      return result;
    }
    return null;
  }

  Future<bool> checkPermission() async {
    bool isGranted = await Permission.storage.status.isGranted;
    if (!isGranted) {
      openAppSettings();
    }
    return isGranted;
  }

  Future<FileModel?> compressImage(FileModel file) async {
    // d.i(runtimeType, 'image size is ${file.size} bytes and max size is $maxSize bytes, image is ${file.size > maxSize ? 'over sized' : 'not over sized'}');
    if (imageCompression) {
      int fileSize = await file.file.length();
      if (fileSize > maxSize) {
        Uint8List? compressedImage =
            await FlutterImageCompress.compressWithFile(
          file.file.path,
          quality: 70,
          minWidth: 720,
          minHeight: 600,
          format: CompressFormat.png,
        );

        if (compressedImage != null) {
          AppLogger.logVerbose(
              "$runtimeType Input size  : ${fileSize / (1024 * 1024)} MB");
          AppLogger.logVerbose(
              "$runtimeType Output size : ${compressedImage.length / (1024 * 1024)} MB");
          file.file.writeAsBytesSync(compressedImage);
          return file;
        }
      }
    }
    return null;
  }
}
