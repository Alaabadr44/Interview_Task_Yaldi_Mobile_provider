// lang_bottom_sheet
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/utils/extension.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/config/injector.dart';
import '../../../core/config/l10n/generated/l10n.dart';
import '../../../core/services/setting_service.dart';
import '../common/buttons/button_widget.dart';
import '../common/text_widget.dart';

class LangBottomWidget extends StatefulWidget {
  final Function() onTab;
  final bool isLable;
  final String? title;
  const LangBottomWidget({
    super.key,
    required this.onTab,
    this.isLable = false,
    this.title,
  });

  @override
  State<LangBottomWidget> createState() => _LangBottomWidgetState();
}

class _LangBottomWidgetState extends State<LangBottomWidget> {
  Locale initialLocale = SettingService.getLocale!;

  Locale? tempLocale;

  @override
  void initState() {
    super.initState();
    tempLocale = initialLocale;
  }

  updateLocale(Locale? value) {
    if (value == null) {
      return;
    } else if (value != tempLocale) {
      tempLocale = value;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 30.ph,
        if (widget.isLable) ...[
          12.ph,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: S.of(context).select_language,
                  // text: "choose_language",
                  style: context.headlineL?.copyWith(color: AppColors.grey950),
                ),
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: const Card(
                    child: CircleAvatar(
                      backgroundColor: AppColors.baseColor,
                      radius: 13,
                      child: Icon(Icons.close, color: Color(0xff212121)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        20.ph,

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  // color: AppColors.baseColor,
                  border: Border.all(
                    color:
                        tempLocale == const Locale("en")
                            ? AppColors.primaryColor
                            : Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  onTap: () {
                    updateLocale(const Locale("en"));
                  },
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextWidget(text: "US".toFlag),
                  ),
                  title: TextWidget(text: S.current.en),
                  trailing: Radio<Locale>(
                    value: const Locale('en'),
                    groupValue: tempLocale,
                    activeColor: AppColors.secondaryColor,
                    onChanged: (value) {
                      updateLocale(value);
                    },
                  ),
                ),
              ),
            ),
            5.ph,
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        const Locale("ar") == tempLocale
                            ? AppColors.primaryColor
                            : Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  onTap: () {
                    updateLocale(const Locale("ar"));
                  },
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextWidget(text: "AE".toFlag),
                  ),
                  title: TextWidget(text: S.current.ar),
                  trailing: Radio<Locale>(
                    value: const Locale('ar'),
                    groupValue: tempLocale,
                    activeColor: AppColors.secondaryColor,
                    onChanged: (value) {
                      updateLocale(value);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        // 20.ph,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ButtonWidget(
            onTab: () {
              context.pop();
              injector<SettingService>().setLocale(tempLocale!);
              widget.onTab();
            },
            title: S.of(context).save,
            // title: widget.title ?? "change",
          ),
        ),
        25.ph,
      ],
    );
  }
}
