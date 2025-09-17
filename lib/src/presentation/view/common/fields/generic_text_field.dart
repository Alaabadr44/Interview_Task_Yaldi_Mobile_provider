// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Project imports:
import '../../../../core/config/app_colors.dart';
import '../../../../core/utils/extension.dart';
import '_field_helper/decoration_field.dart';

class GenericTextField extends StatelessWidget {
  final GlobalKey<FormBuilderFieldState<FormBuilderField, dynamic>>? fieldKey;
  final String name;
  final String? initialValue;
  final TextInputType? textType;
  final int? lines;
  final DecorationField? decorationField;
  final String? Function(String?)? validator;
  final Function()? onTab;
  final bool? obscureText;
  final bool? enableField;
  final EdgeInsets? margin;
  final Color? cursorColor;
  // final TextEditingController? controller;
  final Function(String?)? onChanged;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;

  const GenericTextField({
    super.key,
    required this.name,
    this.initialValue,
    this.textType,
    this.obscureText = false,
    this.enableField = true,
    this.lines = 1,
    this.onTab,
    this.validator,
    this.cursorColor,
    this.margin,
    // this.controller,
    this.onChanged,
    this.fieldKey,
    this.textInputAction = TextInputAction.next,
    this.autofillHints,
    this.inputFormatters,
    this.decorationField,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // if (decorationField?.labelText != null)
          //   TextWidget(
          //     text: decorationField!.labelText!,
          //     style: decorationField?.labelStyle ?? context.bodyL?.copyWith(fontWeight: FontWeight.w500),
          //   ),
          // 8.ph,
          FormBuilderTextField(
            focusNode: focusNode,
            key: fieldKey,
            name: name,

            initialValue: initialValue,

            // controller: controller,
            onTap: onTab,
            keyboardType: textType,
            maxLines: lines,
            obscureText: obscureText!,
            // obscuringCharacter: '*',
            cursorColor: cursorColor ?? AppColors.baseColor,

            cursorWidth: 1.5,
            style: decorationField?.style,
            showCursor: true,
            enableSuggestions: true,
            enabled: enableField!,
            decoration: decorationField != null
                ? decorationField!
                    .copyWith(
                        hintText: decorationField?.labelText ?? decorationField?.hintText ?? "",
                        hintStyle: decorationField?.hintStyle ?? context.bodyL?.copyWith(color: AppColors.textAccentColor))
                    .decorationField(context)
                : DecorationField().decorationField(context),
            validator: validator,
            onChanged: onChanged,
            autofillHints: autofillHints,
            textInputAction: textInputAction,
            inputFormatters: inputFormatters,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ],
      ),
    );
  }
}
