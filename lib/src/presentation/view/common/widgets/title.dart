// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../../../core/utils/extension.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final bool isPadding;
  const TitleWidget(this.title, {super.key, this.isPadding = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isPadding
          ? EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h)
          : EdgeInsets.zero,
      child: Text(
        title,
        style:
            context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
