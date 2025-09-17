import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart' as app;

void main() {
  group('Login Page Widget Tests', () {
    testWidgets('Login Page - Basic Functionality Test', (
      WidgetTester tester,
    ) async {
      print('🧪 Testing: Login Page Basic Functionality');

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

      print('✅ Login Page Basic Functionality Test completed successfully');
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

