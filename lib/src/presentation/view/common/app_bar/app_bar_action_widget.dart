// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/utils/extension.dart';
import '../custom_padding.dart';
import 'app_bar_option.dart';
import 'upload_data/upload_icon_widget.dart';

class AppBarActionWidget extends StatefulWidget {
  final AppBarOption option;
  const AppBarActionWidget({super.key, required this.option});

  @override
  State<AppBarActionWidget> createState() => _AppBarActionWidgetState();
}

class _AppBarActionWidgetState extends State<AppBarActionWidget> {

  @override
  Widget build(BuildContext context) {
    return CustomPadding(
      start: context.sizeSide.width * 0.02,
      end: context.sizeSide.width * 0.02,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // if (widget.option.notificationIcon)
            
          const UploadIconWidget(),
        ],
      ),
    );
  }
}
