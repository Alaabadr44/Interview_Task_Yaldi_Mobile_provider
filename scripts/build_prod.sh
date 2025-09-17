#!/bin/bash

# Build script for PROD flavor
echo "Building PROD flavor..."

# Clean previous builds
flutter clean

# Get dependencies
flutter pub get

# Build for Android
echo "Building Android APK for PROD..."
flutter build apk --flavor prod --target lib/main_prod.dart

# Build for iOS (if on macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Building iOS for PROD..."
    flutter build ios --flavor prod --target lib/main_prod.dart
fi

echo "PROD build completed!"
