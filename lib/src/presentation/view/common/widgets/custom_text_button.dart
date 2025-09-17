// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/utils/extension.dart';

class CustomTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String lable;
  final bool enabled;
  const CustomTextButton(
      {super.key,
      required this.onPressed,
      required this.lable,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        lable,
        style: context.textTheme.titleMedium!
            .copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
