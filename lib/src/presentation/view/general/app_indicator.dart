// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../../core/config/assets/assets.gen.dart';

import '../common/image_widget.dart';

class AppIndicator extends StatelessWidget {
  final double? scale;
  final BoxFit? fit;
  const AppIndicator({super.key, this.scale, this.fit = BoxFit.contain});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ImageWidget(
        fit: fit!,
        image: Assets.icons.loader,
        height: 50.r * (scale ?? 1),
        width: 50.r * (scale ?? 1),
      ),
    );
  }
}

