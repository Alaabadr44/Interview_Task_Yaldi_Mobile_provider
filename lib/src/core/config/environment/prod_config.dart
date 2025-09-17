// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProdConfig {
static const String environment = 'prod';
  static const String appName = 'Flutter App (PROD)';
  static const String baseUrl = 'https://dummyjson.com';
  static const String apiVersion = '/api/v1';
  static const bool isProduction = true;
  static const bool enableLogging = false;
  static const bool enableCrashlytics = true;
  static const String appId = 'com.example.flutter_application_1';

  // API Configuration
  static const Map<String, String> apiHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Timeout configurations
  static const int connectionTimeout = 60000; // 60 seconds
  static const int receiveTimeout = 180000; // 3 minutes
  static const int sendTimeout = 90000; // 90 seconds

  // Feature flags
  static const bool enableAnalytics = true;
  
}

