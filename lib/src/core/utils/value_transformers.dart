// Project imports:

/// Generic value transformers for different backend requirements
class ValueTransformers {
  /// Transforms boolean to string ("1"/"0")
  static String? boolToString(bool? value) {
    if (value != null) {
      return value ? "1" : "0";
    }
    return "0";
  }

  /// Transforms boolean to integer (1/0)
  static int? boolToInt(bool? value) {
    if (value != null) {
      return value ? 1 : 0;
    }
    return 0;
  }

  /// Transforms boolean to boolean (identity function for clarity)
  static bool? boolToBool(bool? value) {
    return value ?? false;
  }

  /// Generic transformer that accepts a function to determine the output type
  static T? boolToGeneric<T>(bool? value, T Function(bool) converter) {
    if (value != null) {
      return converter(value);
    }
    return null;
  }

  /// Predefined transformers as static functions for common use cases
  static final Map<String, Function> transformers = {
    'string': boolToString,
    'int': boolToInt,
    'bool': boolToBool,
  };

  /// Get transformer by type name
  static Function? getTransformer(String type) {
    return transformers[type];
  }
}

/// Extension on bool for easy transformation
extension BoolTransformer on bool? {
  /// Convert to string format
  String toStringValue() => ValueTransformers.boolToString(this) ?? "0";

  /// Convert to int format
  int toIntValue() => ValueTransformers.boolToInt(this) ?? 0;

  /// Convert to bool format (with default false)
  bool toBoolValue() => ValueTransformers.boolToBool(this) ?? false;

  /// Generic transformation
  T transform<T>(T Function(bool) converter) {
    if (this != null) {
      return converter(this!);
    }
    throw ArgumentError('Cannot transform null value');
  }
}

/// Enum for backend value types
enum BackendValueType {
  string,
  integer,
  boolean,
}

/// Configuration class for different backend requirements
class BackendConfig {
  final BackendValueType booleanFormat;

  const BackendConfig({
    this.booleanFormat = BackendValueType.boolean,
  });

  /// Get the appropriate transformer for boolean values
  dynamic Function(bool?) getBooleanTransformer() {
    switch (booleanFormat) {
      case BackendValueType.string:
        return ValueTransformers.boolToString;
      case BackendValueType.integer:
        return ValueTransformers.boolToInt;
      case BackendValueType.boolean:
        return ValueTransformers.boolToBool;
    }
  }
}
