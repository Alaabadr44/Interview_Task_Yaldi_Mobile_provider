import 'package:flutter_test/flutter_test.dart';

/// Test configuration constants for integration tests
class TestConfig {
  // Test timeouts
  static const Duration defaultTimeout = Duration(seconds: 30);
  static const Duration animationTimeout = Duration(seconds: 5);
  static const Duration networkTimeout = Duration(seconds: 10);

  // Test data
  static const String testUsername = 'testuser';
  static const String testPassword = 'testpassword';
  static const String testEmail = 'test@example.com';
  static const String testPhone = '+966501234567';

  // Test validation messages
  static const String requiredFieldMessage = 'This field should not be empty';
  static const String minLengthMessage =
      'The field must be at least 8 characters long';
  static const String emailValidationMessage =
      'Email should be correctly written';
  static const String phoneValidationMessage =
      'Please enter a valid phone number in this field';

  // Test success messages
  static const String testCredentialsFilled =
      'Test credentials filled successfully!';
  static const String readyToLogin = 'Ready to login with test credentials';
  static const String loginSuccess = 'Login successful';
  static const String testDataLoaded = 'Test data loaded into form fields';

  // Test error messages
  static const String loginFailed = 'Login failed';
  static const String networkError = 'Network error occurred';
  static const String validationError = 'Validation error';

  // Test delays
  static const Duration shortDelay = Duration(milliseconds: 100);
  static const Duration mediumDelay = Duration(milliseconds: 500);
  static const Duration longDelay = Duration(seconds: 2);

  // Test retry counts
  static const int maxRetries = 3;
  static const int maxScrollAttempts = 5;
  static const int maxTapAttempts = 3;
}

/// Test helper functions
class TestHelpers {
  /// Wait for animations to complete
  static Future<void> waitForAnimations(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await Future.delayed(TestConfig.mediumDelay);
  }

  /// Wait for network requests to complete
  static Future<void> waitForNetwork(WidgetTester tester) async {
    await tester.pumpAndSettle(TestConfig.networkTimeout);
  }

  /// Clear all form fields
  static Future<void> clearFormFields(WidgetTester tester) async {
    // This would need to be implemented based on your specific form fields
    await tester.pumpAndSettle();
  }

  /// Fill form with test data
  static Future<void> fillFormWithTestData(WidgetTester tester) async {
    // This would need to be implemented based on your specific form fields
    await tester.pumpAndSettle();
  }

  /// Tap and wait for response
  static Future<void> tapAndWait(WidgetTester tester, Finder finder) async {
    await tester.tap(finder);
    await waitForAnimations(tester);
  }

  /// Enter text and wait for response
  static Future<void> enterTextAndWait(
    WidgetTester tester,
    Finder finder,
    String text,
  ) async {
    await tester.enterText(finder, text);
    await waitForAnimations(tester);
  }

  /// Scroll and wait for response
  static Future<void> scrollAndWait(
    WidgetTester tester,
    Finder finder,
    Offset offset,
  ) async {
    await tester.drag(finder, offset);
    await waitForAnimations(tester);
  }
}

/// Test assertions helper
class TestAssertions {
  /// Assert that a widget is found
  static void assertWidgetFound(Finder finder, String description) {
    expect(finder, findsOneWidget, reason: 'Expected to find $description');
  }

  /// Assert that multiple widgets are found
  static void assertWidgetsFound(Finder finder, String description, int count) {
    expect(
      finder,
      findsNWidgets(count),
      reason: 'Expected to find $count $description',
    );
  }

  /// Assert that a widget is not found
  static void assertWidgetNotFound(Finder finder, String description) {
    expect(finder, findsNothing, reason: 'Expected not to find $description');
  }

  /// Assert that text is found
  static void assertTextFound(String text, String description) {
    expect(
      find.text(text),
      findsOneWidget,
      reason: 'Expected to find text: $description',
    );
  }

  /// Assert that text is not found
  static void assertTextNotFound(String text, String description) {
    expect(
      find.text(text),
      findsNothing,
      reason: 'Expected not to find text: $description',
    );
  }
}

/// Test data provider
class TestDataProvider {
  /// Get valid login credentials
  static Map<String, String> getValidLoginCredentials() {
    return {
      'username': TestConfig.testUsername,
      'password': TestConfig.testPassword,
    };
  }

  /// Get invalid login credentials
  static Map<String, String> getInvalidLoginCredentials() {
    return {'username': 'a', 'password': '123'};
  }

  /// Get test user data
  static Map<String, String> getTestUserData() {
    return {
      'username': TestConfig.testUsername,
      'password': TestConfig.testPassword,
      'email': TestConfig.testEmail,
      'phone': TestConfig.testPhone,
    };
  }
}
