// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

// Project imports:
import '../../../../core/utils/extension.dart';

class ImgPicker extends StatelessWidget {
  final Function(File) onPick;
  final Widget child;
  const ImgPicker({super.key, required this.onPick, required this.child});
  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();
    return InkWell(
      onTap: () => showDialog(
        context: context,
        builder: (context) => AlertDialog.adaptive(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Material(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    await picker
                        .pickImage(source: ImageSource.gallery)
                        .then((value) {
                      final file = File(value!.path);
                      context.pop();
                      onPick(file);
                    });
                  },
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(12.r),
                      child: Icon(
                        Icons.photo,
                        size: 35.r,
                      ),
                    ),
                  ),
                ),
                20.w.pw,
                InkWell(
                  onTap: () async {
                    await picker
                        .pickImage(source: ImageSource.camera)
                        .then((value) {
                      final file = File(value!.path);
                      context.pop();

                      onPick(file);
                    });
                  },
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(12.r),
                      child: Icon(
                        Icons.camera,
                        size: 35.r,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: context.scheme.secondary),
            borderRadius: BorderRadius.circular(10.r)),
        width: 98.w,
        height: 94.h,
        child: Center(child: child),
      ),
    );
  }
}
