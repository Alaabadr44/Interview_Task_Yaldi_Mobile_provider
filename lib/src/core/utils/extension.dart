// Dart imports:
import 'dart:io';
import 'dart:ui';

// Flutter imports:
import 'package:flutter_application_1/src/core/services/setting_service.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

// Project imports:
import '../../presentation/view/common/app_bar/image-viewer/controller/image_viewer_controller.dart';
import '../../presentation/view/common/popup/overlay_alert.dart';
import '../../presentation/view/common/popup/overlay_body_widget.dart';
import '../../presentation/view/general/app_indicator.dart';
import '../config/app_colors.dart';
import '../config/l10n/generated/l10n.dart';
import 'constant.dart';
import 'enums.dart';
import '../config/l10n/generated/intl/messages_ar.dart' as messages_ar;
import '../config/l10n/generated/intl/messages_en.dart' as messages_en;

extension FormBuilderValidatorsHelper on FormBuilderValidators {
  static FormFieldValidator checkPasswordConfirmation(
    BuildContext context,
    GlobalKey<FormBuilderFieldState> value, {
    String? errorText,
  }) {
    return (valueCandidate) {
      return valueCandidate != value.currentState?.value
          ? errorText ?? ''
          : null;
    };
  }

  static FormFieldValidator checkPhoneIsValid({String? errorText}) {
    RegExp saudiRegex = RegExp(r'^(?:\+966|966|05|5)(5\d{8})$');
    bool isPhoneValid(String phone) {
      return saudiRegex.hasMatch(phone.toLowerCase());
    }

    return (valueCandidate) {
      if (valueCandidate != null) {
        return !isPhoneValid(valueCandidate) ? errorText ?? '' : null;
      }
      return null;
    };
  }
}

extension Collection on List? {
  bool get isNotNull => this != null && this!.isNotEmpty;

  T? firstWhereOrNull<T>(bool Function(T element) predicate) {
    if (this == null || this!.isEmpty) return null;

    for (final element in this!) {
      if (element is T && predicate(element)) {
        return element;
      }
    }
    return null;
  }
}

bool? boolFromApi(dynamic val) {
  if (val is bool) {
    return val;
  } else if (val is num) {
    return val == 1;
  } else if (val is String) {
    return (val.toLowerCase() == (true).toString().toLowerCase() ||
        val == (1).toString());
  } else {
    return val;
  }
}

extension SizeBox on num? {
  // SizedBox get h => SizedBox(height: this?.toDouble());
  // SizedBox get w => SizedBox(width: this?.toDouble());

  String? get toText => this != null ? toString() : null;

  String get formatDuration {
    String? hoursStr = '${this! ~/ 3600}'.padLeft(2, '0');
    String? minutesStr = '${(this! ~/ 60) % 60}'.padLeft(2, '0');
    String? secondsStr = '${this! % 60}'.padLeft(2, '0');
    List<String> result = [];
    hoursStr.isNotNull ? result.add(hoursStr) : result.add('00');
    minutesStr.isNotNull ? result.add(minutesStr) : result.add('00');
    secondsStr.isNotNull ? result.add(secondsStr) : result.add('00');
    return result.join(':');
  }
}

extension ContextServices on BuildContext {
  void popWidget<T>({T? value}) => Navigator.pop<T>(this, value);

  S get localText => S.of(this);

  ThemeData get oldTheme => Theme.of(this);

  String get deviceName => Platform.isAndroid ? 'android' : 'ios';
  // ThemeData get theme => Theme.of(this);

  // ThemeData get theme => Theme.of(this);
  FlutterView get view => View.of(this);

  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);
  Size get screenSize => MediaQuery.sizeOf(this);

  ({Orientation orientation, bool isPortrait}) get orientationInfo => (
    orientation: MediaQuery.orientationOf(this),
    isPortrait: MediaQuery.maybeOrientationOf(this) == Orientation.portrait,
  );

  double get bottomPadding =>
      kFABHeight + getBottomNavBar + (view.viewPadding.bottom / 2.5);

  double get getBottomNavBar =>
      isTablet ? kBottomNavBarHeight * 1.5 : kBottomNavBarHeight;

  ({double width, double height, double smallSide, double largeSide})
  get sizeSide => (
    width: screenSize.width,
    height: screenSize.height,
    smallSide: screenSize.shortestSide,
    largeSide: screenSize.longestSide,
  );

  double get deviceWidth => sizeSide.smallSide > 768 ? 768 : sizeSide.smallSide;

  double get statusBarHeight => switch (view.viewPadding.bottom) {
    0.0 => view.viewPadding.top * 0.285, // Android
    _ => view.viewPadding.bottom / 2, // IOS
  };

  bool get isMobile => getDeviceScreenType == DeviceScreenType.mobile;
  bool get isTablet => getDeviceScreenType == DeviceScreenType.tablet;
  // bool get isSmallMobile => getDeviceScreenType == DeviceScreenType.mobileSmall;
  // bool get isMobile => getDeviceScreenType == DeviceScreenType.mobileMedium || isSmallMobile;
  // bool get isMobileLarge => getDeviceScreenType == DeviceScreenType.mobileLarge;
  // bool get isTablet => getDeviceScreenType == DeviceScreenType.tablet;

  double notLessThan(double percent, double value) =>
      kBottomNavBarHeight * percent < value
          ? value
          : kBottomNavBarHeight * percent;

  double get pixelRatio => view.devicePixelRatio;

  //Size in physical pixels
  Size get physicalScreenSize => view.physicalSize;
  double get physicalWidth => physicalScreenSize.width;
  double get physicalHeight => physicalScreenSize.height;

  //Size in logical pixels
  Size get logicalScreenSize => physicalScreenSize / pixelRatio;
  double get logicalWidth => logicalScreenSize.width;
  double get logicalHeight => logicalScreenSize.height;

  DeviceScreenType get getDeviceScreenType {
    switch (sizeSide.smallSide) {
      case <= 480:
        return DeviceScreenType.mobile;
      default:
        return DeviceScreenType.tablet;
    }
  }

  bool showDayTitle(DateTime? beforeDate, DateTime? currentDate) {
    if (beforeDate == null) {
      return true;
    } else {
      if (currentDate != null) {
        return !isSameDate(beforeDate, currentDate);
      }
      return false;
    }
  }

  bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  /*   DeviceScreenType get getDeviceScreenType {
    final double physicalWidth = sizeSide.width / view.devicePixelRatio;
    final double physicalHeight = sizeSide.height / view.devicePixelRatio;
    final double physicalSize = sqrt(pow(physicalWidth, 2) + pow(physicalHeight, 2));

    if (physicalSize < 4.5) {
      return DeviceScreenType.mobileSmall;
    } else if (physicalSize < 6.0) {
      return DeviceScreenType.mobileMedium;
    } else if (physicalSize < 7.0) {
      return DeviceScreenType.mobileLarge;
    } else if (physicalSize < 9.0) {
      return DeviceScreenType.tablet;
    } else {
      return DeviceScreenType.desktop;
    }
  } */

  TextStyle? get headlineL => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineM => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineS => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get displayL => Theme.of(this).textTheme.displayLarge;
  TextStyle? get displayM => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displayS => Theme.of(this).textTheme.displaySmall;
  TextStyle? get bodyL => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyM => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyS => Theme.of(this).textTheme.bodySmall;
  TextStyle? get titleL => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleM => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleS => Theme.of(this).textTheme.titleSmall;
  TextStyle? get labelL => Theme.of(this).textTheme.labelLarge;
  TextStyle? get labelM => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelS => Theme.of(this).textTheme.labelSmall;
}

extension StringServices on String? {
  bool get isNotNull => this != null && this!.isNotEmpty;
  String? get isNotOnlyDash => this == "-" ? null : this;

  String get toFlag {
    if (!isNotNull) return '';

    return (this)!.toUpperCase().replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
    );
  }

  /*   String formatDate({String pattern = "dd-MMMM-yyyy"}) {
    final date = DateTime.parse(this!);
    return DateFormat(pattern).format(date);
  }
}

extension DateTimeServices on DateTime? {
  String? formatTime({String? pattern = "hh:mm:ss a"}) {
    if (this != null) {
      return DateFormat(pattern).format(this!);
    }
    return null;
  }

  String? formatDate({String pattern = "dd-MMMM-yyyy", String? locale}) {
    if (this != null) {
      return DateFormat(pattern, locale).format(this!);
    }
    return null;
  }

  String formatDateTime({String pattern = "dd MMMM - hh:mm a", String? locale}) {
    return DateFormat(pattern, locale).format(this!);
  }
}

extension NumberServices on num {
  String formatNumber({SupportLanguage? lang}) {
    String? locale = (lang?.info['langCode']) ?? LanguageManager.getLocal?.languageCode;
    if(locale == 'ar') locale = 'ar_EG';
    return NumberFormat.decimalPattern(locale).format(num.parse(toString()));
  }*/
}

// extension CloneFont on TextStyle{

//   TextStyle? clone(TextStyle style) => style.copyWith(
//     backgroundColor: style.backgroundColor ?? backgroundColor,
//     color: style.color ?? color,
//     decoration: style.decoration ?? decoration,
//     fontSize: style.fontSize ?? fontSize,
//     letterSpacing: style.letterSpacing ?? letterSpacing,
//     fontStyle: style.fontStyle ?? fontStyle,
//     height: style.height ?? height,
//     overflow: style.overflow ?? overflow,
//     wordSpacing: style.wordSpacing ?? wordSpacing,
//     decorationColor: style.decorationColor ?? decorationColor,
//     decorationStyle: style.decorationStyle ?? decorationStyle,
//     decorationThickness: style.decorationThickness ?? decorationThickness,
//     debugLabel: style.debugLabel ?? debugLabel,
//     fontWeight: style.fontWeight ?? fontWeight,
//     textBaseline: style.textBaseline ?? textBaseline,
//   );

// }

extension Emptypadding on num {
  SizedBox get ph => SizedBox(height: toDouble().h);
  SizedBox get pw => SizedBox(width: toDouble().w);
}

extension StylingShortCuts on TextStyle {
  TextStyle get black => copyWith(color: AppColors.textPrimaryColor);
  TextStyle get white => copyWith(color: AppColors.textSecondaryColor);
}

extension ThemeShortCuts on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
  ColorScheme get scheme => Theme.of(this).colorScheme;
}

extension PopsShortCut on BuildContext {
  void showBar(String content) => ScaffoldMessenger.of(
    this,
  ).showSnackBar(SnackBar(content: Text(content), showCloseIcon: true));
  void showSheet(Widget child) => showModalBottomSheet(
    showDragHandle: true,

    scrollControlDisabledMaxHeightRatio: screenSize.height * .9,
    isScrollControlled: true,
    enableDrag: true,
    // useSafeArea: true,
    constraints: BoxConstraints(maxHeight: screenSize.height * .9),
    context: this,
    builder: (context) => child,
  );
  void showAlert(Widget child) => showAdaptiveDialog(
    context: this,
    useSafeArea: true,
    barrierDismissible: true,
    builder: (context) => child,
  );

  void showDefaultAppDialog(Widget child) {
    showAlert(
      AlertDialog(
        surfaceTintColor: AppColors.baseColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusMedium),
        ),
        insetPadding: const EdgeInsets.symmetric(horizontal: 12),
        content: child,
      ),
    );
  }

  Future<bool?> showLoadingDialog({bool useRootNavigator = false}) async {
    return showDialog<bool>(
      context: this,
      barrierDismissible: false,
      useRootNavigator: useRootNavigator,
      builder: (BuildContext context) {
        return const AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: PopScope(canPop: false, child: AppIndicator()),
        );
      },
    ).then((value) => true);
  }

  void showError(String message, {bool popLoadingDialog = true}) {
    if (popLoadingDialog) {
      popWidget();
    }
    if (message.isNotEmpty) {
      OverlayAlert.notify(
        message: message,
        context: this,
        type: OverlayType.error,
      );
    }

    return;
  }

  void showSuccess(String message, {bool popLoadingDialog = true}) {
    if (popLoadingDialog) {
      popWidget();
    }

    if (message.isNotEmpty) {
      return OverlayAlert.notify(
        context: this,
        message: message,
        type: OverlayType.success,
      );
    }
    return;
  }
}

extension NavigatorShortCuts on BuildContext {
  Future<T?> nextNamed<T>(String name, {Object? argument}) async =>
      await Navigator.pushNamed(this, name, arguments: argument);
  Future<void> nextNamedAndRemoveUntil(
    String name,
    bool Function(Route<dynamic>) predicate, {
    Object? argument,
  }) => Navigator.of(
    this,
  ).pushNamedAndRemoveUntil(name, predicate, arguments: argument);

  Future<void> nextReplacementNamed(String name, {Object? argument}) =>
      Navigator.of(this).pushReplacementNamed(name, arguments: argument);

  Future<void> nextNamedAndPop(String name, {Object? argument}) =>
      Navigator.of(this).popAndPushNamed(name, arguments: argument);
  void pop<T>([T? result]) => Navigator.of(this).pop(result);
  Future<void> nextReplcement(Widget page) => Navigator.of(
    this,
  ).pushReplacement(MaterialPageRoute(builder: (context) => page));
  Future<void> next(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));
  void nextPopUntil(bool Function(Route<dynamic>) predicate) =>
      Navigator.of(this).popUntil(predicate);
  Future<void> nextRemoveUntil(
    Widget page,
    bool Function(Route<dynamic>) predicate,
  ) => Navigator.of(this).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => page),
    predicate,
  );

  /// Navigate to document viewer with appropriate handler
  ///
  /// [documentPath] - Path/URL to the document to view
  /// [documentType] - Type of document (e.g., 'Invoice', 'Receipt', 'Contract')
  /// [entityName] - Name of the entity (e.g., customer name, payment number)
  /// [title] - Optional custom title for the viewer
  void viewDocument({
    required String? documentPath,
    required String documentType,
    String? entityName,
    String? title,
  }) {
    if (documentPath == null || documentPath.isEmpty) return;

    final displayName = entityName ?? localText.documents ?? 'Documents';
    final documentTitle = title ?? '$displayName Documents';

    // Detect document type based on URL/path
    final DocumentViewType viewType = _detectDocumentType(documentPath);

    switch (viewType) {
      case DocumentViewType.webInvoice:
        _openWebInvoice(documentPath, documentTitle);
        break;
      case DocumentViewType.pdf:
        _openPdfDocument(
          documentPath,
          displayName,
          documentType,
          documentTitle,
        );
        break;
      case DocumentViewType.image:
        _openImageDocument(
          documentPath,
          displayName,
          documentType,
          documentTitle,
        );
        break;
      case DocumentViewType.webView:
        _openWebView(documentPath, documentTitle);
        break;
    }
  }

  /// Detect the type of document based on URL/path
  DocumentViewType _detectDocumentType(String documentPath) {
    final path = documentPath.toLowerCase();

    // Check for web-based invoice patterns
    if (path.contains('/invoice/') ||
        path.contains('/receipt/') ||
        path.contains('rental-contracts')) {
      return DocumentViewType.webInvoice;
    }

    // Check for PDF files
    if (path.endsWith('.pdf') || path.contains('.pdf')) {
      return DocumentViewType.pdf;
    }

    // Check for image files
    if (path.endsWith('.jpg') ||
        path.endsWith('.jpeg') ||
        path.endsWith('.png') ||
        path.endsWith('.gif') ||
        path.endsWith('.webp')) {
      return DocumentViewType.image;
    }

    // Check for web URLs
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return DocumentViewType.webView;
    }

    // Default to image for local files
    return DocumentViewType.image;
  }

  /// Open web-based invoice with enhanced options
  void _openWebInvoice(String invoiceUrl, String title) {
    showSheet(
      Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.receipt_long_rounded,
                    color: AppColors.primaryColor,
                    size: 24,
                  ),
                ),
                16.pw,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: titleM?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900,
                        ),
                      ),
                      4.ph,
                      Text(
                        localText.view_payment_details ?? 'Invoice Options',
                        style: bodyS?.copyWith(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            24.ph,

            // Options
            _buildInvoiceOption(
              icon: Icons.open_in_browser_rounded,
              title: 'Open in Browser',
              subtitle: 'View invoice in web browser',
              onTap: () {
                pop();
                _launchUrl(invoiceUrl);
              },
            ),
            12.ph,
            _buildInvoiceOption(
              icon: Icons.picture_as_pdf_rounded,
              title: 'Download PDF',
              subtitle: 'Save invoice as PDF',
              onTap: () {
                pop();
                _downloadInvoicePdf(invoiceUrl);
              },
            ),
            12.ph,
            _buildInvoiceOption(
              icon: Icons.share_rounded,
              title: localText.share ?? 'Share',
              subtitle: 'Share invoice link',
              onTap: () {
                pop();
                _shareInvoiceUrl(invoiceUrl);
              },
            ),

            // Bottom spacing
            32.ph,
          ],
        ),
      ),
    );
  }

  /// Build invoice option item
  Widget _buildInvoiceOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: AppColors.primaryColor, size: 20),
              ),
              16.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: bodyL?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade900,
                      ),
                    ),
                    4.ph,
                    Text(
                      subtitle,
                      style: bodyS?.copyWith(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey.shade400,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Open PDF document
  void _openPdfDocument(
    String pdfPath,
    String displayName,
    String documentType,
    String title,
  ) {
    showSheet(
      Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.picture_as_pdf_rounded,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
                16.pw,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: titleM?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900,
                        ),
                      ),
                      4.ph,
                      Text(
                        'PDF Document Options',
                        style: bodyS?.copyWith(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            24.ph,

            // Options
            _buildInvoiceOption(
              icon: Icons.open_in_browser_rounded,
              title: 'Open PDF',
              subtitle: 'Open PDF in external app',
              onTap: () {
                pop();
                _launchUrl(pdfPath);
              },
            ),
            12.ph,
            _buildInvoiceOption(
              icon: Icons.download_rounded,
              title: 'Download',
              subtitle: 'Download PDF to device',
              onTap: () {
                pop();
                _downloadFile(pdfPath, '$displayName-$documentType.pdf');
              },
            ),
            12.ph,
            _buildInvoiceOption(
              icon: Icons.share_rounded,
              title: localText.share ?? 'Share',
              subtitle: 'Share PDF file',
              onTap: () {
                pop();
                _shareFile(pdfPath);
              },
            ),

            // Bottom spacing
            32.ph,
          ],
        ),
      ),
    );
  }

  /// Open image document (existing functionality)
  void _openImageDocument(
    String imagePath,
    String displayName,
    String documentType,
    String title,
  ) {
    final imageData = ImageViewerData(
      imagePaths: [imagePath],
      imageNames: ['$displayName - $documentType'],
      initialIndex: 0,
      title: title,
    );

    nextNamed(AppLocalRoute.imageViewer.route, argument: imageData);
  }

  /// Open web view
  void _openWebView(String webUrl, String title) {
    showSheet(
      Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.language_rounded,
                    color: Colors.blue,
                    size: 24,
                  ),
                ),
                16.pw,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: titleM?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900,
                        ),
                      ),
                      4.ph,
                      Text(
                        'Web Document Options',
                        style: bodyS?.copyWith(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            24.ph,

            // Options
            _buildInvoiceOption(
              icon: Icons.open_in_browser_rounded,
              title: 'Open in Browser',
              subtitle: 'View in external browser',
              onTap: () {
                pop();
                _launchUrl(webUrl);
              },
            ),
            12.ph,
            _buildInvoiceOption(
              icon: Icons.share_rounded,
              title: localText.share ?? 'Share',
              subtitle: 'Share web link',
              onTap: () {
                pop();
                _shareText(webUrl, 'Document Link');
              },
            ),

            // Bottom spacing
            32.ph,
          ],
        ),
      ),
    );
  }

  /// Launch URL in external browser
  Future<void> _launchUrl(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        showError('Cannot open URL: $url');
      }
    } catch (e) {
      showError('Error opening URL: ${e.toString()}');
    }
  }

  /// Download invoice as PDF
  Future<void> _downloadInvoicePdf(String invoiceUrl) async {
    try {
      showLoadingDialog();

      // Add print parameter to get PDF version
      final pdfUrl = '$invoiceUrl?print=1';
      final response = await http.get(Uri.parse(pdfUrl));

      if (response.statusCode == 200) {
        final directory = await getApplicationDocumentsDirectory();
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final fileName = 'invoice_$timestamp.pdf';
        final filePath = '${directory.path}/$fileName';

        final file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        pop(); // Close loading dialog
        showSuccess('Invoice PDF saved successfully');

        // Option to open the downloaded PDF
        _launchUrl('file://$filePath');
      } else {
        pop();
        showError('Failed to download invoice PDF');
      }
    } catch (e) {
      pop();
      showError('Error downloading PDF: ${e.toString()}');
    }
  }

  /// Share invoice URL
  Future<void> _shareInvoiceUrl(String invoiceUrl) async {
    try {
      await Share.share(invoiceUrl, subject: 'Payment Invoice');
    } catch (e) {
      showError('Error sharing invoice: ${e.toString()}');
    }
  }

  /// Download file from URL
  Future<void> _downloadFile(String fileUrl, String fileName) async {
    try {
      showLoadingDialog();

      final response = await http.get(Uri.parse(fileUrl));

      if (response.statusCode == 200) {
        final directory = await getApplicationDocumentsDirectory();
        final filePath = '${directory.path}/$fileName';

        final file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        pop(); // Close loading dialog
        showSuccess('File downloaded successfully');

        // Option to open the downloaded file
        _launchUrl('file://$filePath');
      } else {
        pop();
        showError('Failed to download file');
      }
    } catch (e) {
      pop();
      showError('Error downloading file: ${e.toString()}');
    }
  }

  /// Share file
  Future<void> _shareFile(String filePath) async {
    try {
      if (filePath.startsWith('http')) {
        // Network file - share URL
        await Share.share(filePath);
      } else {
        // Local file - share file
        await Share.shareXFiles([XFile(filePath)]);
      }
    } catch (e) {
      showError('Error sharing file: ${e.toString()}');
    }
  }

  /// Share text content
  Future<void> _shareText(String text, String subject) async {
    try {
      await Share.share(text, subject: subject);
    } catch (e) {
      showError('Error sharing: ${e.toString()}');
    }
  }
}

/// Document view types
enum DocumentViewType {
  webInvoice, // Web-based invoice/receipt
  pdf, // PDF document
  image, // Image file
  webView, // General web page
}

// extension LocalizationShortCut on BuildContext {
//   AppLocalizations get locals => AppLocalizations.of(this)!;
// }

extension MediaQueryValues on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get topPading => MediaQuery.of(this).padding.top;
}

extension Tr on String {
  Map<String, dynamic> get ar => messages_ar.messages.messages;

  Map<String, dynamic> get en => messages_en.messages.messages;

  String tr() {
    if (SettingService.isRTL) {
      return ar[this]() ?? this;
    } else {
      return en[this]() ?? this;
    }
  }
}
