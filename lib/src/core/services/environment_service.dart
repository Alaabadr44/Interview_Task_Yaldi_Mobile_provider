// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../config/environment/environment_config.dart';

/// Service to provide environment configuration throughout the app
class EnvironmentService {
  static EnvironmentConfig? _config;

  /// Initialize the environment service with the current configuration
  static void initialize(EnvironmentConfig config) {
    _config = config;
  }

  /// Get the current environment configuration
  static EnvironmentConfig get config {
    if (_config == null) {
      throw Exception(
        'EnvironmentService not initialized. Call initialize() first.',
      );
    }
    return _config!;
  }

  /// Check if the app is running in production
  static bool get isProduction => config.isProduction;

  /// Check if the app is running in development
  static bool get isDevelopment => !config.isProduction;

  /// Get the current environment name
  static String get environment => config.environment;

  /// Get the app name for current environment
  static String get appName => config.appName;

  /// Get the base URL for API calls
  static String get baseUrl => config.baseUrl;

  /// Get the API version
  static String get apiVersion => config.apiVersion;

  /// Get the full API URL
  static String get fullApiUrl => '$baseUrl$apiVersion';

  /// Check if logging is enabled
  static bool get enableLogging => config.enableLogging;

  /// Check if crashlytics is enabled
  static bool get enableCrashlytics => config.enableCrashlytics;

  /// Get the app ID for current environment
  static String get appId => config.appId;

  /// Get API headers
  static Map<String, String> get apiHeaders => config.apiHeaders;

  /// Get connection timeout
  static int get connectionTimeout => config.connectionTimeout;

  /// Get receive timeout
  static int get receiveTimeout => config.receiveTimeout;

  /// Get send timeout
  static int get sendTimeout => config.sendTimeout;

  /// Check if analytics is enabled
  static bool get enableAnalytics => config.enableAnalytics;
}
