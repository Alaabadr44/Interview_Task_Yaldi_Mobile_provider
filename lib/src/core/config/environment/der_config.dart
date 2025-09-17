// ignore_for_file: public_member_api_docs, sort_constructors_first

class DevConfig {
  static const String environment = 'dev';
  static const String appName = 'Flutter App (DEV)';
  static const String baseUrl = 'https://dummyjson.com';
  static const String apiVersion = '/api/v1';
  static const bool isProduction = false;
  static const bool enableLogging = true;
  static const bool enableCrashlytics = false;
  static const String appId = 'com.example.flutter_application_1.dev';

  // API Configuration
  static const Map<String, String> apiHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Timeout configurations
  static const int connectionTimeout = 30000; // 30 seconds
  static const int receiveTimeout = 30000; // 30 seconds
  static const int sendTimeout = 30000; // 30 seconds

  // Feature flags
  static const bool enableAnalytics = false;
  static const bool enablePushNotifications = false;
  static const bool enableBiometricAuth = false;
}
