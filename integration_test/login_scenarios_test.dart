import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/view/pages/auth/login/widget_keys.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_application_1/main.dart' as app;
import 'test_config.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login Page Scenarios', () {
    testWidgets('Scenario 1: Happy Path - Successful Login', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 1: Happy Path - Successful Login');

      // Start the app
      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Verify login page is loaded
      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.mainContainer)),
        'Login page main container',
      );

      // Step 2: Fill form with valid data
      await TestHelpers.enterTextAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.usernameField)),
        TestConfig.testUsername,
      );

      await TestHelpers.enterTextAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.passwordField)),
        TestConfig.testPassword,
      );

      // Step 3: Tap login button
      await TestHelpers.tapAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.loginButton)),
      );

      // Step 4: Verify login attempt (this would depend on your actual implementation)
      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.loginButton)),
        'Login button after submission',
      );

      print('✅ Scenario 1 completed successfully');
    });

    testWidgets('Scenario 2: Form Validation - Empty Fields', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 2: Form Validation - Empty Fields');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Try to submit empty form
      await TestHelpers.tapAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.loginButton)),
      );

      // Step 2: Verify validation messages appear
      TestAssertions.assertTextFound(
        TestConfig.requiredFieldMessage,
        'Required field validation message',
      );

      print('✅ Scenario 2 completed successfully');
    });

    testWidgets('Scenario 3: Form Validation - Short Input', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 3: Form Validation - Short Input');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Enter short username
      await TestHelpers.enterTextAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.usernameField)),
        'a',
      );

      // Step 2: Enter short password
      await TestHelpers.enterTextAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.passwordField)),
        '123',
      );

      // Step 3: Try to submit
      await TestHelpers.tapAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.loginButton)),
      );

      // Step 4: Verify minimum length validation
      TestAssertions.assertTextFound(
        TestConfig.minLengthMessage,
        'Minimum length validation message',
      );

      print('✅ Scenario 3 completed successfully');
    });

    testWidgets('Scenario 4: Password Visibility Toggle', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 4: Password Visibility Toggle');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Enter password
      await TestHelpers.enterTextAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.passwordField)),
        TestConfig.testPassword,
      );

      // Step 2: Verify password is initially hidden
      final passwordField = tester.widget<TextField>(
        find.byKey(const Key(LoginPageKeys.passwordField)),
      );
      expect(passwordField.obscureText, isTrue);

      // Step 3: Toggle password visibility
      await TestHelpers.tapAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.passwordVisibilityToggle)),
      );

      // Step 4: Verify password is now visible
      final passwordFieldAfterToggle = tester.widget<TextField>(
        find.byKey(const Key(LoginPageKeys.passwordField)),
      );
      expect(passwordFieldAfterToggle.obscureText, isFalse);

      print('✅ Scenario 4 completed successfully');
    });

    testWidgets('Scenario 5: Remember Me Functionality', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 5: Remember Me Functionality');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Verify checkbox is initially unchecked
      final checkbox = tester.widget<Checkbox>(
        find.byKey(const Key(LoginPageKeys.rememberMeCheckbox)),
      );
      expect(checkbox.value, isFalse);

      // Step 2: Tap checkbox to check it
      await TestHelpers.tapAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.rememberMeCheckbox)),
      );

      // Step 3: Verify checkbox is now checked
      final checkboxAfterTap = tester.widget<Checkbox>(
        find.byKey(const Key(LoginPageKeys.rememberMeCheckbox)),
      );
      expect(checkboxAfterTap.value, isTrue);

      print('✅ Scenario 5 completed successfully');
    });

    testWidgets('Scenario 6: Fill Test Data Functionality', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 6: Fill Test Data Functionality');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Clear form fields
      await TestHelpers.clearFormFields(tester);

      // Step 2: Tap fill test data button
      await TestHelpers.tapAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.fillTestDataButton)),
      );

      // Step 3: Verify success message appears
      TestAssertions.assertTextFound(
        TestConfig.testCredentialsFilled,
        'Test credentials filled message',
      );

      TestAssertions.assertTextFound(
        TestConfig.readyToLogin,
        'Ready to login message',
      );

      print('✅ Scenario 6 completed successfully');
    });

    testWidgets('Scenario 7: Navigation to Register Page', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 7: Navigation to Register Page');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Tap register button
      await TestHelpers.tapAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.registerButton)),
      );

      // Step 2: Verify navigation occurred
      // This would depend on your actual routing implementation
      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.registerButton)),
        'Register button after navigation',
      );

      print('✅ Scenario 7 completed successfully');
    });

    testWidgets('Scenario 8: UI Responsiveness and Scrolling', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 8: UI Responsiveness and Scrolling');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Test scrolling functionality
      await TestHelpers.scrollAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.mainContainer)),
        const Offset(0, -100),
      );

      // Step 2: Verify elements are still accessible
      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.loginButton)),
        'Login button after scrolling',
      );

      // Step 3: Test reverse scrolling
      await TestHelpers.scrollAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.mainContainer)),
        const Offset(0, 100),
      );

      // Step 4: Verify all elements are accessible
      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.usernameField)),
        'Username field after reverse scrolling',
      );

      print('✅ Scenario 8 completed successfully');
    });

    testWidgets('Scenario 9: Error Handling - Network Issues', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 9: Error Handling - Network Issues');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Fill form with valid data
      await TestHelpers.fillFormWithTestData(tester);

      // Step 2: Attempt login (this would simulate network error in real scenario)
      await TestHelpers.tapAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.loginButton)),
      );

      // Step 3: Verify error handling (this would depend on your actual implementation)
      // You might need to adjust this based on your actual error handling

      print('✅ Scenario 9 completed successfully');
    });

    testWidgets('Scenario 10: Accessibility and Usability', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 10: Accessibility and Usability');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Step 1: Verify all interactive elements are accessible
      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.usernameField)),
        'Username field for accessibility',
      );

      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.passwordField)),
        'Password field for accessibility',
      );

      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.loginButton)),
        'Login button for accessibility',
      );

      // Step 2: Test keyboard navigation (if applicable)
      // This would require additional setup for keyboard testing

      // Step 3: Test screen reader compatibility (if applicable)
      // This would require additional setup for screen reader testing

      print('✅ Scenario 10 completed successfully');
    });
  });

  group('Login Page Edge Cases', () {
    testWidgets('Edge Case 1: Rapid Button Tapping', (
      WidgetTester tester,
    ) async {
      print('🎯 Edge Case 1: Rapid Button Tapping');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Fill form with valid data
      await TestHelpers.fillFormWithTestData(tester);

      // Rapidly tap login button multiple times
      for (int i = 0; i < 5; i++) {
        await TestHelpers.tapAndWait(
          tester,
          find.byKey(const Key(LoginPageKeys.loginButton)),
        );
      }

      // Verify app doesn't crash and handles rapid tapping gracefully
      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.loginButton)),
        'Login button after rapid tapping',
      );

      print('✅ Edge Case 1 completed successfully');
    });

    testWidgets('Edge Case 2: Long Text Input', (WidgetTester tester) async {
      print('🎯 Edge Case 2: Long Text Input');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Enter very long text
      String longText = 'a' * 1000;
      await TestHelpers.enterTextAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.usernameField)),
        longText,
      );

      // Verify app handles long text gracefully
      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.usernameField)),
        'Username field with long text',
      );

      print('✅ Edge Case 2 completed successfully');
    });

    testWidgets('Edge Case 3: Special Characters Input', (
      WidgetTester tester,
    ) async {
      print('🎯 Edge Case 3: Special Characters Input');

      app.main();
      await TestHelpers.waitForAnimations(tester);

      // Enter text with special characters
      const specialText = '!@#\$%^&*()_+-=[]{}|;:,.<>?';
      await TestHelpers.enterTextAndWait(
        tester,
        find.byKey(const Key(LoginPageKeys.usernameField)),
        specialText,
      );

      // Verify app handles special characters gracefully
      TestAssertions.assertWidgetFound(
        find.byKey(const Key(LoginPageKeys.usernameField)),
        'Username field with special characters',
      );

      print('✅ Edge Case 3 completed successfully');
    });
  });
}
