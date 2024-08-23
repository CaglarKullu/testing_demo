
# Testing Demo

This repository, `testing_demo`, is a sample project to demonstrate how to set up and run unit tests, widget tests, and integration tests for a Flutter application. The project includes configurations for continuous integration (CI) using GitHub Actions, testing on both Android and iOS platforms.

## Features

- **Unit Tests**: Validate the functionality of individual components in isolation.
- **Widget Tests**: Test the UI of Flutter widgets to ensure they render and behave as expected.
- **Integration Tests**: Simulate user interactions and test the app as a whole on real or emulated devices.

## CI Setup

The repository includes a GitHub Actions workflow that automates testing across Android and iOS platforms:

- **Android**: The workflow builds a debug APK, runs it on an Android emulator, and executes integration tests.
- **iOS**: The workflow builds the iOS app, runs it on an iOS simulator, and executes integration tests.

## How to Run Tests Locally

1. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

2. **Run Unit and Widget Tests**:
   ```bash
   flutter test
   ```

3. **Run Integration Tests**:
   - **Android**:
     ```bash
     flutter test integration_test/app_test.dart
     ```
   - **iOS**:
     ```bash
     xcodebuild test-without-building -xctestrun "build/ios_integ/Build/Products/Runner_*.xctestrun" -destination 'platform=iOS Simulator,name=iPhone 12'
     ```

## Continuous Integration

The CI pipeline is configured to automatically run tests on both Android and iOS devices when a push or pull request is made to the `main` branch. The workflow files can be found in the `.github/workflows` directory.

For more details and to explore the code, visit the repository on GitHub: [testing_demo](https://github.com/CaglarKullu/testing_demo).
