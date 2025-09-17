import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../core/utils/extension.dart';
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/file_generation_helper.dart';
import '../../../../domain/entities/customer_model.dart';
import '../text_widget.dart';
import '../buttons/button_widget.dart';

class FileTypeSelectionBottomSheet extends StatefulWidget {
  final List<CustomerModel> customers;
  final Function(File file) onFileGenerated;

  const FileTypeSelectionBottomSheet({
    super.key,
    required this.customers,
    required this.onFileGenerated,
  });

  @override
  State<FileTypeSelectionBottomSheet> createState() =>
      _FileTypeSelectionBottomSheetState();
}

class _FileTypeSelectionBottomSheetState
    extends State<FileTypeSelectionBottomSheet> {
  FileType? selectedType;
  bool isGenerating = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Handle bar
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.grey500,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          16.ph,

          // Title
          TextWidget(
            text: context.localText.export_customer_data,
            style: context.titleM?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimaryColor,
            ),
          ),
          8.ph,

          // Subtitle
          TextWidget(
            text: context.localText.customers_selected(widget.customers.length),
            style: context.bodyM?.copyWith(color: AppColors.grey600),
          ),
          24.ph,

          // File type options
          TextWidget(
            text: context.localText.choose_file_format,
            style: context.labelL?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimaryColor,
            ),
          ),
          16.ph,

          // PDF Option
          _buildFileTypeOption(
            type: FileType.pdf,
            title: context.localText.pdf_document,
            subtitle: context.localText.professional_report_format,
            icon: Icons.picture_as_pdf,
            color: Colors.red,
          ),
          12.ph,

          // Excel Option
          _buildFileTypeOption(
            type: FileType.excel,
            title: context.localText.excel_spreadsheet,
            subtitle: context.localText.data_in_tabular_format,
            icon: Icons.table_chart,
            color: Colors.green,
          ),
          12.ph,

          // Image Option
          _buildFileTypeOption(
            type: FileType.image,
            title: context.localText.image_png,
            subtitle: context.localText.visual_representation,
            icon: Icons.image,
            color: Colors.blue,
          ),
          32.ph,

          // Action buttons
          Row(
            children: [
              Expanded(
                child: ButtonWidget(
                  onTab: () => Navigator.pop(context),
                  title: context.localText.cancel,
                  backgroundColor: AppColors.grey100,
                ),
              ),
              16.pw,
              Expanded(
                child: ButtonWidget(
                  onTab: selectedType != null ? _generateFile : null,
                  title:
                      isGenerating
                          ? context.localText.generating
                          : context.localText.generate,
                  backgroundColor:
                      selectedType != null
                          ? AppColors.primaryColor
                          : AppColors.grey500,
                ),
              ),
            ],
          ),

          // Safe area bottom padding
          MediaQuery.of(context).padding.bottom.ph,
        ],
      ),
    );
  }

  Widget _buildFileTypeOption({
    required FileType type,
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
  }) {
    final isSelected = selectedType == type;

    return GestureDetector(
      onTap: () => setState(() => selectedType = type),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? AppColors.primaryColor.withValues(alpha: 0.1)
                  : Colors.transparent,
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : AppColors.grey100,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: color, size: 24),
            ),
            16.pw,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: title,
                    style: context.labelL?.copyWith(
                      fontWeight: FontWeight.w600,
                      color:
                          isSelected
                              ? AppColors.primaryColor
                              : AppColors.textPrimaryColor,
                    ),
                  ),
                  4.ph,
                  TextWidget(
                    text: subtitle,
                    style: context.bodyS?.copyWith(color: AppColors.grey600),
                  ),
                ],
              ),
            ),
            if (isSelected) ...[
              12.pw,
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check, color: Colors.white, size: 16),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _generateFile() async {
    if (selectedType == null) return;

    // Capture localized messages before async operations
    final failedMessage = context.localText.failed_to_generate_file;
    final errorPrefix = context.localText.error_generating_file;

    setState(() => isGenerating = true);

    try {
      final file = await FileGenerationHelper().generateCustomerFile(
        customers: widget.customers,
        fileType: selectedType!,
      );

      if (file != null && mounted) {
        Navigator.pop(context);
        widget.onFileGenerated(file);
      } else {
        _showError(failedMessage);
      }
    } catch (e) {
      _showError("$errorPrefix: $e");
    } finally {
      if (mounted) {
        setState(() => isGenerating = false);
      }
    }
  }

  void _showError(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: TextWidget(text: message),
          backgroundColor: AppColors.errorColor,
        ),
      );
    }
  }
}

// Extension to easily show the bottom sheet
extension FileTypeSelectionBottomSheetExtension on BuildContext {
  Future<void> showFileTypeSelectionBottomSheet({
    required List<CustomerModel> customers,
    required Function(File file) onFileGenerated,
  }) {
    return showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => FileTypeSelectionBottomSheet(
            customers: customers,
            onFileGenerated: onFileGenerated,
          ),
    );
  }
}
