// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Project imports:
import '../../../../../core/utils/value_transformers.dart';

/// Generic Checkbox Form Field that can return different types based on backend requirements
class GenericCheckboxFormField<T> extends FormBuilderCheckbox {
  GenericCheckboxFormField({
    super.key,
    required super.name,
    required Widget title,
    super.initialValue,
    super.onChanged,
    super.validator,
    super.enabled,
    super.decoration,
    super.autovalidateMode,

    /// The transformer function that converts bool? to the desired type T
    required T? Function(bool?) valueTransformer,

    /// Optional: Backend configuration for predefined transformers
    BackendConfig? backendConfig,
  }) : super(
          title: title,
          valueTransformer: valueTransformer,
        );

  /// Factory constructor for string backend (returns "1"/"0")
  static GenericCheckboxFormField<String> forStringBackend({
    Key? key,
    required String name,
    required Widget title,
    bool? initialValue,
    void Function(bool?)? onChanged,
    String? Function(bool?)? validator,
    bool enabled = true,
    InputDecoration decoration = const InputDecoration(),
    AutovalidateMode? autovalidateMode,
  }) {
    return GenericCheckboxFormField<String>(
      key: key,
      name: name,
      title: title,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      enabled: enabled,
      decoration: decoration,
      autovalidateMode: autovalidateMode,
      valueTransformer: ValueTransformers.boolToString,
    );
  }

  /// Factory constructor for integer backend (returns 1/0)
  static GenericCheckboxFormField<int> forIntBackend({
    Key? key,
    required String name,
    required Widget title,
    bool? initialValue,
    void Function(bool?)? onChanged,
    String? Function(bool?)? validator,
    bool enabled = true,
    InputDecoration decoration = const InputDecoration(),
    AutovalidateMode? autovalidateMode,
  }) {
    return GenericCheckboxFormField<int>(
      key: key,
      name: name,
      title: title,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      enabled: enabled,
      decoration: decoration,
      autovalidateMode: autovalidateMode,
      valueTransformer: ValueTransformers.boolToInt,
    );
  }

  /// Factory constructor for boolean backend (returns true/false)
  static GenericCheckboxFormField<bool> forBoolBackend({
    Key? key,
    required String name,
    required Widget title,
    bool? initialValue,
    void Function(bool?)? onChanged,
    String? Function(bool?)? validator,
    bool enabled = true,
    InputDecoration decoration = const InputDecoration(),
    AutovalidateMode? autovalidateMode,
  }) {
    return GenericCheckboxFormField<bool>(
      key: key,
      name: name,
      title: title,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      enabled: enabled,
      decoration: decoration,
      autovalidateMode: autovalidateMode,
      valueTransformer: ValueTransformers.boolToBool,
    );
  }

  /// Factory constructor with custom transformer
  static GenericCheckboxFormField<T> withCustomTransformer<T>({
    Key? key,
    required String name,
    required Widget title,
    required T? Function(bool?) customTransformer,
    bool? initialValue,
    void Function(bool?)? onChanged,
    String? Function(bool?)? validator,
    bool enabled = true,
    InputDecoration decoration = const InputDecoration(),
    AutovalidateMode? autovalidateMode,
  }) {
    return GenericCheckboxFormField<T>(
      key: key,
      name: name,
      title: title,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      enabled: enabled,
      decoration: decoration,
      autovalidateMode: autovalidateMode,
      valueTransformer: customTransformer,
    );
  }

  /// Factory constructor using backend configuration
  static GenericCheckboxFormField<dynamic> withBackendConfig({
    Key? key,
    required String name,
    required Widget title,
    required BackendConfig config,
    bool? initialValue,
    void Function(bool?)? onChanged,
    String? Function(bool?)? validator,
    bool enabled = true,
    InputDecoration decoration = const InputDecoration(),
    AutovalidateMode? autovalidateMode,
  }) {
    return GenericCheckboxFormField<dynamic>(
      key: key,
      name: name,
      title: title,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      enabled: enabled,
      decoration: decoration,
      autovalidateMode: autovalidateMode,
      valueTransformer: config.getBooleanTransformer(),
    );
  }
}
