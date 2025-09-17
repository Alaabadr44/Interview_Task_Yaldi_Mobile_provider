import 'dart:io';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/extension.dart';
import '../../../../../../core/config/app_colors.dart';
import '../../../../../../core/utils/constant.dart';
import '../../../../../../core/utils/layout/responsive_layout.dart';
import '../../../text_widget.dart';
import '../controller/image_viewer_controller.dart';

class ImageViewerPageSfl extends StatefulWidget {
  const ImageViewerPageSfl({super.key});

  @override
  State<ImageViewerPageSfl> createState() => _ImageViewerPageSflState();
}

class _ImageViewerPageSflState extends State<ImageViewerPageSfl> {
  late ImageViewerController _pageController;
  late PageController _galleryPageController;
  late ValueNotifier<int> _currentIndexNotifier;
  late TransformationController _transformationController;

  @override
  void initState() {
    super.initState();
    _pageController = ImageViewerController();
    _pageController.initDependencies(context: context);
    _currentIndexNotifier = ValueNotifier<int>(0);
    _transformationController = TransformationController();
  }

  @override
  void dispose() {
    _pageController.disposeDependencies();
    _galleryPageController.dispose();
    _currentIndexNotifier.dispose();
    _transformationController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _pageController.extractImageData(context);

    // Initialize page controller with initial index
    _galleryPageController = PageController(
      initialPage: _pageController.initialIndex,
    );
    _currentIndexNotifier.value = _pageController.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      onBackPage: (context) => context.pop(),
      titleAppBar: _pageController.isGallery ? "Image Gallery" : "Image Viewer",
      showAppBar: true,
      isPadding: false,
      backgroundColor: Colors.black,
      appBarActions: [
        // Share button
        IconButton(
          onPressed: () {
            _pageController.shareCurrentImage(_currentIndexNotifier.value);
          },
          icon: const Icon(Icons.share),
        ),
        // Download button
        IconButton(
          onPressed: () {
            _pageController.downloadCurrentImage(_currentIndexNotifier.value);
          },
          icon: const Icon(Icons.download),
        ),
        // More options
        PopupMenuButton<String>(
          onSelected: (value) => _handleMenuAction(value),
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 'fullscreen',
              child: ListTile(
                leading: Icon(Icons.fullscreen),
                title: Text('Full Screen'),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            const PopupMenuItem(
              value: 'info',
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('Image Info'),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            if (_pageController.isGallery)
              const PopupMenuItem(
                value: 'slideshow',
                child: ListTile(
                  leading: Icon(Icons.play_arrow),
                  title: Text('Slideshow'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
          ],
        ),
      ],
      builder: (context, info) {
        if (_pageController.imagePaths.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.image_not_supported,
                  size: 64,
                  color: AppColors.grey500,
                ),
                SizedBox(height: 16),
                TextWidget(
                  text: "No images to display",
                  style: TextStyle(color: AppColors.grey500),
                ),
              ],
            ),
          );
        }

        return Stack(
          children: [
            // Main image viewer
            _buildImageViewer(),

            // Gallery controls overlay
            if (_pageController.isGallery) _buildGalleryControls(),

            // Image counter and info
            _buildImageInfo(),
          ],
        );
      },
    );
  }

  Widget _buildImageViewer() {
    if (_pageController.isGallery) {
      return PageView.builder(
        controller: _galleryPageController,
        itemCount: _pageController.imagePaths.length,
        onPageChanged: (index) {
          _currentIndexNotifier.value = index;
          _transformationController.value = Matrix4.identity();
        },
        itemBuilder: (context, index) {
          return _buildZoomableImage(_pageController.imagePaths[index]);
        },
      );
    } else {
      // Single image viewer
      return _buildZoomableImage(_pageController.imagePaths.first);
    }
  }

  Widget _buildZoomableImage(String imagePath) {
    return InteractiveViewer(
      transformationController: _transformationController,
      minScale: 0.5,
      maxScale: 4.0,
      child: Center(
        child: _buildImageWidget(imagePath),
      ),
    );
  }

  Widget _buildImageWidget(String imagePath) {
    ImageProvider imageProvider = _getImageProvider(imagePath);

    return Image(
      image: imageProvider,
      fit: BoxFit.contain,
      width: double.infinity,
      height: double.infinity,
      errorBuilder: (context, error, stackTrace) {
        return _buildErrorWidget();
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return Center(
          child: CircularProgressIndicator(
            backgroundColor: AppColors.grey500,
            valueColor:
                const AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
    );
  }

  Widget _buildGalleryControls() {
    return Positioned(
      bottom: 100,
      left: 0,
      right: 0,
      child: ValueListenableBuilder<int>(
        valueListenable: _currentIndexNotifier,
        builder: (context, currentIndex, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Previous button
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(kRadiusSmall),
                ),
                child: IconButton(
                  onPressed: currentIndex > 0 ? _previousImage : null,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: currentIndex > 0 ? Colors.white : AppColors.grey500,
                  ),
                ),
              ),

              // Thumbnail strip
              Expanded(
                child: Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _pageController.imagePaths.length,
                    itemBuilder: (context, index) {
                      final isSelected = index == currentIndex;
                      return GestureDetector(
                        onTap: () => _goToImage(index),
                        child: Container(
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(kRadiusSmall),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(kRadiusSmall),
                            child: Image(
                              image: _getImageProvider(
                                  _pageController.imagePaths[index]),
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: AppColors.grey500,
                                  child: const Icon(
                                    Icons.broken_image,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // Next button
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(kRadiusSmall),
                ),
                child: IconButton(
                  onPressed:
                      currentIndex < _pageController.imagePaths.length - 1
                          ? _nextImage
                          : null,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: currentIndex < _pageController.imagePaths.length - 1
                        ? Colors.white
                        : AppColors.grey500,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildImageInfo() {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: ValueListenableBuilder<int>(
        valueListenable: _currentIndexNotifier,
        builder: (context, currentIndex, child) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(kRadiusSmall),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (_pageController.isGallery)
                  TextWidget(
                    text:
                        "${currentIndex + 1} of ${_pageController.imagePaths.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (_pageController.imageNames.isNotEmpty)
                  Text(
                    _pageController.imageNames.length > currentIndex
                        ? _pageController.imageNames[currentIndex]
                        : "Image ${currentIndex + 1}",
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildErrorWidget() {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.broken_image,
              size: 64,
              color: AppColors.grey500,
            ),
            SizedBox(height: 16),
            TextWidget(
              text: "Failed to load image",
              style: TextStyle(color: AppColors.grey500),
            ),
          ],
        ),
      ),
    );
  }

  ImageProvider _getImageProvider(String imagePath) {
    // Check if it's a local file path
    if (imagePath.startsWith('/') || imagePath.startsWith('file://')) {
      // Local file
      String cleanPath =
          imagePath.startsWith('file://') ? imagePath.substring(7) : imagePath;
      return FileImage(File(cleanPath));
    } else if (imagePath.startsWith('http://') ||
        imagePath.startsWith('https://')) {
      // Network image
      return NetworkImage(imagePath);
    } else {
      // Asset image
      return AssetImage(imagePath);
    }
  }

  void _previousImage() {
    if (_currentIndexNotifier.value > 0) {
      _galleryPageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _nextImage() {
    if (_currentIndexNotifier.value < _pageController.imagePaths.length - 1) {
      _galleryPageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToImage(int index) {
    _galleryPageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _handleMenuAction(String action) {
    switch (action) {
      case 'fullscreen':
        _pageController.toggleFullscreen();
        break;
      case 'info':
        _showImageInfo();
        break;
      case 'slideshow':
        _pageController.startSlideshow(
            _galleryPageController, _currentIndexNotifier);
        break;
    }
  }

  void _showImageInfo() {
    final currentIndex = _currentIndexNotifier.value;
    final imagePath = _pageController.imagePaths[currentIndex];

    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.baseColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(kRadiusSmall)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(
                text: "Image Information",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              16.ph,
              _buildInfoRow(
                  "File",
                  _pageController.imageNames.length > currentIndex
                      ? _pageController.imageNames[currentIndex]
                      : "Image ${currentIndex + 1}"),
              _buildInfoRow("Path", imagePath),
              _buildInfoRow("Position",
                  "${currentIndex + 1} of ${_pageController.imagePaths.length}"),
              if (_pageController.isGallery)
                _buildInfoRow("Gallery Size",
                    "${_pageController.imagePaths.length} images"),
              32.ph,
            ],
          ),
        );
      },
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: TextWidget(
              text: "$label:",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.grey600,
              ),
            ),
          ),
          Expanded(
            child: TextWidget(
              text: value,
              style: const TextStyle(color: AppColors.textPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
