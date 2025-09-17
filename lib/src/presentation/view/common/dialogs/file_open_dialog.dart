import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../core/utils/extension.dart';
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/file_generation_helper.dart';
import '../text_widget.dart';
import '../buttons/button_widget.dart';

class FileOpenDialog extends StatelessWidget {
  final File file;
  final FileType fileType;

  const FileOpenDialog({super.key, required this.file, required this.fileType});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Success icon
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: AppColors.successColor.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check_circle,
                size: 32,
                color: AppColors.successColor,
              ),
            ),
            16.ph,

            // Title
            TextWidget(
              text: "File Generated Successfully!",
              style: context.titleM?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            8.ph,

            // File info
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.grey50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    FileGenerationHelper.getFileIcon(fileType),
                    size: 24,
                    color: _getFileIconColor(fileType),
                  ),
                  12.pw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: file.path.split('/').last,
                          style: context.labelM?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        4.ph,
                        TextWidget(
                          text: _getFileSizeString(),
                          style: context.bodyS?.copyWith(
                            color: AppColors.grey600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            24.ph,

            // Question
            TextWidget(
              text: "Would you like to open the file now?",
              style: context.bodyM?.copyWith(
                color: AppColors.textSecondaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            24.ph,

            // Action buttons
            Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    onTab: () => Navigator.pop(context, false),
                    title: "Not Now",
                    backgroundColor: AppColors.grey100,
                  ),
                ),
                16.pw,
                Expanded(
                  child: ButtonWidget(
                    onTab: () => _openFile(context),
                    title: "Open File",
                    backgroundColor: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getFileIconColor(FileType type) {
    switch (type) {
      case FileType.pdf:
        return Colors.red;
      case FileType.excel:
        return Colors.green;
      case FileType.image:
        return Colors.blue;
    }
  }

  String _getFileSizeString() {
    try {
      final bytes = file.lengthSync();
      if (bytes < 1024) return '${bytes}B';
      if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)}KB';
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)}MB';
    } catch (e) {
      return 'Unknown size';
    }
  }

  Future<void> _openFile(BuildContext context) async {
    Navigator.pop(context, true);

    final success = await FileGenerationHelper.openFile(file);

    if (!success && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: TextWidget(
            text:
                "Could not open file. Please check if you have a compatible app installed.",
          ),
          backgroundColor: AppColors.warningColor,
        ),
      );
    }
  }
}

// Extension to easily show the dialog
extension FileOpenDialogExtension on BuildContext {
  Future<bool?> showFileOpenDialog({
    required File file,
    required FileType fileType,
  }) {
    return showDialog<bool>(
      context: this,
      builder: (context) => FileOpenDialog(file: file, fileType: fileType),
    );
  }
}
