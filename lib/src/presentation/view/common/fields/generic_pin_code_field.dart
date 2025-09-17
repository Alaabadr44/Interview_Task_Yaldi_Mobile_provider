// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Package imports:
import 'package:pinput/pinput.dart';

class GenericPinCodeField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onComplete;
  final String? code;
  final PinTheme? defaultPinTheme;
  final PinTheme? focusPinTheme;
  final PinTheme? submitPinTheme;
  final PinTheme? errorPinTheme;
  final int? count;
  final String? Function(String?)? validator;

  const GenericPinCodeField({
    super.key,
    this.controller,
    this.onComplete,
    this.code,
    this.count = 4,
    this.validator,
    this.focusPinTheme,
    this.submitPinTheme,
    this.errorPinTheme,
    this.defaultPinTheme,
  });

  @override
  Widget build(BuildContext context) {
    // final focusedBorderColor = AppColors.baseColor.withOpacity(.4);

    return Pinput(
      controller: controller,
      length: count!,
      // listenForMultipleSmsOnAndroid: true,
      defaultPinTheme: defaultPinTheme,
      validator: validator,
      keyboardType: TextInputType.number,
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      onCompleted: onComplete,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      focusedPinTheme: focusPinTheme,
      submittedPinTheme: submitPinTheme,
      errorPinTheme: errorPinTheme,
      
    );
  }
}
