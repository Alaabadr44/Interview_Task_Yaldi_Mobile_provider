### Provider App Downloads

- Dev: [Google Drive - Dev APK](https://drive.google.com/file/d/1-iliuzCofLAbCluMIiqyfJKCxl-iEzHj/view?usp=sharing)
- Prod: [Google Drive - Prod APK](https://drive.google.com/file/d/1mTBv7SX4HNzP9zLDn6sYTChVbbR8WaX8/view?usp=sharing)

# Flutter Application

A comprehensive Flutter application with multi-environment support, authentication, and modern architecture patterns.

## 📱 Project Information

- **Flutter Version**: 3.29.3
- **Dart Version**: 3.7.2
- **Minimum SDK**: ^3.7.2
- **Architecture**: Clean Architecture with BLoC/Provider state management

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.29.3 or higher
- Dart SDK 3.7.2 or higher
- iOS 14.0+ (for iOS builds)
- Android SDK (for Android builds)

### Installation

1. Clone the repository
2. Install dependencies:

```bash
flutter pub get
```

3. Generate localization files:

```bash
flutter gen-l10n
```

4. Generate code (if needed):

```bash
flutter packages pub run build_runner build
```

## 🏗️ Project Structure

```ini
lib/
├── src/
│   ├── core/                    # Core utilities and configuration
│   │   ├── config/             # App configuration
│   │   ├── services/           # Core services
│   │   └── utils/              # Utility functions
│   ├── data/                   # Data layer
│   ├── domain/                 # Domain layer (entities, use cases)
│   └── presentation/           # Presentation layer (UI, BLoC, Providers)
├── main.dart                   # Default entry point
├── main_dev.dart              # Development entry point
└── main_prod.dart             # Production entry point
```

## 🎯 Running the Application

### Development Mode

#### Using Flutter CLI

**Development Environment:**

```bash
flutter run -t lib/main_dev.dart --flavor dev
```

**Production Environment:**

```bash
flutter run -t lib/main_prod.dart --flavor prod
```

#### Using VS Code Launch Configurations

The project includes pre-configured launch configurations in `.vscode/launch.json`:

1. **Flutter (DEV Debug)** - Development environment with debug mode
2. **Flutter (PROD Debug)** - Production environment with debug mode
3. **Flutter (DEV Release)** - Development environment with release mode
4. **Flutter (PROD Release)** - Production environment with release mode

### Platform-Specific Instructions

#### iOS

**Prerequisites:**

- Xcode 14.0 or higher
- iOS 14.0+ deployment target
- Valid iOS development certificate

**Running on iOS:**

```bash
# Development
flutter run -t lib/main_dev.dart --flavor dev -d ios

# Production  
flutter run -t lib/main_prod.dart --flavor prod -d ios
```

__Note:__ iOS flavors require custom schemes to be configured in Xcode. The project uses `flutter_flavorizr` for flavor configuration, but manual Xcode setup may be required.

#### Android

**Prerequisites:**

- Android SDK
- Android device or emulator

**Running on Android:**

```bash
# Development
flutter run -t lib/main_dev.dart --flavor dev -d android

# Production
flutter run -t lib/main_prod.dart --flavor prod -d android
```

## 🔐 Authentication & Security

### Refresh Token Methodology

The application implements a robust refresh token mechanism for secure authentication:

#### Key Components

1. __DataInterceptor__ (`lib/src/core/utils/interceptors/data_interceptor.dart`)

   - Automatically handles 401 (Unauthorized) responses
   - Attempts token refresh before failing requests
   - Prevents infinite refresh loops
   - Updates global access token on successful refresh

2. __Token Storage__ (`lib/src/core/services/user_service.dart`)

   - Secure storage of access and refresh tokens
   - Automatic token retrieval on app initialization
   - Token cleanup on logout

#### How It Works

1. **Automatic Token Refresh:**

```dart
// When a 401 error occurs, the interceptor:
// 1. Checks if refresh token exists
// 2. Calls refresh endpoint with refresh token
// 3. Updates access token in storage
// 4. Retries original request with new token
```

2. **Refresh Endpoint:**

   - Endpoint: `/auth/refresh`
   - Method: POST
   - Payload: `{'refreshToken': refreshToken}`
   - Response: New access token

3. **Error Handling:**

   - If refresh fails, user is logged out
   - Prevents refresh loops by checking endpoint paths
   - Graceful fallback to login screen

#### Implementation Details

```dart
// Refresh token flow in DataInterceptor
if (_isUnauthorized(err.response?.statusCode) && !_isRefreshing) {
  final String? refreshToken = UserService.currentUser?.refreshToken;
  if (refreshToken?.isNotNull ?? false) {
    _isRefreshing = true;
    // Attempt refresh and retry original request
    final Response? retry = await _tryRefreshAndRetry(
      failedRequest: failedRequest,
      refreshToken: refreshToken!,
    );
    // Handle success/failure
  }
}
```

## 🌍 Internationalization

The app supports multiple languages with ARB (Application Resource Bundle) files:

- __English__: `lib/src/core/config/l10n/intl_en.arb`
- __Arabic__: `lib/src/core/config/l10n/intl_ar.arb`

### Adding New Translations

1. Add keys to ARB files
2. Run: `flutter gen-l10n`
3. Use in code: `S.of(context).your_key`

## 🎨 UI/UX Features

- **Responsive Design**: Adaptive layouts for different screen sizes
- **Theme Support**: Light/Dark mode support
- **Custom Fonts**: Poppins and Cairo font families
- **Localization**: RTL support for Arabic
- **Modern UI**: Material Design 3 components

## 📦 Dependencies

### Core Dependencies

- `flutter_bloc` - State management
- `provider` - Dependency injection
- `dio` - HTTP client
- `get_it` - Service locator
- `shared_preferences` - Local storage

### UI Dependencies

- `flutter_screenutil` - Responsive design
- `flutter_svg` - SVG support
- `cached_network_image` - Image caching
- `flutter_form_builder` - Form handling

### Development Dependencies

- `flutter_flavorizr` - Flavor configuration
- `build_runner` - Code generation
- `freezed` - Immutable classes
- `json_serializable` - JSON serialization

## 🔧 Development Tools

### Code Generation

```bash
# Generate localization
flutter gen-l10n

# Generate code (models, etc.)
flutter packages pub run build_runner build

# Watch for changes
flutter packages pub run build_runner watch
```

### Linting

```bash
flutter analyze
```

### Testing

```bash
# Unit tests
flutter test

# Integration tests
flutter test integration_test/
```

## 🚀 Deployment

### iOS

1. Configure signing in Xcode
2. Build for release:

```bash
flutter build ios --flavor prod -t lib/main_prod.dart
```

3. Archive and upload to App Store

### Android

1. Generate signed APK:

```bash
flutter build apk --flavor prod -t lib/main_prod.dart
```

2. Or build app bundle:

```bash
flutter build appbundle --flavor prod -t lib/main_prod.dart
```

## 📝 Environment Configuration

The app supports multiple environments through flavors:

- **Development**: Debug logging, development API endpoints
- **Production**: Optimized builds, production API endpoints

Environment-specific configurations are managed through:

- `lib/main_dev.dart` - Development entry point
- `lib/main_prod.dart` - Production entry point
- Flavor-specific build configurations

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests and linting
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Troubleshooting

### Common Issues

1. **iOS Build Issues:**

   - Ensure Xcode is up to date
   - Check iOS deployment target (14.0+)
   - Verify signing certificates

2. **Android Build Issues:**

   - Check Android SDK installation
   - Verify build tools version
   - Ensure proper signing configuration

3. **Flavor Issues:**

   - Run `flutter clean` and `flutter pub get`
   - Check flavor configuration in `pubspec.yaml`
   - Verify Xcode schemes for iOS

4. **Localization Issues:**

   - Run `flutter gen-l10n` after adding new keys
   - Check ARB file syntax
   - Verify generated files in `lib/src/core/config/l10n/generated/`

For more help, check the Flutter documentation or create an issue in the repository.# Interview_Task_Yaldi_Mobile_provider
