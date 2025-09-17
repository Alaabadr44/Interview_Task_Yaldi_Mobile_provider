// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_animator/widgets/fading_entrances/fade_in.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// Project imports:
import '../../../core/config/app_colors.dart';
import '../../../core/utils/constant.dart';
import '../../../core/utils/extension.dart';
import 'image_widget.dart';

class ImageSlider extends StatefulWidget {
  final List<dynamic> images;
  final BoxFit? fit;
  final double? height;
  final double? sliderHeight;
  final bool enableImageViewer;

  const ImageSlider({
    super.key,
    required this.images,
    this.fit,
    this.height,
    this.sliderHeight,
    this.enableImageViewer = false,
  });

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late final ValueNotifier<int> sliderNotifier;
  @override
  void initState() {
    super.initState();
    sliderNotifier = ValueNotifier(0);
  }

  @override
  void dispose() {
    sliderNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: widget.sliderHeight ?? 220.h,
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: widget.images.length,
              slideBuilder: (index) => ImageWidget(
                image: widget.images[index],
                fit: widget.fit ?? BoxFit.cover,
                height: widget.height,
                enableImageViewer: widget.enableImageViewer,
                imageTitle: 'Image ${index + 1}',
                imageBuilder: (context, image) => ClipRRect(
                  borderRadius: BorderRadius.circular(kRadiusLarge),
                  child: image,
                ),
              ),
              onSlideChanged: (value) => sliderNotifier.value = value,
              slideTransform: const TabletTransform(),
            ),
          ),
          (context.sizeSide.smallSide * .03).ph,
          ValueListenableBuilder(
              valueListenable: sliderNotifier,
              builder: (context, index, _) {
                return FadeIn(
                  child: AnimatedSmoothIndicator(
                    count: widget.images.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 6,
                      dotWidth: 6,
                      spacing: 6,
                      // expansionFactor: 2,
                      activeDotColor: AppColors.baseColor,
                      dotColor: AppColors.baseColor.withOpacity(.7),
                    ),
                    activeIndex: index,
                  ),
                );
              })
        ],
      ),
    );
  }
}
