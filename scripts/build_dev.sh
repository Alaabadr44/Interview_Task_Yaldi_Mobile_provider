#!/bin/bash

# Build script for DEV flavor
echo "Building DEV flavor..."

# Clean previous builds
flutter clean

# Get dependencies
flutter pub get

# Build for Android
echo "Building Android APK for DEV..."
flutter build apk --flavor dev --target lib/main_dev.dart

# Build for iOS (if on macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Building iOS for DEV..."
    flutter build ios --flavor dev --target lib/main_dev.dart
fi

echo "DEV build completed!"
