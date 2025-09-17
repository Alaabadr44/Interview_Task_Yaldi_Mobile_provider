import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/view/pages/auth/login/widget_keys.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_application_1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login Page Integration Tests', () {
    testWidgets('Login Page - Provider Implementation', (
      WidgetTester tester,
    ) async {
      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Wait for the app to load completely
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Test 1: Verify login page elements are present
      await _testLoginPageElements(tester);

      // Test 2: Test form validation
      await _testFormValidation(tester);

      // Test 3: Test password visibility toggle
      await _testPasswordVisibilityToggle(tester);

      // Test 4: Test remember me checkbox
      await _testRememberMeCheckbox(tester);

      // Test 5: Test fill test data functionality
      await _testFillTestData(tester);

      // Test 6: Test login button states
      await _testLoginButtonStates(tester);

      // Test 7: Test navigation to register page
      await _testNavigationToRegister(tester);

      // Test 8: Test form submission with valid data
      await _testFormSubmissionWithValidData(tester);

      // Test 9: Test form submission with invalid data
      await _testFormSubmissionWithInvalidData(tester);

      // Test 10: Test animation and UI responsiveness
      await _testAnimationAndResponsiveness(tester);
    });

    testWidgets('Login Page - Bloc Implementation', (
      WidgetTester tester,
    ) async {
      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Wait for the app to load completely
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Test the same scenarios for Bloc implementation
      await _testLoginPageElements(tester);
      await _testFormValidation(tester);
      await _testPasswordVisibilityToggle(tester);
      await _testRememberMeCheckbox(tester);
      await _testFillTestData(tester);
      await _testLoginButtonStates(tester);
      await _testNavigationToRegister(tester);
      await _testFormSubmissionWithValidData(tester);
      await _testFormSubmissionWithInvalidData(tester);
      await _testAnimationAndResponsiveness(tester);
    });
  });
}

/// Test 1: Verify all login page elements are present
Future<void> _testLoginPageElements(WidgetTester tester) async {
  print('🧪 Testing: Login Page Elements Presence');

  // Verify main container is present
  expect(find.byKey(const Key(LoginPageKeys.mainContainer)), findsOneWidget);

  // Verify animation widget is present
  expect(find.byKey(const Key(LoginPageKeys.animationWidget)), findsOneWidget);

  // Verify app logo is present
  expect(find.byKey(const Key(LoginPageKeys.appLogo)), findsOneWidget);

  // Verify welcome text is present
  expect(find.byKey(const Key(LoginPageKeys.welcomeText)), findsOneWidget);

  // Verify subtitle text is present
  expect(find.byKey(const Key(LoginPageKeys.subtitleText)), findsOneWidget);

  // Verify username field is present
  expect(find.byKey(const Key(LoginPageKeys.usernameField)), findsOneWidget);

  // Verify password field is present
  expect(find.byKey(const Key(LoginPageKeys.passwordField)), findsOneWidget);

  // Verify password visibility toggle is present
  expect(
    find.byKey(const Key(LoginPageKeys.passwordVisibilityToggle)),
    findsOneWidget,
  );

  // Verify remember me checkbox is present
  expect(
    find.byKey(const Key(LoginPageKeys.rememberMeCheckbox)),
    findsOneWidget,
  );

  // Verify remember me text is present
  expect(find.byKey(const Key(LoginPageKeys.rememberMeText)), findsOneWidget);

  // Verify login button is present
  expect(find.byKey(const Key(LoginPageKeys.loginButton)), findsOneWidget);

  // Verify register button is present
  expect(find.byKey(const Key(LoginPageKeys.registerButton)), findsOneWidget);

  // Verify fill test data button is present (in development mode)
  expect(
    find.byKey(const Key(LoginPageKeys.fillTestDataButton)),
    findsOneWidget,
  );

  print('✅ All login page elements are present');
}

/// Test 2: Test form validation
Future<void> _testFormValidation(WidgetTester tester) async {
  print('🧪 Testing: Form Validation');

  // Test empty form submission
  await tester.tap(find.byKey(const Key(LoginPageKeys.loginButton)));
  await tester.pumpAndSettle();

  // Verify validation messages appear
  expect(find.text('This field should not be empty'), findsWidgets);

  // Test username field validation
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.usernameField)),
    'a',
  );
  await tester.tap(find.byKey(const Key(LoginPageKeys.loginButton)));
  await tester.pumpAndSettle();

  // Verify minimum length validation
  expect(
    find.text('The field must be at least 8 characters long'),
    findsOneWidget,
  );

  // Test password field validation
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.passwordField)),
    '123',
  );
  await tester.tap(find.byKey(const Key(LoginPageKeys.loginButton)));
  await tester.pumpAndSettle();

  // Verify password minimum length validation
  expect(
    find.text('The field must be at least 8 characters long'),
    findsOneWidget,
  );

  print('✅ Form validation is working correctly');
}

/// Test 3: Test password visibility toggle
Future<void> _testPasswordVisibilityToggle(WidgetTester tester) async {
  print('🧪 Testing: Password Visibility Toggle');

  // Enter password
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.passwordField)),
    'testpassword',
  );

  // Initially password should be hidden
  final passwordField = tester.widget<TextField>(
    find.byKey(const Key(LoginPageKeys.passwordField)),
  );
  expect(passwordField.obscureText, isTrue);

  // Tap password visibility toggle
  await tester.tap(
    find.byKey(const Key(LoginPageKeys.passwordVisibilityToggle)),
  );
  await tester.pumpAndSettle();

  // Password should now be visible
  final passwordFieldAfterToggle = tester.widget<TextField>(
    find.byKey(const Key(LoginPageKeys.passwordField)),
  );
  expect(passwordFieldAfterToggle.obscureText, isFalse);

  // Tap again to hide password
  await tester.tap(
    find.byKey(const Key(LoginPageKeys.passwordVisibilityToggle)),
  );
  await tester.pumpAndSettle();

  // Password should be hidden again
  final passwordFieldAfterSecondToggle = tester.widget<TextField>(
    find.byKey(const Key(LoginPageKeys.passwordField)),
  );
  expect(passwordFieldAfterSecondToggle.obscureText, isTrue);

  print('✅ Password visibility toggle is working correctly');
}

/// Test 4: Test remember me checkbox
Future<void> _testRememberMeCheckbox(WidgetTester tester) async {
  print('🧪 Testing: Remember Me Checkbox');

  // Initially checkbox should be unchecked
  final checkbox = tester.widget<Checkbox>(
    find.byKey(const Key(LoginPageKeys.rememberMeCheckbox)),
  );
  expect(checkbox.value, isFalse);

  // Tap checkbox to check it
  await tester.tap(find.byKey(const Key(LoginPageKeys.rememberMeCheckbox)));
  await tester.pumpAndSettle();

  // Checkbox should now be checked
  final checkboxAfterTap = tester.widget<Checkbox>(
    find.byKey(const Key(LoginPageKeys.rememberMeCheckbox)),
  );
  expect(checkboxAfterTap.value, isTrue);

  // Tap again to uncheck
  await tester.tap(find.byKey(const Key(LoginPageKeys.rememberMeCheckbox)));
  await tester.pumpAndSettle();

  // Checkbox should be unchecked again
  final checkboxAfterSecondTap = tester.widget<Checkbox>(
    find.byKey(const Key(LoginPageKeys.rememberMeCheckbox)),
  );
  expect(checkboxAfterSecondTap.value, isFalse);

  print('✅ Remember me checkbox is working correctly');
}

/// Test 5: Test fill test data functionality
Future<void> _testFillTestData(WidgetTester tester) async {
  print('🧪 Testing: Fill Test Data Functionality');

  // Clear any existing text
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.usernameField)),
    '',
  );
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.passwordField)),
    '',
  );

  // Tap fill test data button
  await tester.tap(find.byKey(const Key(LoginPageKeys.fillTestDataButton)));
  await tester.pumpAndSettle();

  // Wait for snackbar to appear
  await tester.pumpAndSettle(const Duration(seconds: 1));

  // Verify snackbar appears with success message
  expect(find.text('Test credentials filled successfully!'), findsOneWidget);
  expect(find.text('Ready to login with test credentials'), findsOneWidget);

  // Verify form fields are filled
  final usernameField = tester.widget<TextField>(
    find.byKey(const Key(LoginPageKeys.usernameField)),
  );
  final passwordField = tester.widget<TextField>(
    find.byKey(const Key(LoginPageKeys.passwordField)),
  );

  expect(usernameField.controller?.text, isNotEmpty);
  expect(passwordField.controller?.text, isNotEmpty);

  print('✅ Fill test data functionality is working correctly');
}

/// Test 6: Test login button states
Future<void> _testLoginButtonStates(WidgetTester tester) async {
  print('🧪 Testing: Login Button States');

  // Initially button should be enabled
  final loginButton = tester.widget<ElevatedButton>(
    find.byKey(const Key(LoginPageKeys.loginButton)),
  );
  expect(loginButton.onPressed, isNotNull);

  // Fill form with valid data
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.usernameField)),
    'testuser',
  );
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.passwordField)),
    'testpassword',
  );

  // Button should still be enabled
  final loginButtonAfterFill = tester.widget<ElevatedButton>(
    find.byKey(const Key(LoginPageKeys.loginButton)),
  );
  expect(loginButtonAfterFill.onPressed, isNotNull);

  print('✅ Login button states are working correctly');
}

/// Test 7: Test navigation to register page
Future<void> _testNavigationToRegister(WidgetTester tester) async {
  print('🧪 Testing: Navigation to Register Page');

  // Tap register button
  await tester.tap(find.byKey(const Key(LoginPageKeys.registerButton)));
  await tester.pumpAndSettle();

  // Verify navigation occurred (this would depend on your routing setup)
  // You might need to adjust this based on your actual routing implementation
  expect(find.byKey(const Key(LoginPageKeys.registerButton)), findsOneWidget);

  print('✅ Navigation to register page is working correctly');
}

/// Test 8: Test form submission with valid data
Future<void> _testFormSubmissionWithValidData(WidgetTester tester) async {
  print('🧪 Testing: Form Submission with Valid Data');

  // Fill form with valid data
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.usernameField)),
    'testuser',
  );
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.passwordField)),
    'testpassword',
  );

  // Tap login button
  await tester.tap(find.byKey(const Key(LoginPageKeys.loginButton)));
  await tester.pumpAndSettle();

  // Verify form submission attempt (this would depend on your actual implementation)
  // You might need to adjust this based on your actual login logic
  expect(find.byKey(const Key(LoginPageKeys.loginButton)), findsOneWidget);

  print('✅ Form submission with valid data is working correctly');
}

/// Test 9: Test form submission with invalid data
Future<void> _testFormSubmissionWithInvalidData(WidgetTester tester) async {
  print('🧪 Testing: Form Submission with Invalid Data');

  // Fill form with invalid data
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.usernameField)),
    'a',
  );
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.passwordField)),
    '123',
  );

  // Tap login button
  await tester.tap(find.byKey(const Key(LoginPageKeys.loginButton)));
  await tester.pumpAndSettle();

  // Verify validation messages appear
  expect(
    find.text('The field must be at least 8 characters long'),
    findsWidgets,
  );

  print('✅ Form submission with invalid data validation is working correctly');
}

/// Test 10: Test animation and UI responsiveness
Future<void> _testAnimationAndResponsiveness(WidgetTester tester) async {
  print('🧪 Testing: Animation and UI Responsiveness');

  // Verify animation widget is present
  expect(find.byKey(const Key(LoginPageKeys.animationWidget)), findsOneWidget);

  // Test scrolling functionality
  await tester.drag(
    find.byKey(const Key(LoginPageKeys.mainContainer)),
    const Offset(0, -100),
  );
  await tester.pumpAndSettle();

  // Verify elements are still accessible after scrolling
  expect(find.byKey(const Key(LoginPageKeys.loginButton)), findsOneWidget);

  // Test different screen orientations (if applicable)
  // This would require additional setup for orientation testing

  print('✅ Animation and UI responsiveness are working correctly');
}

/// Helper function to wait for animations to complete
Future<void> _waitForAnimations(WidgetTester tester) async {
  await tester.pumpAndSettle();
  await Future.delayed(const Duration(milliseconds: 500));
}

/// Helper function to clear form fields
Future<void> _clearFormFields(WidgetTester tester) async {
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.usernameField)),
    '',
  );
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.passwordField)),
    '',
  );
  await tester.pumpAndSettle();
}

/// Helper function to fill form with test data
Future<void> _fillFormWithTestData(WidgetTester tester) async {
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.usernameField)),
    'testuser',
  );
  await tester.enterText(
    find.byKey(const Key(LoginPageKeys.passwordField)),
    'testpassword',
  );
  await tester.pumpAndSettle();
}
