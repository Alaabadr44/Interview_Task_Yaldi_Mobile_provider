// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:form_builder_validators/form_builder_validators.dart';

// Project imports:
import 'enums.dart';

String? Function(String?) validator(FieldType type,
    {String? confirmValue, bool optional = false}) {
  return FormBuilderValidators.compose([
    if (!optional) FormBuilderValidators.required(),
    if (type == FieldType.email) FormBuilderValidators.email(),
    if (type == FieldType.password) FormBuilderValidators.minLength(8),
    if (type == FieldType.phone) FormBuilderValidators.equalLength(9),
    if (type == FieldType.confirmPass && confirmValue != null)
      FormBuilderValidators.equal(confirmValue),
  ]);
}

TextInputType inputType(FieldType type) {
  return type == FieldType.email
      ? TextInputType.emailAddress
      : type == FieldType.phone
          ? TextInputType.phone
          : type == FieldType.numbers
              ? TextInputType.number
              : TextInputType.text;
}

bool isObsc(FieldType type) {
  return type == FieldType.password || type == FieldType.confirmPass;
}

// String? validatePassword(String? value) {
//   if (value == null || value.isEmpty) {
//     return 'Password cannot be empty';
//   }
//   if (value.length < 8) {
//     return 'Password must be at least 8 characters';
//   }
//   return null;
// }

// String? validateEmail(String? value) {
//   if (value == null || value.isEmpty) {
//     return 'Email cannot be empty';
//   }
//   String pattern = r'\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b';
//   RegExp regex = RegExp(pattern);
//   if (!regex.hasMatch(value)) {
//     return 'Enter a valid email address';
//   }
//   return null;
// }

// String? validateText(String? value) {
//   if (value == null || value.isEmpty) {
//     return 'This field cannot be empty';
//   }
//   return null;
// }

// String? validatePhoneNumber(String? value) {
//   if (value == null || value.isEmpty) {
//     return 'Phone number cannot be empty';
//   }
//   if (value.length != 9) {
//     return 'Enter a valid phone number';
//   }
//   return null;
// }
