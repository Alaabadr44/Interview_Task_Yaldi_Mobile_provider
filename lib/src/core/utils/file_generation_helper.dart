import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:excel/excel.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/customer_model.dart';

enum FileType { pdf, excel, image }

enum DataType { customers, inspections, vehicles, contracts, reports, other }

/// Enhanced SavedFileModel with data type categorization
class SavedFileModel {
  final String name;
  final String path;
  final FileType type;
  final DataType dataType;
  final DateTime createdAt;
  final int sizeInBytes;
  final Map<String, dynamic>? metadata;

  SavedFileModel({
    required this.name,
    required this.path,
    required this.type,
    required this.dataType,
    required this.createdAt,
    required this.sizeInBytes,
    this.metadata,
  });

  String get formattedSize {
    if (sizeInBytes < 1024) return '${sizeInBytes}B';
    if (sizeInBytes < 1024 * 1024)
      return '${(sizeInBytes / 1024).toStringAsFixed(1)}KB';
    return '${(sizeInBytes / (1024 * 1024)).toStringAsFixed(1)}MB';
  }

  String get formattedDate =>
      DateFormat('MMM dd, yyyy HH:mm').format(createdAt);

  String get dataTypeDisplayName {
    switch (dataType) {
      case DataType.customers:
        return 'Customer Reports';
      case DataType.inspections:
        return 'Inspection Reports';
      case DataType.vehicles:
        return 'Vehicle Reports';
      case DataType.contracts:
        return 'Contract Reports';
      case DataType.reports:
        return 'General Reports';
      case DataType.other:
        return 'Other Files';
    }
  }

  Color get dataTypeColor {
    switch (dataType) {
      case DataType.customers:
        return Colors.blue;
      case DataType.inspections:
        return Colors.orange;
      case DataType.vehicles:
        return Colors.green;
      case DataType.contracts:
        return Colors.purple;
      case DataType.reports:
        return Colors.teal;
      case DataType.other:
        return Colors.grey;
    }
  }

  IconData get dataTypeIcon {
    switch (dataType) {
      case DataType.customers:
        return Icons.people;
      case DataType.inspections:
        return Icons.assignment;
      case DataType.vehicles:
        return Icons.directions_car;
      case DataType.contracts:
        return Icons.description;
      case DataType.reports:
        return Icons.analytics;
      case DataType.other:
        return Icons.folder;
    }
  }
}

class FileGenerationHelper {
  static final FileGenerationHelper _instance =
      FileGenerationHelper._internal();
  factory FileGenerationHelper() => _instance;
  FileGenerationHelper._internal();

  /// Generate customer data file based on type
  Future<File?> generateCustomerFile({
    required List<CustomerModel> customers,
    required FileType fileType,
    String? customFileName,
  }) async {
    try {
      // Request storage permission
      if (!await _requestStoragePermission()) {
        throw Exception('Storage permission denied');
      }

      final String fileName = customFileName ??
          'customers_${DateFormat('yyyy_MM_dd_HH_mm').format(DateTime.now())}';

      switch (fileType) {
        case FileType.pdf:
          return await _generatePDF(customers, fileName);
        case FileType.excel:
          return await _generateExcel(customers, fileName);
        case FileType.image:
          return await _generateImage(customers, fileName);
      }
    } catch (e) {
      print('Error generating file: $e');
      return null;
    }
  }

  /// Generate PDF file
  Future<File> _generatePDF(
      List<CustomerModel> customers, String fileName) async {
    final pdf = pw.Document();

    // Add customers data to PDF
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(20),
        header: (context) => _buildPDFHeader(),
        build: (context) => [
          _buildCustomersTable(customers),
        ],
      ),
    );

    // Save PDF file
    final directory = await _getDownloadDirectory();
    final file = File('${directory.path}/$fileName.pdf');
    await file.writeAsBytes(await pdf.save());

    return file;
  }

  /// Generate Excel file
  Future<File> _generateExcel(
      List<CustomerModel> customers, String fileName) async {
    final excel = Excel.createExcel();
    final sheet = excel['Customers'];

    // Add comprehensive headers for all customer properties
    final headers = [
      'ID',
      'Name',
      'Phone',
      'WhatsApp Available',
      'Email',
      'Identity Number',
      'Address',
      'Country',
      'Company',
      'Classification',
      'Gender',
      'License Number',
      'Place of Issue',
      'License Issue Date',
      'License Expiry Date',
      'License Front Image',
      'License Back Image',
      'ID Front Image',
      'ID Back Image',
      'Passport Image',
      'Notes',
      'Extra Phones'
    ];

    // Style headers
    for (int i = 0; i < headers.length; i++) {
      final cell =
          sheet.cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: 0));
      cell.value = headers[i];
      cell.cellStyle = CellStyle(
        bold: true,
        backgroundColorHex: '#E3F2FD',
        fontColorHex: '#1565C0',
      );
    }

    // Add customer data with all properties
    for (int i = 0; i < customers.length; i++) {
      final customer = customers[i];
      final row = i + 1;

      // ID
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: row))
          .value = customer.id?.toString() ?? '';

      // Name
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: row))
          .value = customer.name ?? '';

      // Phone
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: row))
          .value = customer.phone ?? '';

      // WhatsApp Available
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: row))
          .value = customer.whatsappCheck == 1 ? 'Yes' : 'No';

      // Email
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 4, rowIndex: row))
          .value = customer.email ?? '';

      // Identity Number
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 5, rowIndex: row))
          .value = customer.identityNumber ?? '';

      // Address
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 6, rowIndex: row))
          .value = customer.address ?? '';

      // Country
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 7, rowIndex: row))
          .value = customer.country?.name ?? '';

      // Company
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 8, rowIndex: row))
          .value = customer.company?.name ?? '';

      // Classification
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 9, rowIndex: row))
          .value = customer.classification ?? '';

      // Gender
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 10, rowIndex: row))
          .value = customer.gender ?? '';

      // License Number
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 11, rowIndex: row))
          .value = customer.licenseNumber ?? '';

      // Place of Issue
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 12, rowIndex: row))
          .value = customer.placeOfIssue ?? '';

      // License Issue Date
      sheet
              .cell(CellIndex.indexByColumnRow(columnIndex: 13, rowIndex: row))
              .value =
          customer.issueDate != null
              ? DateFormat('yyyy-MM-dd').format(customer.issueDate!)
              : '';

      // License Expiry Date
      sheet
              .cell(CellIndex.indexByColumnRow(columnIndex: 14, rowIndex: row))
              .value =
          customer.expiryDate != null
              ? DateFormat('yyyy-MM-dd').format(customer.expiryDate!)
              : '';

      // License Front Image
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 15, rowIndex: row))
          .value = customer.licenseFront ?? '';

      // License Back Image
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 16, rowIndex: row))
          .value = customer.licenseBack ?? '';

      // ID Front Image
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 17, rowIndex: row))
          .value = customer.idFront ?? '';

      // ID Back Image
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 18, rowIndex: row))
          .value = customer.idBack ?? '';

      // Passport Image
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 19, rowIndex: row))
          .value = customer.passportImage ?? '';

      // Notes
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 20, rowIndex: row))
          .value = customer.note ?? '';

      // Extra Phones (concatenated)
      String extraPhones = '';
      if (customer.extraPhones != null && customer.extraPhones!.isNotEmpty) {
        extraPhones = customer.extraPhones!.map((phone) {
          final whatsapp = phone.whatsapp == 1 ? ' (WhatsApp)' : '';
          final countryCode =
              phone.countryCode != null ? '+${phone.countryCode}' : '';
          return '$countryCode${phone.phone}$whatsapp';
        }).join('; ');
      }
      sheet
          .cell(CellIndex.indexByColumnRow(columnIndex: 21, rowIndex: row))
          .value = extraPhones;
    }

    // Save Excel file
    final directory = await _getDownloadDirectory();
    final file = File('${directory.path}/$fileName.xlsx');
    await file.writeAsBytes(excel.encode()!);

    return file;
  }

  /// Generate Image file (requires a widget to render)
  Future<File> _generateImage(
      List<CustomerModel> customers, String fileName) async {
    final directory = await _getDownloadDirectory();
    final file = File('${directory.path}/$fileName.png');

    // Create a custom painter to render customer data
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    const size = Size(800, 1200); // A4-like aspect ratio

    // Background
    final backgroundPaint = Paint()..color = const Color(0xFFF5F5F5);
    canvas.drawRect(
        Rect.fromLTWH(0, 0, size.width, size.height), backgroundPaint);

    // Header
    final headerPaint = Paint()..color = const Color(0xFF1976D2);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, 80), headerPaint);

    // Header text
    final headerTextPainter = TextPainter(
      text: TextSpan(
        text: 'Customer Report',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: ui.TextDirection.ltr,
    );
    headerTextPainter.layout();
    headerTextPainter.paint(canvas, const Offset(20, 25));

    // Date
    final dateTextPainter = TextPainter(
      text: TextSpan(
        text:
            'Generated: ${DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now())}',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      textDirection: ui.TextDirection.ltr,
    );
    dateTextPainter.layout();
    dateTextPainter.paint(
        canvas, Offset(size.width - dateTextPainter.width - 20, 35));

    // Summary
    final summaryTextPainter = TextPainter(
      text: TextSpan(
        text: 'Total Customers: ${customers.length}',
        style: TextStyle(
          color: const Color(0xFF333333),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      textDirection: ui.TextDirection.ltr,
    );
    summaryTextPainter.layout();
    summaryTextPainter.paint(canvas, const Offset(20, 100));

    // Customer list (first 10 customers for image)
    double yOffset = 140;
    final displayCustomers = customers.take(10).toList();

    for (int i = 0; i < displayCustomers.length; i++) {
      final customer = displayCustomers[i];

      // Customer card background
      final cardPaint = Paint()..color = Colors.white;
      final cardRect = Rect.fromLTWH(20, yOffset, size.width - 40, 100);
      final cardPath = Path()
        ..addRRect(RRect.fromRectAndRadius(cardRect, const Radius.circular(8)));
      canvas.drawPath(cardPath, cardPaint);

      // Card border
      final borderPaint = Paint()
        ..color = const Color(0xFFE0E0E0)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1;
      canvas.drawPath(cardPath, borderPaint);

      // Customer avatar circle
      final avatarPaint = Paint()
        ..color = const Color(0xFF1976D2).withOpacity(0.1);
      canvas.drawCircle(Offset(50, yOffset + 25), 15, avatarPaint);

      // Avatar text
      final avatarTextPainter = TextPainter(
        text: TextSpan(
          text: (customer.name?.isNotEmpty == true)
              ? customer.name!.substring(0, 1).toUpperCase()
              : 'C',
          style: TextStyle(
            color: const Color(0xFF1976D2),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: ui.TextDirection.ltr,
      );
      avatarTextPainter.layout();
      avatarTextPainter.paint(
          canvas,
          Offset(50 - avatarTextPainter.width / 2,
              yOffset + 25 - avatarTextPainter.height / 2));

      // Customer name
      final nameTextPainter = TextPainter(
        text: TextSpan(
          text: customer.name ?? 'Unknown Customer',
          style: TextStyle(
            color: const Color(0xFF333333),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        textDirection: ui.TextDirection.ltr,
      );
      nameTextPainter.layout(maxWidth: 300);
      nameTextPainter.paint(canvas, Offset(80, yOffset + 15));

      // Customer details
      final details = <String>[];
      if (customer.phone?.isNotEmpty == true)
        details.add('📞 ${customer.phone}');
      if (customer.email?.isNotEmpty == true)
        details.add('📧 ${customer.email}');
      if (customer.country?.name?.isNotEmpty == true)
        details.add('🌍 ${customer.country!.name}');
      if (customer.classification?.isNotEmpty == true)
        details.add('👤 ${customer.classification}');

      final detailsText = details.take(2).join(' • ');
      if (detailsText.isNotEmpty) {
        final detailsTextPainter = TextPainter(
          text: TextSpan(
            text: detailsText,
            style: TextStyle(
              color: const Color(0xFF666666),
              fontSize: 12,
            ),
          ),
          textDirection: ui.TextDirection.ltr,
        );
        detailsTextPainter.layout(maxWidth: 600);
        detailsTextPainter.paint(canvas, Offset(80, yOffset + 40));
      }

      // License info
      if (customer.licenseNumber?.isNotEmpty == true) {
        final licenseTextPainter = TextPainter(
          text: TextSpan(
            text: '🆔 License: ${customer.licenseNumber}',
            style: TextStyle(
              color: const Color(0xFF666666),
              fontSize: 11,
            ),
          ),
          textDirection: ui.TextDirection.ltr,
        );
        licenseTextPainter.layout(maxWidth: 300);
        licenseTextPainter.paint(canvas, Offset(80, yOffset + 60));
      }

      yOffset += 110;
    }

    // Footer note if there are more customers
    if (customers.length > 10) {
      final footerTextPainter = TextPainter(
        text: TextSpan(
          text:
              '... and ${customers.length - 10} more customers. Generate PDF or Excel for complete data.',
          style: TextStyle(
            color: const Color(0xFF666666),
            fontSize: 12,
            fontStyle: FontStyle.italic,
          ),
        ),
        textDirection: ui.TextDirection.ltr,
      );
      footerTextPainter.layout(maxWidth: size.width - 40);
      footerTextPainter.paint(canvas, Offset(20, yOffset + 20));
    }

    // Convert to image
    final picture = recorder.endRecording();
    final image =
        await picture.toImage(size.width.toInt(), size.height.toInt());
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final pngBytes = byteData!.buffer.asUint8List();

    // Save to file
    await file.writeAsBytes(pngBytes);

    return file;
  }

  /// Build PDF header
  pw.Widget _buildPDFHeader() {
    return pw.Container(
      padding: const pw.EdgeInsets.only(bottom: 20),
      decoration: const pw.BoxDecoration(
        border: pw.Border(
            bottom: pw.BorderSide(color: PdfColors.grey300, width: 1)),
      ),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Text(
            'Customer Report',
            style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
          ),
          pw.Text(
            'Generated: ${DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now())}',
            style: const pw.TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  /// Build customers table for PDF
  pw.Widget _buildCustomersTable(List<CustomerModel> customers) {
    // Split customers into chunks for better readability
    const customersPerPage = 5;
    final chunks = <List<CustomerModel>>[];

    for (int i = 0; i < customers.length; i += customersPerPage) {
      chunks.add(customers.sublist(
          i,
          i + customersPerPage > customers.length
              ? customers.length
              : i + customersPerPage));
    }

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: chunks.asMap().entries.map((entry) {
        final chunkIndex = entry.key;
        final customerChunk = entry.value;

        return pw.Column(
          children: [
            if (chunkIndex > 0) pw.NewPage(),

            // Summary information
            pw.Container(
              margin: const pw.EdgeInsets.only(bottom: 20),
              padding: const pw.EdgeInsets.all(15),
              decoration: pw.BoxDecoration(
                color: PdfColors.grey100,
                borderRadius: pw.BorderRadius.circular(8),
              ),
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(
                    'Total Customers: ${customers.length}',
                    style: pw.TextStyle(
                        fontSize: 14, fontWeight: pw.FontWeight.bold),
                  ),
                  pw.Text(
                    'Page ${chunkIndex + 1} of ${chunks.length}',
                    style: const pw.TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),

            // Customer details for this chunk
            ...customerChunk
                .map((customer) => _buildCustomerDetailCard(customer)),

            if (chunkIndex < chunks.length - 1) pw.SizedBox(height: 20),
          ],
        );
      }).toList(),
    );
  }

  /// Build detailed customer card for PDF
  pw.Widget _buildCustomerDetailCard(CustomerModel customer) {
    return pw.Container(
      margin: const pw.EdgeInsets.only(bottom: 20),
      padding: const pw.EdgeInsets.all(15),
      decoration: pw.BoxDecoration(
        border: pw.Border.all(color: PdfColors.grey300, width: 1),
        borderRadius: pw.BorderRadius.circular(8),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          // Header with name and ID
          pw.Container(
            padding: const pw.EdgeInsets.only(bottom: 10),
            decoration: const pw.BoxDecoration(
              border:
                  pw.Border(bottom: pw.BorderSide(color: PdfColors.grey300)),
            ),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  customer.name ?? 'Unknown Customer',
                  style: pw.TextStyle(
                      fontSize: 16, fontWeight: pw.FontWeight.bold),
                ),
                pw.Text(
                  'ID: ${customer.id ?? 'N/A'}',
                  style: pw.TextStyle(fontSize: 12, color: PdfColors.grey600),
                ),
              ],
            ),
          ),

          pw.SizedBox(height: 10),

          // Personal Information Section
          _buildPDFSection('Personal Information', [
            _buildPDFRow('Gender', customer.gender ?? 'Not specified'),
            _buildPDFRow(
                'Identity Number', customer.identityNumber ?? 'Not provided'),
            _buildPDFRow(
                'Classification', customer.classification ?? 'Not specified'),
          ]),

          pw.SizedBox(height: 10),

          // Contact Information Section
          _buildPDFSection('Contact Information', [
            _buildPDFRow('Phone', customer.phone ?? 'Not provided'),
            _buildPDFRow('WhatsApp',
                customer.whatsappCheck == 1 ? 'Available' : 'Not available'),
            _buildPDFRow('Email', customer.email ?? 'Not provided'),
            _buildPDFRow('Address', customer.address ?? 'Not provided'),
            if (customer.extraPhones != null &&
                customer.extraPhones!.isNotEmpty)
              _buildPDFRow(
                  'Extra Phones',
                  customer.extraPhones!.map((phone) {
                    final whatsapp = phone.whatsapp == 1 ? ' (WhatsApp)' : '';
                    final countryCode = phone.countryCode != null
                        ? '+${phone.countryCode}'
                        : '';
                    return '$countryCode${phone.phone}$whatsapp';
                  }).join(', ')),
          ]),

          pw.SizedBox(height: 10),

          // Organization Information Section
          _buildPDFSection('Organization Information', [
            _buildPDFRow('Country', customer.country?.name ?? 'Not specified'),
            _buildPDFRow('Company', customer.company?.name ?? 'Not specified'),
          ]),

          pw.SizedBox(height: 10),

          // License Information Section
          _buildPDFSection('License Information', [
            _buildPDFRow(
                'License Number', customer.licenseNumber ?? 'Not provided'),
            _buildPDFRow(
                'Place of Issue', customer.placeOfIssue ?? 'Not specified'),
            _buildPDFRow(
                'Issue Date',
                customer.issueDate != null
                    ? DateFormat('yyyy-MM-dd').format(customer.issueDate!)
                    : 'Not provided'),
            _buildPDFRow(
                'Expiry Date',
                customer.expiryDate != null
                    ? DateFormat('yyyy-MM-dd').format(customer.expiryDate!)
                    : 'Not provided'),
          ]),

          // Document Status Section
          if (_hasDocuments(customer)) ...[
            pw.SizedBox(height: 10),
            _buildPDFSection('Document Status', [
              _buildPDFRow('License Front',
                  customer.licenseFront != null ? 'Available' : 'Not uploaded'),
              _buildPDFRow('License Back',
                  customer.licenseBack != null ? 'Available' : 'Not uploaded'),
              _buildPDFRow('ID Front',
                  customer.idFront != null ? 'Available' : 'Not uploaded'),
              _buildPDFRow('ID Back',
                  customer.idBack != null ? 'Available' : 'Not uploaded'),
              _buildPDFRow(
                  'Passport Image',
                  customer.passportImage != null
                      ? 'Available'
                      : 'Not uploaded'),
            ]),
          ],

          // Notes Section
          if (customer.note?.isNotEmpty == true) ...[
            pw.SizedBox(height: 10),
            _buildPDFSection('Notes', [
              pw.Text(
                customer.note!,
                style: const pw.TextStyle(fontSize: 10),
              ),
            ]),
          ],
        ],
      ),
    );
  }

  /// Build PDF section with title and content
  pw.Widget _buildPDFSection(String title, List<pw.Widget> content) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          title,
          style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.blue800),
        ),
        pw.SizedBox(height: 5),
        pw.Container(
          padding: const pw.EdgeInsets.all(8),
          decoration: pw.BoxDecoration(
            color: PdfColors.grey50,
            borderRadius: pw.BorderRadius.circular(4),
          ),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: content,
          ),
        ),
      ],
    );
  }

  /// Build PDF row for key-value pairs
  pw.Widget _buildPDFRow(String label, String value) {
    return pw.Padding(
      padding: const pw.EdgeInsets.only(bottom: 4),
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(
            width: 120,
            child: pw.Text(
              '$label:',
              style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.bold),
            ),
          ),
          pw.Expanded(
            child: pw.Text(
              value,
              style: const pw.TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }

  /// Check if customer has any documents uploaded
  bool _hasDocuments(CustomerModel customer) {
    return customer.licenseFront != null ||
        customer.licenseBack != null ||
        customer.idFront != null ||
        customer.idBack != null ||
        customer.passportImage != null;
  }

  /// Request storage permission
  Future<bool> _requestStoragePermission() async {
    if (Platform.isAndroid) {
      final status = await Permission.storage.request();
      return status.isGranted;
    }
    return true; // iOS doesn't require explicit storage permission for app documents
  }

  /// Get download directory
  Future<Directory> _getDownloadDirectory() async {
    if (Platform.isAndroid) {
      final directory = await getExternalStorageDirectory();
      final downloadsPath =
          '${directory!.parent.parent.parent.parent.path}/Download';
      final downloadsDirectory = Directory(downloadsPath);

      if (!await downloadsDirectory.exists()) {
        await downloadsDirectory.create(recursive: true);
      }
      return downloadsDirectory;
    } else {
      return await getApplicationDocumentsDirectory();
    }
  }

  /// Open file after generation
  static Future<bool> openFile(File file) async {
    try {
      final result = await OpenFile.open(file.path);
      return result.type == ResultType.done;
    } catch (e) {
      print('Error opening file: $e');
      return false;
    }
  }

  /// Get file extension based on type
  static String getFileExtension(FileType type) {
    switch (type) {
      case FileType.pdf:
        return 'pdf';
      case FileType.excel:
        return 'xlsx';
      case FileType.image:
        return 'png';
    }
  }

  /// Get file icon based on type
  static IconData getFileIcon(FileType type) {
    switch (type) {
      case FileType.pdf:
        return Icons.picture_as_pdf;
      case FileType.excel:
        return Icons.table_chart;
      case FileType.image:
        return Icons.image;
    }
  }

  /// Get file mime type
  static String getMimeType(FileType type) {
    switch (type) {
      case FileType.pdf:
        return 'application/pdf';
      case FileType.excel:
        return 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
      case FileType.image:
        return 'image/png';
    }
  }
}
