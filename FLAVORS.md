# Flutter App Flavors

This project supports two flavors: **dev** (development) and **prod** (production).

## Flavors Overview

### DEV (Development)
- **Environment**: Development
- **App Name**: Flutter App (DEV)
- **Base URL**: https://dummyjson.com
- **App ID**: com.example.flutter_application_1.dev
- **Logging**: Enabled
- **Analytics**: Disabled
- **Crashlytics**: Disabled

### PROD (Production)
- **Environment**: Production
- **App Name**: Flutter App
- **Base URL**: https://api.production.com
- **App ID**: com.example.flutter_application_1
- **Logging**: Disabled
- **Analytics**: Enabled
- **Crashlytics**: Enabled

## Running the App

### Using Flutter CLI

#### Development (DEV)
```bash
# Debug mode
flutter run --flavor dev --target lib/main_dev.dart

# Release mode
flutter run --release --flavor dev --target lib/main_dev.dart
```

#### Production (PROD)
```bash
# Debug mode
flutter run --flavor prod --target lib/main_prod.dart

# Release mode
flutter run --release --flavor prod --target lib/main_prod.dart
```

### Using VS Code

1. Open VS Code
2. Go to Run and Debug (Ctrl+Shift+D)
3. Select one of the following configurations:
   - **Flutter (DEV Debug)**
   - **Flutter (PROD Debug)**
   - **Flutter (DEV Release)**
   - **Flutter (PROD Release)**

### Using Build Scripts

#### Build DEV Flavor
```bash
./scripts/build_dev.sh
```

#### Build PROD Flavor
```bash
./scripts/build_prod.sh
```

## Building APKs

### Development (DEV)
```bash
flutter build apk --flavor dev --target lib/main_dev.dart
```

### Production (PROD)
```bash
flutter build apk --flavor prod --target lib/main_prod.dart
```

## Building iOS Apps

### Development (DEV)
```bash
flutter build ios --flavor dev --target lib/main_dev.dart
```

### Production (PROD)
```bash
flutter build ios --flavor prod --target lib/main_prod.dart
```

## Main Files

- **DEV Main**: `lib/main_dev.dart` - Development environment entry point
- **PROD Main**: `lib/main_prod.dart` - Production environment entry point
- **Default Main**: `lib/main.dart` - Generic entry point (uses environment config)

## Configuration Files

- **DEV Config**: `lib/src/core/config/environment/dev_config.dart`
- **PROD Config**: `lib/src/core/config/environment/prod_config.dart`
- **Environment Config**: `lib/src/core/config/environment/environment_config.dart`

## Android Configuration

- **Build Gradle**: `android/app/build.gradle.kts`
- **Flavors**: Defined in `productFlavors` section

## iOS Configuration

- **DEV Debug**: `ios/Flutter/Debug-dev.xcconfig`
- **DEV Release**: `ios/Flutter/Release-dev.xcconfig`
- **PROD Debug**: `ios/Flutter/Debug-prod.xcconfig`
- **PROD Release**: `ios/Flutter/Release-prod.xcconfig`

## Environment Variables

The app uses the following environment variables:

- `FLAVOR`: The current flavor (dev/prod)
- `BASE_URL`: The API base URL
- `IS_PRODUCTION`: Boolean indicating if it's production
- `ENABLE_LOGGING`: Boolean indicating if logging is enabled

## Usage in Code

### Using EnvironmentService (Recommended)

```dart
import 'src/core/services/environment_service.dart';

// Access environment configuration anywhere in the app
print('Environment: ${EnvironmentService.environment}');
print('Base URL: ${EnvironmentService.baseUrl}');
print('Is Production: ${EnvironmentService.isProduction}');
print('Enable Logging: ${EnvironmentService.enableLogging}');

// Use in API calls
final apiUrl = EnvironmentService.fullApiUrl; // baseUrl + apiVersion
final headers = EnvironmentService.apiHeaders;

// Conditional logic based on environment
if (EnvironmentService.isDevelopment) {
  // Development-specific code
  print('Running in development mode');
}

if (EnvironmentService.enableAnalytics) {
  // Initialize analytics
  AnalyticsService.initialize();
}
```

### Using Environment Config Directly

```dart
import 'src/core/config/environment/environment_config.dart';

// Get current environment configuration
final config = Environment.config;

// Access configuration values
print('Environment: ${config.environment}');
print('Base URL: ${config.baseUrl}');
print('Is Production: ${config.isProduction}');
print('Enable Logging: ${config.enableLogging}');
```

### Example: API Service Integration

```dart
class ApiService {
  static String get baseUrl => EnvironmentService.baseUrl;
  static String get apiVersion => EnvironmentService.apiVersion;
  static Map<String, String> get headers => EnvironmentService.apiHeaders;
  
  static Future<Response> get(String endpoint) async {
    final url = '$baseUrl$apiVersion$endpoint';
    return await dio.get(url, options: Options(headers: headers));
  }
}
```

## Notes

- The DEV flavor uses dummyjson.com for testing
- The PROD flavor uses your production API
- Logging is enabled only in DEV flavor
- Analytics and Crashlytics are enabled only in PROD flavor
- Each flavor has a different application ID to allow both to be installed simultaneously
