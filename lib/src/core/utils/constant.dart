import 'extension.dart';

import '../config/injector.dart';
import '../services/environment_service.dart';
import '../services/storage_service.dart';
import '../services/user_service.dart';

// Dynamic constants based on environment
String get kBaseUrl => EnvironmentService.baseUrl;
String get kGoogleMapUrl => "https://maps.googleapis.com/maps/api";

String get kPackageName => EnvironmentService.appId;

// Environment-specific API configuration
String get kApiVersion => EnvironmentService.apiVersion;
String get kFullApiUrl => EnvironmentService.fullApiUrl;

// Environment-specific timeouts
int get kConnectionTimeout => EnvironmentService.connectionTimeout;
int get kReceiveTimeout => EnvironmentService.receiveTimeout;
int get kSendTimeout => EnvironmentService.sendTimeout;

// Environment-specific feature flags
bool get kEnableLogging => EnvironmentService.enableLogging;
bool get kEnableAnalytics => EnvironmentService.enableAnalytics;
bool get kEnableCrashlytics => EnvironmentService.enableCrashlytics;
bool get kIsProduction => EnvironmentService.isProduction;
bool get kIsDevelopment => EnvironmentService.isDevelopment;
// Test data (only available in development)
String get kPhoneNumber => kIsDevelopment ? "1234567891" : "";
String get kUserName => kIsDevelopment ? "emilys" : "";
String get kPassword => kIsDevelopment ? "emilyspass" : "";

const double kAppBarHeight = 56.0;
const double kFABHeight = 56.0;
const double kBottomNavBarHeight = 75.0;
const double kButtonHeight = 51.0;
const double kAppBarLogoWidth = 56;
const double kRadiusLarge = 20;
const double kRadiusMedium = 16;
const double kRadiusSmall = 12;

const String kThemeModeKey = 'app.theme-mode';
const String kLocaleLanguageCode = 'locale.app-language';
// const String kLocaleCountryCode = 'locale.country';
const String kUserToken = 'user.access-token';
const String kUserData = 'user.user-info';
const String kOnBoarding = 'user.on-boarding';
const String kAppLang = 'user.AppLang';
const String kRememberMe = 'user.RememberMe';

Map<String, dynamic> get apiHeader {
  // Start with environment-specific headers
  final Map<String, dynamic> headers = Map.from(EnvironmentService.apiHeaders);

  // Add token if available
  if (_getToken != null) {
    headers['Authorization'] = _getToken;
  }

  // Add language if available
  // if (SettingService.getLocale?.languageCode != null) {
  //   headers['Accept-Language'] = SettingService.getLocale?.languageCode;
  // }

  return headers;
}


String? get _getToken {
  String? token = UserService.accessToken;
  token ??= injector<StorageService>().getString(kUserToken);
  if (token.isNotNull) {
    return 'Bearer $token';
  }
  return null;
}
