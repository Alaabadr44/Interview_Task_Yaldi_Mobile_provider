// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../core/config/app_colors.dart';
import '../../../../../core/utils/extension.dart';
import 'decoration_field.dart';

class FormFieldBorders {
  static get double => 8.0;
  static InputDecoration border({
    required InputDecoration decoration,
    required DecorationField decorationField,
    required BuildContext context,
    bool? enabled = true,
  }) {
    return decoration.copyWith(
      fillColor: decorationField.backgroundColor,
      filled: decorationField.fillBackgroundColor,
      border: decorationField.border,
      enabledBorder: decorationField.enabledBorder,
      disabledBorder: decorationField.disabledBorder,
      focusedBorder: decorationField.focusedBorder,
      errorBorder: decorationField.errorBorder,
      focusedErrorBorder:  decorationField.focusedErrorBorder,
      floatingLabelBehavior: decorationField.labelLock,
      contentPadding: decorationField.contentPadding,
      constraints: decorationField.constraints,
      // labelText: decorationField.labelText,
      // labelStyle: decorationField.labelStyle ?? context.labelS,
      hintText: decorationField.hintText,
      hintStyle: decorationField.hintStyle ?? context.bodyS,
      errorText: decorationField.errorText,
      errorStyle: context.labelL?.copyWith(color: AppColors.errorColor,height: decorationField.errorText.isNotNull ? null : 0.0 ),
      prefixIcon: decorationField.prefixIcon,
      suffixIcon: decorationField.suffixIcon,
    );
  }
}
