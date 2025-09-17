import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../domain/entities/inspection_details_model.dart';
import '../utils/file_generation_helper.dart';

class PdfService {
  static PdfService? _instance;
  static PdfService get instance => _instance ??= PdfService._();
  PdfService._();

  /// Generate inspection report PDF
  Future<Uint8List> generateInspectionReport({
    required InspectionDetailsModel data,
    required BuildContext context,
  }) async {
    final pdf = pw.Document();

    // Load fonts
    final regularFont = await _loadFont('fonts/Poppins/Poppins-Regular.ttf');
    final boldFont = await _loadFont('fonts/Poppins/Poppins-Bold.ttf');

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(40),
        build: (pw.Context context) {
          return [
            // Header
            _buildHeader(data),
            pw.SizedBox(height: 30),

            // Vehicle Information Section
            _buildSection(
              title: 'Vehicle Information',
              content: [
                _buildInfoRow(
                  'Vehicle:',
                  data.vehicle ?? '-',
                  regularFont,
                  boldFont,
                ),
                _buildInfoRow(
                  'Inspection Date:',
                  data.inspectionDate ?? '-',
                  regularFont,
                  boldFont,
                ),
                _buildInfoRow(
                  'Meter Reading:',
                  '${data.meterReadingIncoming ?? 0} km',
                  regularFont,
                  boldFont,
                ),
                if (data.contractNumber?.isNotEmpty == true)
                  _buildInfoRow(
                    'Contract Number:',
                    data.contractNumber!,
                    regularFont,
                    boldFont,
                  ),
              ],
              regularFont: regularFont,
              boldFont: boldFont,
            ),
            pw.SizedBox(height: 20),

            // Inspector Information Section
            _buildSection(
              title: 'Inspector Information',
              content: [
                _buildInfoRow(
                  'Inspected By:',
                  data.inspectionBy ?? '-',
                  regularFont,
                  boldFont,
                ),
                _buildInfoRow(
                  'Status:',
                  data.status ?? '-',
                  regularFont,
                  boldFont,
                ),
                if (data.notes?.isNotEmpty == true)
                  _buildInfoRow('Notes:', data.notes!, regularFont, boldFont),
              ],
              regularFont: regularFont,
              boldFont: boldFont,
            ),
            pw.SizedBox(height: 20),

            // Checklist Section
            if (data.inspectionsChecklist?.isNotEmpty == true) ...[
              _buildChecklistSection(data, regularFont, boldFont),
              pw.SizedBox(height: 20),
            ],

            // Summary
            _buildSummarySection(data, regularFont, boldFont),

            // Footer
            pw.Spacer(),
            _buildFooter(regularFont),
          ];
        },
      ),
    );

    return pdf.save();
  }

  pw.Widget _buildHeader(InspectionDetailsModel data) {
    return pw.Container(
      padding: const pw.EdgeInsets.all(20),
      decoration: pw.BoxDecoration(
        color: PdfColors.blue50,
        borderRadius: pw.BorderRadius.circular(8),
        border: pw.Border.all(color: PdfColors.blue200),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            'INSPECTION REPORT',
            style: pw.TextStyle(
              fontSize: 24,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.blue800,
            ),
          ),
          pw.SizedBox(height: 10),
          pw.Text(
            'Generated on ${DateTime.now().toString().split(' ')[0]}',
            style: const pw.TextStyle(fontSize: 12, color: PdfColors.grey600),
          ),
        ],
      ),
    );
  }

  pw.Widget _buildSection({
    required String title,
    required List<pw.Widget> content,
    required pw.Font regularFont,
    required pw.Font boldFont,
  }) {
    return pw.Container(
      decoration: pw.BoxDecoration(
        border: pw.Border.all(color: PdfColors.grey300),
        borderRadius: pw.BorderRadius.circular(8),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Container(
            width: double.infinity,
            padding: const pw.EdgeInsets.all(12),
            decoration: pw.BoxDecoration(
              color: PdfColors.grey100,
              borderRadius: const pw.BorderRadius.only(
                topLeft: pw.Radius.circular(8),
                topRight: pw.Radius.circular(8),
              ),
            ),
            child: pw.Text(
              title,
              style: pw.TextStyle(
                font: boldFont,
                fontSize: 16,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.grey800,
              ),
            ),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.all(12),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: content,
            ),
          ),
        ],
      ),
    );
  }

  pw.Widget _buildInfoRow(
    String label,
    String value,
    pw.Font regularFont,
    pw.Font boldFont,
  ) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(vertical: 4),
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Expanded(
            flex: 3,
            child: pw.Text(
              label,
              style: pw.TextStyle(
                font: boldFont,
                fontSize: 12,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.grey700,
              ),
            ),
          ),
          pw.Expanded(
            flex: 5,
            child: pw.Text(
              value,
              style: pw.TextStyle(
                font: regularFont,
                fontSize: 12,
                color: PdfColors.grey800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  pw.Widget _buildChecklistSection(
    InspectionDetailsModel data,
    pw.Font regularFont,
    pw.Font boldFont,
  ) {
    final checklist = data.inspectionsChecklist ?? [];

    return pw.Container(
      decoration: pw.BoxDecoration(
        border: pw.Border.all(color: PdfColors.grey300),
        borderRadius: pw.BorderRadius.circular(8),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Container(
            width: double.infinity,
            padding: const pw.EdgeInsets.all(12),
            decoration: pw.BoxDecoration(
              color: PdfColors.orange50,
              borderRadius: const pw.BorderRadius.only(
                topLeft: pw.Radius.circular(8),
                topRight: pw.Radius.circular(8),
              ),
            ),
            child: pw.Text(
              'Inspection Checklist',
              style: pw.TextStyle(
                font: boldFont,
                fontSize: 16,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.orange800,
              ),
            ),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.all(12),
            child: pw.Table(
              border: pw.TableBorder.all(color: PdfColors.grey300),
              columnWidths: const {
                0: pw.FlexColumnWidth(3),
                1: pw.FlexColumnWidth(1),
                2: pw.FlexColumnWidth(2),
              },
              children: [
                // Header
                pw.TableRow(
                  decoration: const pw.BoxDecoration(color: PdfColors.grey100),
                  children: [
                    _buildTableCell('Item', boldFont, isHeader: true),
                    _buildTableCell('Status', boldFont, isHeader: true),
                    _buildTableCell('Notes', boldFont, isHeader: true),
                  ],
                ),
                // Data rows
                ...checklist.map(
                  (item) => pw.TableRow(
                    children: [
                      _buildTableCell(item.type ?? '-', regularFont),
                      _buildTableCell(item.result ?? '-', regularFont),
                      _buildTableCell(_getFirstNote(item), regularFont),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getFirstNote(InspectionsChecklist item) {
    if (item.inspectionDetails?.isNotEmpty == true) {
      final firstDetail = item.inspectionDetails!.first;
      return firstDetail.note?.toString() ?? '-';
    }
    return '-';
  }

  pw.Widget _buildTableCell(
    String text,
    pw.Font font, {
    bool isHeader = false,
  }) {
    return pw.Container(
      padding: const pw.EdgeInsets.all(8),
      child: pw.Text(
        text,
        style: pw.TextStyle(
          font: font,
          fontSize: 10,
          fontWeight: isHeader ? pw.FontWeight.bold : pw.FontWeight.normal,
          color: isHeader ? PdfColors.grey800 : PdfColors.grey700,
        ),
      ),
    );
  }

  pw.Widget _buildSummarySection(
    InspectionDetailsModel data,
    pw.Font regularFont,
    pw.Font boldFont,
  ) {
    final checklist = data.inspectionsChecklist ?? [];
    final totalItems = checklist.length;
    final passedItems =
        checklist
            .where(
              (item) =>
                  item.result?.toLowerCase() == 'pass' ||
                  item.result?.toLowerCase() == 'passed' ||
                  item.result?.toLowerCase() == 'ok',
            )
            .length;
    final failedItems = totalItems - passedItems;
    final totalCost = checklist.fold<double>(0, (sum, item) {
      if (item.inspectionDetails?.isNotEmpty == true) {
        return sum +
            item.inspectionDetails!.fold<double>(
              0,
              (detailSum, detail) =>
                  detailSum +
                  (double.tryParse(detail.cost?.toString() ?? '0') ?? 0),
            );
      }
      return sum;
    });

    return _buildSection(
      title: 'Summary',
      content: [
        _buildInfoRow(
          'Total Items Checked:',
          totalItems.toString(),
          regularFont,
          boldFont,
        ),
        _buildInfoRow(
          'Passed Items:',
          passedItems.toString(),
          regularFont,
          boldFont,
        ),
        _buildInfoRow(
          'Failed Items:',
          failedItems.toString(),
          regularFont,
          boldFont,
        ),
        _buildInfoRow(
          'Total Cost:',
          '\$${totalCost.toStringAsFixed(2)}',
          regularFont,
          boldFont,
        ),
        _buildInfoRow(
          'Overall Status:',
          data.status ?? '-',
          regularFont,
          boldFont,
        ),
      ],
      regularFont: regularFont,
      boldFont: boldFont,
    );
  }

  pw.Widget _buildFooter(pw.Font regularFont) {
    return pw.Container(
      padding: const pw.EdgeInsets.all(16),
      decoration: pw.BoxDecoration(
        color: PdfColors.grey50,
        borderRadius: pw.BorderRadius.circular(8),
      ),
      child: pw.Column(
        children: [
          pw.Text(
            'This is a computer-generated report',
            style: pw.TextStyle(
              font: regularFont,
              fontSize: 10,
              color: PdfColors.grey600,
            ),
          ),
          pw.SizedBox(height: 4),
          pw.Text(
            'Generated by Car Rental Management System',
            style: pw.TextStyle(
              font: regularFont,
              fontSize: 10,
              color: PdfColors.grey600,
            ),
          ),
        ],
      ),
    );
  }

  Future<pw.Font> _loadFont(String assetPath) async {
    try {
      final fontData = await rootBundle.load('assets/$assetPath');
      return pw.Font.ttf(fontData);
    } catch (e) {
      // Fallback to default font if loading fails
      return pw.Font.helvetica();
    }
  }

  /// Download PDF to device
  Future<bool> downloadPdf({
    required Uint8List pdfBytes,
    required String fileName,
    required BuildContext context,
  }) async {
    try {
      // Request storage permission
      final permission = await Permission.storage.request();
      if (!permission.isGranted) {
        throw Exception('Storage permission denied');
      }

      // Get download directory
      Directory? downloadDir;
      if (Platform.isAndroid) {
        downloadDir = Directory('/storage/emulated/0/Download');
        if (!await downloadDir.exists()) {
          downloadDir = await getExternalStorageDirectory();
        }
      } else {
        downloadDir = await getApplicationDocumentsDirectory();
      }

      if (downloadDir == null) {
        throw Exception('Could not access storage directory');
      }

      // Create file
      final file = File('${downloadDir.path}/$fileName.pdf');
      await file.writeAsBytes(pdfBytes);

      // Show success message
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('PDF downloaded to ${file.path}'),
            action: SnackBarAction(
              label: 'Open',
              onPressed: () => OpenFile.open(file.path),
            ),
          ),
        );
      }

      return true;
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Download failed: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return false;
    }
  }

  /// Share PDF
  Future<bool> sharePdf({
    required Uint8List pdfBytes,
    required String fileName,
    required BuildContext context,
  }) async {
    try {
      // Get temporary directory
      final tempDir = await getTemporaryDirectory();
      final file = File('${tempDir.path}/$fileName.pdf');
      await file.writeAsBytes(pdfBytes);

      // Share file
      await Share.shareXFiles(
        [XFile(file.path)],
        text: 'Inspection Report',
        subject: 'Vehicle Inspection Report - $fileName',
      );

      return true;
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Share failed: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return false;
    }
  }

  /// Generate filename for PDF
  String generateFileName(InspectionDetailsModel data) {
    final vehicle = data.vehicle?.replaceAll(' ', '_') ?? 'Vehicle';
    final date =
        data.inspectionDate?.replaceAll('/', '-') ??
        DateTime.now().toString().split(' ')[0];
    return 'Inspection_Report_${vehicle}_$date';
  }

  /// Save PDF to saved files directory with metadata
  Future<bool> savePdfToSavedFiles({
    required Uint8List pdfBytes,
    required String fileName,
    required DataType dataType,
    required BuildContext context,
    Map<String, dynamic>? metadata,
  }) async {
    try {
      // Request storage permission
      final permission = await Permission.storage.request();
      if (!permission.isGranted) {
        throw Exception('Storage permission denied');
      }

      // Get saved files directory
      final savedFilesDir = await _getSavedFilesDirectory();
      if (!await savedFilesDir.exists()) {
        await savedFilesDir.create(recursive: true);
      }

      // Create file
      final file = File('${savedFilesDir.path}/$fileName.pdf');
      await file.writeAsBytes(pdfBytes);

      // Save metadata
      await _saveFileMetadata(file, dataType, metadata);

      // Show success message
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('PDF saved to saved files'),
            backgroundColor: Colors.green,
            action: SnackBarAction(
              label: 'View',
              onPressed: () {
                // Navigate to saved files page
                // This would need to be implemented based on your navigation structure
              },
            ),
          ),
        );
      }

      return true;
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Save failed: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return false;
    }
  }

  /// Get saved files directory
  Future<Directory> _getSavedFilesDirectory() async {
    if (Platform.isAndroid) {
      final directory = await getExternalStorageDirectory();
      return Directory('${directory!.path}/SavedFiles');
    } else {
      final directory = await getApplicationDocumentsDirectory();
      return Directory('${directory.path}/SavedFiles');
    }
  }

  /// Save file metadata
  Future<void> _saveFileMetadata(
    File file,
    DataType dataType,
    Map<String, dynamic>? metadata,
  ) async {
    try {
      final metadataFile = File('${file.path}.meta');
      final metadataJson = {
        'dataType': dataType.name,
        'createdAt': DateTime.now().toIso8601String(),
        'originalName': file.path.split('/').last,
        'metadata': metadata ?? {},
      };

      await metadataFile.writeAsString(json.encode(metadataJson));
    } catch (e) {
      print('Failed to save metadata: $e');
    }
  }
}
