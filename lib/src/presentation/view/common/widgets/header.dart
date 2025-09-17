// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/utils/extension.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.titleMedium!.white
          .copyWith(fontWeight: FontWeight.w700),
    );
  }
}
