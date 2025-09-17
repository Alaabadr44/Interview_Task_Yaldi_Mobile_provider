// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../core/utils/constant.dart';
import '../../general/app_indicator.dart';
import 'dialog_builder.dart';

void showAlertDialog({
  required BuildContext context,
  var image,
  Widget? header,
  bool? withAnimate = false,
  bool? canClose = true,
  bool useRootNavigator = false,
  bool multiActions = false,
  Color? backgroundColor,
  String? titleAcceptBtn,
  String? titleCancelBtn,
  required String title,
  required String content,
  required VoidCallback onDone,
  VoidCallback? onCancel,
  double radius = kRadiusMedium,
}) {
  showDialog(
    context: context,
    barrierDismissible: canClose ?? true,
    useRootNavigator: useRootNavigator,
    builder: (context) => DialogBuilder(
      content: content,
      title: title,
      image: image,
      onDone: onDone,
      withAnimate: withAnimate,
      backgroundColor: backgroundColor,
      header: header,
      titleAcceptBtn: titleAcceptBtn,
      titleCancelBtn: titleCancelBtn,
      onCancel: onCancel,
      multiActions: multiActions,
      radius: radius,
    ),
  );
}

Future<bool?> showLoadingDialog(BuildContext context, {bool useRootNavigator = false}) async{
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    useRootNavigator: useRootNavigator,
    builder: (BuildContext context) {
      return const PopScope(
        canPop: false,
        child: AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: AppIndicator(),
        ),
      );
    },
  ).then((value) => true);
}
