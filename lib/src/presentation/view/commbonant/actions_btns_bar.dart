import '../../../core/config/app_colors.dart';
import '../../../core/config/assets/assets.gen.dart';
import '../../../core/utils/extension.dart';
import 'app_icon_btn.dart';
import '../common/image_widget.dart';
import 'package:flutter/material.dart';

class ActionsBtnsBar extends StatelessWidget {
  final Function(BuildContext context)? onSearch;
  final Function(BuildContext context)? onReload;
  final Function(BuildContext context)? onDownload;
  final Function(BuildContext context)? onFilter;
  final Function(BuildContext context)? onDelete;
  final Function(BuildContext context)? onAdd;
  final Widget? viewTypeWidget;
  final Color? addIconColor;

  const ActionsBtnsBar({
    super.key,
    this.addIconColor,
    this.onSearch,
    this.viewTypeWidget,
    this.onReload,
    this.onDownload,
    this.onFilter,
    this.onDelete,
    this.onAdd,
  });

  dynamic getIcon(int index) {
    switch (index) {
      case 0:
        return Assets.icons.search;
      case 1:
        return Assets.icons.realod;
      case 2:
        return Assets.icons.icoDownload;
      case 3:
        return Assets.icons.icoFilter;
      case 4:
        return Assets.icons.trash;
      case 5:
        return Icons.add;
    }
  }

  void onTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        // Handle search action
        onSearch?.call(context);
        break;
      case 1:
        // Handle reload action
        onReload?.call(context);
        break;
      case 2:
        // Handle download action
        onDownload?.call(context);
        break;
      case 3:
        // Handle filter action
        onFilter?.call(context);
        break;
      case 4:
        // Handle delete action
        onDelete?.call(context);
        break;
      case 5:
        // Handle add action
        onAdd?.call(context);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final totalItems = viewTypeWidget == null ? 6 : 7;

    return Container(
      height: 50,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: List.generate(totalItems, (index) {
          if (viewTypeWidget != null && index == 6) {
            return Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 2),
                child: viewTypeWidget!,
              ),
            );
          }

          bool isLast = index == 5;
          return Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              child: InkWell(
                onTap: () {
                  onTap(index, context);
                },
                child: AppIconBtn(
                  backGroundColor:
                      isLast ? addIconColor ?? AppColors.secondaryColor : null,
                  margin: EdgeInsets.zero,
                  padding: const EdgeInsets.all(15),
                  child: ImageWidget(
                    image: getIcon(index),
                    svgColor: isLast ? AppColors.baseColor : null,
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
