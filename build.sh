#!/bin/bash

# Install Flutter
git clone https://github.com/flutter/flutter.git -b stable --depth 1
export PATH="$PATH:$PWD/flutter/bin"

# Verify Flutter installation
flutter doctor --android-licenses --android-sdk=$ANDROID_HOME || true

# Enable web
flutter config --enable-web

# Get dependencies
flutter pub get

# Build web
flutter build web --release