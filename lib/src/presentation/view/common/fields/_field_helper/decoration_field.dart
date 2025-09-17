// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../core/config/app_colors.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/extension.dart';

class DecorationField {
  final TextStyle? style;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? errorText;
  InputBorder? border;
  InputBorder? enabledBorder;
  InputBorder? disabledBorder;
  InputBorder? focusedBorder;
  InputBorder? errorBorder;
  InputBorder? focusedErrorBorder;
  final bool? isBorder;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? contentPadding;
  final FloatingLabelBehavior? labelLock;
  final double? radiusBorder;
  final Color backgroundColor;
  final Color? borderColor;
  final bool? fillBackgroundColor;
  DecorationField({
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.labelText,
    this.errorText,
    this.style,
    this.isBorder = true,
    this.constraints,
    this.contentPadding,
    this.labelLock = FloatingLabelBehavior.auto,
    this.radiusBorder,
    this.backgroundColor = const Color(0xffFAFAFA),
    this.hintStyle,
    this.labelStyle,
    this.fillBackgroundColor,
    this.border,
    this.borderColor = const Color(0xffEEEEEE),
    this.enabledBorder,
    this.disabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
  }) {
    border ??= OutlineInputBorder(
      borderSide: BorderSide(color: borderColor ?? Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(radiusBorder ?? 12.0),
    );

    enabledBorder ??= OutlineInputBorder(
      borderSide: BorderSide(color: borderColor ?? Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(radiusBorder ?? 12.0),
    );

    disabledBorder ??= OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor?.withOpacity(0.5) ?? Colors.grey.withOpacity(0.5),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(radiusBorder ?? 12.0),
    );

    focusedBorder ??= OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
      borderRadius: BorderRadius.circular(radiusBorder ?? 12.0),
    );

    errorBorder ??= OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: 2),
      borderRadius: BorderRadius.circular(radiusBorder ?? 12.0),
    );

    focusedErrorBorder ??= OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: 2),
      borderRadius: BorderRadius.circular(radiusBorder ?? 12.0),
    );
  }

  InputDecoration decorationField(BuildContext context) {
    return InputDecoration(
      filled: fillBackgroundColor,
      fillColor: backgroundColor.withOpacity(.4),
      // labelText: labelText,
      floatingLabelBehavior: labelLock,

      // labelStyle: labelStyle ?? context.labelL?.copyWith(color: AppColors.reverseBaseColor),
      hintText: hintText,
      hintStyle:
          hintStyle ?? context.bodyM?.copyWith(color: const Color(0xff747474)),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      border: border,
      errorMaxLines: 3,

      errorText: errorText,
      errorStyle: context.labelM?.copyWith(color: AppColors.errorColor),
      enabledBorder: enabledBorder,
      disabledBorder: disabledBorder,
      focusedBorder: focusedBorder,
      errorBorder: errorBorder,
      focusedErrorBorder: focusedErrorBorder,

      contentPadding:
          contentPadding ?? const EdgeInsetsDirectional.only(start: 10),
      constraints: constraints,
      alignLabelWithHint: true,
    );
  }

  DecorationField copyWith({
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? hintText,
    TextStyle? hintStyle,
    String? labelText,
    TextStyle? labelStyle,
    String? errorText,
    InputBorder? border,
    InputBorder? enabledBorder,
    InputBorder? disabledBorder,
    InputBorder? focusedBorder,
    InputBorder? errorBorder,
    InputBorder? focusedErrorBorder,
    bool? isBorder,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? contentPadding,
    FloatingLabelBehavior? labelLock,
    double? radiusBorder,
    Color? backgroundColor,
    Color? borderColor,
    bool? fillBackgroundColor,
  }) {
    return DecorationField(
      prefixIcon: prefixIcon ?? this.prefixIcon,
      suffixIcon: suffixIcon ?? this.suffixIcon,
      hintText: hintText ?? this.hintText,
      hintStyle: hintStyle ?? this.hintStyle,
      labelText: labelText ?? this.labelText,
      labelStyle: labelStyle ?? this.labelStyle,
      errorText: errorText ?? this.errorText,
      border: border ?? this.border,
      enabledBorder: enabledBorder ?? this.enabledBorder,
      disabledBorder: disabledBorder ?? this.disabledBorder,
      focusedBorder: focusedBorder ?? this.focusedBorder,
      errorBorder: errorBorder ?? this.errorBorder,
      focusedErrorBorder: focusedErrorBorder ?? this.focusedErrorBorder,
      isBorder: isBorder ?? this.isBorder,
      constraints: constraints ?? this.constraints,
      contentPadding: contentPadding ?? this.contentPadding,
      labelLock: labelLock ?? this.labelLock,
      radiusBorder: radiusBorder ?? this.radiusBorder,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      fillBackgroundColor: fillBackgroundColor ?? this.fillBackgroundColor,
    );
  }
}

class DecorationFields {
  static DecorationField generalDecorationField(
    BuildContext context, {
    String? labelText,
    String? hintText,

    Widget? prefixIcon,
    Widget? suffixIcon,
    TextStyle? hintStyle,
  }) {
    return DecorationField(
      labelText: labelText ?? "",
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? context.bodyM,
      fillBackgroundColor: true,
      isBorder: false,
      contentPadding: const EdgeInsets.symmetric(vertical: 12),
      radiusBorder: kRadiusSmall,
      prefixIcon: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 12,
          maxHeight: 12,
          minHeight: 10,
          minWidth: 10,
        ),
        child: prefixIcon,
      ),
      suffixIcon: suffixIcon,
    );
  }
}
