import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../../core/utils/page_controller.dart';

/// Model for passing image data to the viewer
class ImageViewerData {
  final List<String> imagePaths;
  final List<String>? imageNames;
  final int initialIndex;
  final String? title;

  const ImageViewerData({
    required this.imagePaths,
    this.imageNames,
    this.initialIndex = 0,
    this.title,
  });

  bool get isGallery => imagePaths.length > 1;
}

class ImageViewerController implements AppPageController {
  List<String> imagePaths = [];
  List<String> imageNames = [];
  int initialIndex = 0;
  String? title;

  bool get isGallery => imagePaths.length > 1;

  Timer? _slideshowTimer;
  bool _isSlideshow = false;

  @override
  void disposeDependencies({BuildContext? context}) {
    _slideshowTimer?.cancel();
  }

  @override
  void initDependencies({BuildContext? context}) {
    // Initialize any dependencies if needed
  }

  void extractImageData(BuildContext context) {
    final data = extractArgs(context) as ImageViewerData?;
    if (data != null) {
      imagePaths = data.imagePaths;
      imageNames = data.imageNames ?? [];
      initialIndex = data.initialIndex.clamp(0, data.imagePaths.length - 1);
      title = data.title;
    }
  }

  Future<void> shareCurrentImage(int currentIndex) async {
    if (currentIndex < 0 || currentIndex >= imagePaths.length) return;

    try {
      final imagePath = imagePaths[currentIndex];

      if (_isLocalFile(imagePath)) {
        // Share local file
        await Share.shareXFiles([XFile(imagePath)]);
      } else if (_isNetworkImage(imagePath)) {
        // Share network image URL
        await Share.share(imagePath);
      }
    } catch (e) {
      // Handle error - could show a snackbar or dialog
      debugPrint('Error sharing image: $e');
    }
  }

  Future<void> downloadCurrentImage(int currentIndex) async {
    if (currentIndex < 0 || currentIndex >= imagePaths.length) return;

    try {
      final imagePath = imagePaths[currentIndex];

      if (_isLocalFile(imagePath)) {
        // Already local, maybe copy to downloads folder
        await _copyToDownloads(imagePath, currentIndex);
      } else if (_isNetworkImage(imagePath)) {
        // Download network image
        await _downloadNetworkImage(imagePath, currentIndex);
      }
    } catch (e) {
      debugPrint('Error downloading image: $e');
    }
  }

  void toggleFullscreen() {
    // Toggle system UI overlay
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  void startSlideshow(
      PageController pageController, ValueNotifier<int> currentIndexNotifier) {
    if (_isSlideshow) {
      stopSlideshow();
      return;
    }

    _isSlideshow = true;
    _slideshowTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentIndexNotifier.value < imagePaths.length - 1) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        // Loop back to first image
        pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void stopSlideshow() {
    _isSlideshow = false;
    _slideshowTimer?.cancel();
    _slideshowTimer = null;
  }

  bool _isLocalFile(String path) {
    return path.startsWith('/') || path.startsWith('file://');
  }

  bool _isNetworkImage(String path) {
    return path.startsWith('http://') || path.startsWith('https://');
  }

  Future<void> _copyToDownloads(String sourcePath, int index) async {
    try {
      final directory = await getDownloadsDirectory();
      if (directory != null) {
        final fileName = imageNames.length > index
            ? imageNames[index]
            : 'image_${DateTime.now().millisecondsSinceEpoch}.jpg';

        final destPath = '${directory.path}/$fileName';
        final sourceFile = File(sourcePath);
        await sourceFile.copy(destPath);
      }
    } catch (e) {
      debugPrint('Error copying to downloads: $e');
    }
  }

  Future<void> _downloadNetworkImage(String url, int index) async {
    // This would require http package to download network images
    // For now, just a placeholder
    debugPrint('Download network image: $url');
  }

  @override
  String? get route => null; // Not needed for this controller
}
