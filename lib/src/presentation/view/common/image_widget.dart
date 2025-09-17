// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

// Project imports:
import '../../../core/config/assets/assets.gen.dart';
import '../../../core/utils/file_model.dart';
import '../../../core/utils/enums.dart';
import '../../../core/utils/extension.dart';
import 'image_slider.dart';
import 'app_bar/image-viewer/controller/image_viewer_controller.dart';

enum ImageNetworkType {
  original,
  thumbnail,
}

///`Local Img =>> Assets NotPath `
class ImageWidget extends StatelessWidget {
  final Decoration? decoration;
  final BoxFit fit;
  final double? height;
  final double? sliderHeight;
  final dynamic image;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? svgColor;
  final double? width;
  final double? ratio;
  final VoidCallback? onTap;
  final Widget Function(BuildContext context, Widget image)? imageBuilder;
  final Widget Function(BuildContext context, String url)? placeHolder;
  final Widget Function(BuildContext context, String image, Object error)?
      errorHolder;
  final bool enableImageViewer;
  final String? imageTitle;

  const ImageWidget({
    super.key,
    required this.image,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.decoration,
    this.svgColor,
    this.onTap,
    this.imageBuilder,
    this.ratio,
    this.placeHolder,
    this.errorHolder,
    this.sliderHeight,
    this.enableImageViewer = false,
    this.imageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: enableImageViewer ? () => _openImageViewer(context) : null,
      child: Container(
        padding: padding,
        margin: margin,
        width: width,
        height: height,
        decoration: decoration,
        child: imageBuilder != null
            ? imageBuilder!.call(
                context,
                _PreviewImage(
                  image: image,
                  fit: fit,
                  height: height,
                  sliderHeight: sliderHeight,
                  width: width,
                  svgColor: svgColor,
                  ratio: ratio,
                  errorHolder: errorHolder,
                  placeHolder: placeHolder,
                  enableImageViewer: enableImageViewer,
                  imageTitle: imageTitle,
                ),
              )
            : _PreviewImage(
                image: image,
                fit: fit,
                height: height,
                sliderHeight: sliderHeight,
                width: width,
                svgColor: svgColor,
                ratio: ratio,
                errorHolder: errorHolder,
                placeHolder: placeHolder,
                enableImageViewer: enableImageViewer,
                imageTitle: imageTitle,
              ),
      ),
    );
  }

  void _openImageViewer(BuildContext context) {
    // Don't open viewer for SVG files, icons, or non-image types
    if (image is SvgGenImage || image is IconData) return;

    List<String> imagePaths = [];
    List<String> imageNames = [];

    if (image is List) {
      // Handle image carousel/slider
      for (var img in image) {
        String? path = _getImagePath(img);
        if (path != null && !_isSvgImage(path)) {
          imagePaths.add(path);
          imageNames.add(_getImageName(img) ?? 'Image ${imagePaths.length}');
        }
      }
    } else {
      // Handle single image
      String? path = _getImagePath(image);
      if (path != null && !_isSvgImage(path)) {
        imagePaths.add(path);
        imageNames.add(imageTitle ?? _getImageName(image) ?? 'Image');
      }
    }

    if (imagePaths.isNotEmpty) {
      final imageData = ImageViewerData(
        imagePaths: imagePaths,
        imageNames: imageNames,
        initialIndex: 0,
        title: imageTitle,
      );

      context.nextNamed(AppLocalRoute.imageViewer.route, argument: imageData);
    }
  }

  String? _getImagePath(dynamic img) {
    if (img is String) {
      return img;
    } else if (img is AssetGenImage) {
      return img.path;
    } else if (img is FileModel) {
      return img.file.path;
    }
    return null;
  }

  String? _getImageName(dynamic img) {
    if (img is FileModel) {
      return img.name;
    } else if (img is String) {
      return img.split('/').last;
    } else if (img is AssetGenImage) {
      return img.path.split('/').last;
    }
    return null;
  }

  bool _isSvgImage(String path) {
    return path.toLowerCase().endsWith('.svg');
  }
}

// ignore: must_be_immutable
class _PreviewImage extends StatelessWidget {
  final dynamic image;
  final BoxFit? fit;
  final double? height;
  final double? sliderHeight;
  final double? width;
  final Color? svgColor;
  final double? ratio;
  final Widget Function(BuildContext context, String url)? placeHolder;
  final Widget Function(BuildContext context, String image, Object error)?
      errorHolder;
  final bool enableImageViewer;
  final String? imageTitle;
  const _PreviewImage({
    this.image,
    this.fit,
    this.height,
    this.sliderHeight,
    this.width,
    this.svgColor,
    this.ratio,
    this.placeHolder,
    this.errorHolder,
    this.enableImageViewer = false,
    this.imageTitle,
  });

  @override
  Widget build(BuildContext context) {
    if (image is List) {
      return _PreviewImageCarousel(
        images: image,
        fit: fit,
        height: height,
        sliderHeight: sliderHeight,
        enableImageViewer: enableImageViewer,
      );
    } else if (image is SvgGenImage) {
      return _SVGPreviewImage(
        asset: image,
        fit: fit,
        height: height,
        width: width,
        svgColor: svgColor,
      );
    } else if (image is AssetGenImage) {
      return _ImagePreviewAssets(
        asset: image,
        fit: fit,
        height: height,
        width: width,
        enableImageViewer: enableImageViewer,
        imageTitle: imageTitle,
      );
    } else if (image is String) {
      final bool isJsonFile = (image as String).endsWith('.json');
      if (isJsonFile) {
        return Lottie.asset(image, width: width, height: height, fit: fit);
      }
      return _ImagePreviewNetwork(
        image: image,
        fit: fit,
        height: height,
        width: width,
        svgColor: svgColor,
        errorHolder: errorHolder ??
            (context, url, error) => const Icon(Icons.error_outline_sharp),
        placeHolder: placeHolder ??
            (context, url) => ImageWidget(
                  image: Assets.icons.image,
                  fit: BoxFit.contain,
                ),
        enableImageViewer: enableImageViewer,
        imageTitle: imageTitle,
      );
    } else if (image is FileModel) {
      return _ImagePreviewFile(
        asset: image,
        fit: fit,
        width: width,
        height: height,
        enableImageViewer: enableImageViewer,
        imageTitle: imageTitle,
      );
    } else if (image is IconData) {
      return Icon(
        image,
        size: width,
        color: svgColor,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

class _SVGPreviewImage extends StatelessWidget {
  const _SVGPreviewImage({
    required this.asset,
    this.fit,
    this.width,
    this.height,
    this.svgColor,
  });

  final SvgGenImage asset;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final Color? svgColor;

  @override
  Widget build(BuildContext context) {
    return asset.svg(
      fit: fit!,
      width: width,
      height: height,
      colorFilter: svgColor != null
          ? ColorFilter.mode(svgColor!, BlendMode.srcIn)
          : null,
    );
  }
}

class _ImagePreviewAssets extends StatelessWidget {
  const _ImagePreviewAssets({
    required this.asset,
    this.fit,
    this.width,
    this.height,
    this.enableImageViewer = false,
    this.imageTitle,
  });

  final AssetGenImage asset;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final bool enableImageViewer;
  final String? imageTitle;

  @override
  Widget build(BuildContext context) {
    if (enableImageViewer) {
      return GestureDetector(
        onDoubleTap: () => _openImageViewer(context),
        child: asset.image(
          fit: fit,
          width: width,
          height: height,
        ),
      );
    }
    return asset.image(
      fit: fit,
      width: width,
      height: height,
    );
  }

  void _openImageViewer(BuildContext context) {
    final imageData = ImageViewerData(
      imagePaths: [asset.path],
      imageNames: [imageTitle ?? asset.path.split('/').last],
      initialIndex: 0,
      title: imageTitle,
    );

    context.nextNamed(AppLocalRoute.imageViewer.route, argument: imageData);
  }
}

class _ImagePreviewFile extends StatelessWidget {
  final FileModel asset;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final bool enableImageViewer;
  final String? imageTitle;

  const _ImagePreviewFile({
    required this.asset,
    this.fit,
    this.width,
    this.height,
    this.enableImageViewer = false,
    this.imageTitle,
  });

  @override
  Widget build(BuildContext context) {
    String path = asset.file.path;
    if (path.startsWith('http')) {
      return _PreviewImage(
        image: path,
        fit: fit,
        width: width,
        height: height,
        enableImageViewer: enableImageViewer,
        imageTitle: imageTitle,
      );
    } else {
      Widget imageWidget = Image.file(
        asset.file,
        fit: fit,
        width: width,
        height: height,
      );

      if (enableImageViewer) {
        return GestureDetector(
          onDoubleTap: () => _openImageViewer(context),
          child: imageWidget,
        );
      }

      return imageWidget;
    }
  }

  void _openImageViewer(BuildContext context) {
    final imageData = ImageViewerData(
      imagePaths: [asset.file.path],
      imageNames: [imageTitle ?? asset.name],
      initialIndex: 0,
      title: imageTitle,
    );

    context.nextNamed(AppLocalRoute.imageViewer.route, argument: imageData);
  }
}

class _ImagePreviewNetwork extends StatelessWidget {
  const _ImagePreviewNetwork({
    required this.image,
    this.fit,
    this.width,
    this.height,
    this.svgColor,
    this.placeHolder,
    this.errorHolder,
    this.enableImageViewer = false,
    this.imageTitle,
  });

  final String image;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final Color? svgColor;
  final Widget Function(BuildContext context, String url)? placeHolder;
  final Widget Function(BuildContext context, String image, Object error)?
      errorHolder;
  final bool enableImageViewer;
  final String? imageTitle;

  @override
  Widget build(BuildContext context) {
    bool isSVG = image.split('/').last.contains('.svg');
    if (isSVG) {
      return SvgPicture.network(
        image,
        fit: fit!,
        width: width,
        height: height,
        colorFilter: svgColor != null
            ? ColorFilter.mode(svgColor!, BlendMode.srcIn)
            : null,
        placeholderBuilder: (context) {
          return placeHolder != null
              ? placeHolder!(context, image)
              : const SizedBox.shrink();
        },
      );
    }

    Widget networkImage = CachedNetworkImage(
        fit: fit,
        imageUrl: image,
        width: width,
        height: height,
        //TODO: put placeholder here
        placeholder: placeHolder,
        /* ??
          (context, url) => Assets.images.fullLogoLite.svg(
                width: width,
                height: height,
                fit: fit ?? BoxFit.contain,
              ), */
        //TODO: put error placeholder here
        errorWidget:
            errorHolder /* ??
          (context, url, error) => Assets.images.logoLite.svg(
                width: width,
                height: height,
                fit: fit ?? BoxFit.contain,
              ), */
        );

    if (enableImageViewer && !isSVG) {
      return GestureDetector(
        onDoubleTap: () => _openImageViewer(context),
        child: networkImage,
      );
    }

    return networkImage;
  }

  void _openImageViewer(BuildContext context) {
    final imageData = ImageViewerData(
      imagePaths: [image],
      imageNames: [imageTitle ?? image.split('/').last],
      initialIndex: 0,
      title: imageTitle,
    );

    context.nextNamed(AppLocalRoute.imageViewer.route, argument: imageData);
  }
}

class _PreviewImageCarousel extends StatelessWidget {
  const _PreviewImageCarousel({
    required this.images,
    this.fit = BoxFit.cover,
    this.height,
    this.sliderHeight,
    this.enableImageViewer = false,
  });

  final List<dynamic> images;
  final BoxFit? fit;
  final double? height;
  final double? sliderHeight;
  final bool enableImageViewer;

  @override
  Widget build(BuildContext context) {
    return ImageSlider(
      images: images,
      fit: fit,
      height: height,
      sliderHeight: sliderHeight,
      enableImageViewer: enableImageViewer,
    );
  }
}
