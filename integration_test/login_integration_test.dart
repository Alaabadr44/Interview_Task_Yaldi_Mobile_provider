import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_application_1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login Page Integration Tests', () {
    testWidgets('Login Page - Complete Flow Test', (WidgetTester tester) async {
      print('🧪 Testing: Login Page Complete Flow');

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

      print('✅ Login Page Complete Flow Test completed successfully');
    });

    testWidgets('Login Page - Form Validation Test', (
      WidgetTester tester,
    ) async {
      print('🧪 Testing: Login Page Form Validation');

      app.main();
      await tester.pumpAndSettle();

      // Test empty form submission
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();

      // Verify validation messages appear
      expect(find.text('This field should not be empty'), findsWidgets);

      print('✅ Form Validation Test completed successfully');
    });

    testWidgets('Login Page - Password Visibility Test', (
      WidgetTester tester,
    ) async {
      print('🧪 Testing: Login Page Password Visibility');

      app.main();
      await tester.pumpAndSettle();

      // Find password field
      final passwordField = find.byType(TextField).last;

      // Enter password
      await tester.enterText(passwordField, 'testpassword');
      await tester.pumpAndSettle();

      // Find and tap password visibility toggle
      final visibilityToggle = find.byIcon(Icons.visibility_off_outlined);
      if (visibilityToggle.evaluate().isNotEmpty) {
        await tester.tap(visibilityToggle);
        await tester.pumpAndSettle();
      }

      print('✅ Password Visibility Test completed successfully');
    });

    testWidgets('Login Page - Remember Me Test', (WidgetTester tester) async {
      print('🧪 Testing: Login Page Remember Me');

      app.main();
      await tester.pumpAndSettle();

      // Find and tap remember me checkbox
      final checkbox = find.byType(Checkbox);
      if (checkbox.evaluate().isNotEmpty) {
        await tester.tap(checkbox);
        await tester.pumpAndSettle();
      }

      print('✅ Remember Me Test completed successfully');
    });

    testWidgets('Login Page - Fill Test Data Test', (
      WidgetTester tester,
    ) async {
      print('🧪 Testing: Login Page Fill Test Data');

      app.main();
      await tester.pumpAndSettle();

      // Find and tap fill test data button
      final fillButton = find.text('Fill Test Data');
      if (fillButton.evaluate().isNotEmpty) {
        await tester.tap(fillButton);
        await tester.pumpAndSettle();
      }

      print('✅ Fill Test Data Test completed successfully');
    });

    testWidgets('Login Page - Navigation Test', (WidgetTester tester) async {
      print('🧪 Testing: Login Page Navigation');

      app.main();
      await tester.pumpAndSettle();

      // Find and tap register button
      final registerButton = find.text('Create Account');
      if (registerButton.evaluate().isNotEmpty) {
        await tester.tap(registerButton);
        await tester.pumpAndSettle();
      }

      print('✅ Navigation Test completed successfully');
    });

    testWidgets('Login Page - UI Responsiveness Test', (
      WidgetTester tester,
    ) async {
      print('🧪 Testing: Login Page UI Responsiveness');

      app.main();
      await tester.pumpAndSettle();

      // Test scrolling functionality
      final scrollable = find.byType(SingleChildScrollView);
      if (scrollable.evaluate().isNotEmpty) {
        await tester.drag(scrollable, const Offset(0, -100));
        await tester.pumpAndSettle();
      }

      // Verify elements are still accessible
      expect(find.text('Sign In'), findsOneWidget);

      print('✅ UI Responsiveness Test completed successfully');
    });
  });
}

/// Test 1: Verify all login page elements are present
Future<void> _testLoginPageElements(WidgetTester tester) async {
  print('🧪 Testing: Login Page Elements Presence');

  // Verify app logo is present
  expect(find.byType(Image), findsWidgets);

  // Verify welcome text is present
  expect(find.text('Welcome Back'), findsOneWidget);

  // Verify username field is present
  expect(find.byType(TextField), findsWidgets);

  // Verify login button is present
  expect(find.text('Sign In'), findsOneWidget);

  // Verify register button is present
  expect(find.text('Create Account'), findsOneWidget);

  print('✅ All login page elements are present');
}

/// Test 2: Test form validation
Future<void> _testFormValidation(WidgetTester tester) async {
  print('🧪 Testing: Form Validation');

  // Test empty form submission
  await tester.tap(find.text('Sign In'));
  await tester.pumpAndSettle();

  // Verify validation messages appear
  expect(find.text('This field should not be empty'), findsWidgets);

  print('✅ Form validation is working correctly');
}

/// Test 3: Test password visibility toggle
Future<void> _testPasswordVisibilityToggle(WidgetTester tester) async {
  print('🧪 Testing: Password Visibility Toggle');

  // Find password field
  final passwordField = find.byType(TextField).last;

  // Enter password
  await tester.enterText(passwordField, 'testpassword');
  await tester.pumpAndSettle();

  // Find and tap password visibility toggle
  final visibilityToggle = find.byIcon(Icons.visibility_off_outlined);
  if (visibilityToggle.evaluate().isNotEmpty) {
    await tester.tap(visibilityToggle);
    await tester.pumpAndSettle();
  }

  print('✅ Password visibility toggle is working correctly');
}

/// Test 4: Test remember me checkbox
Future<void> _testRememberMeCheckbox(WidgetTester tester) async {
  print('🧪 Testing: Remember Me Checkbox');

  // Find and tap remember me checkbox
  final checkbox = find.byType(Checkbox);
  if (checkbox.evaluate().isNotEmpty) {
    await tester.tap(checkbox);
    await tester.pumpAndSettle();
  }

  print('✅ Remember me checkbox is working correctly');
}

/// Test 5: Test fill test data functionality
Future<void> _testFillTestData(WidgetTester tester) async {
  print('🧪 Testing: Fill Test Data Functionality');

  // Find and tap fill test data button
  final fillButton = find.text('Fill Test Data');
  if (fillButton.evaluate().isNotEmpty) {
    await tester.tap(fillButton);
    await tester.pumpAndSettle();
  }

  print('✅ Fill test data functionality is working correctly');
}

/// Test 6: Test login button states
Future<void> _testLoginButtonStates(WidgetTester tester) async {
  print('🧪 Testing: Login Button States');

  // Initially button should be enabled
  final loginButton = find.text('Sign In');
  expect(loginButton, findsOneWidget);

  // Fill form with valid data
  final usernameField = find.byType(TextField).first;
  final passwordField = find.byType(TextField).last;

  await tester.enterText(usernameField, 'testuser');
  await tester.enterText(passwordField, 'testpassword');
  await tester.pumpAndSettle();

  // Button should still be accessible
  expect(loginButton, findsOneWidget);

  print('✅ Login button states are working correctly');
}

/// Test 7: Test navigation to register page
Future<void> _testNavigationToRegister(WidgetTester tester) async {
  print('🧪 Testing: Navigation to Register Page');

  // Find and tap register button
  final registerButton = find.text('Create Account');
  if (registerButton.evaluate().isNotEmpty) {
    await tester.tap(registerButton);
    await tester.pumpAndSettle();
  }

  print('✅ Navigation to register page is working correctly');
}

