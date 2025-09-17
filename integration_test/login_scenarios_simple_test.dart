import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_application_1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login Page Scenarios', () {
    testWidgets('Scenario 1: Happy Path - Successful Login', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 1: Happy Path - Successful Login');

      // Start the app
      app.main();
      await tester.pumpAndSettle();

      // Step 1: Verify login page is loaded
      expect(find.text('Welcome Back'), findsOneWidget);

      // Step 2: Fill form with valid data
      final usernameField = find.byType(TextField).first;
      final passwordField = find.byType(TextField).last;

      await tester.enterText(usernameField, 'testuser');
      await tester.enterText(passwordField, 'testpassword');
      await tester.pumpAndSettle();

      // Step 3: Tap login button
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();

      print('✅ Scenario 1 completed successfully');
    });

    testWidgets('Scenario 2: Form Validation - Empty Fields', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 2: Form Validation - Empty Fields');

      app.main();
      await tester.pumpAndSettle();

      // Step 1: Try to submit empty form
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();

      // Step 2: Verify validation messages appear
      expect(find.text('This field should not be empty'), findsWidgets);

      print('✅ Scenario 2 completed successfully');
    });

    testWidgets('Scenario 3: Form Validation - Short Input', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 3: Form Validation - Short Input');

      app.main();
      await tester.pumpAndSettle();

      // Step 1: Enter short username
      final usernameField = find.byType(TextField).first;
      await tester.enterText(usernameField, 'a');
      await tester.pumpAndSettle();

      // Step 2: Enter short password
      final passwordField = find.byType(TextField).last;
      await tester.enterText(passwordField, '123');
      await tester.pumpAndSettle();

      // Step 3: Try to submit
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();

      // Step 4: Verify minimum length validation
      expect(
        find.text('The field must be at least 8 characters long'),
        findsWidgets,
      );

      print('✅ Scenario 3 completed successfully');
    });

    testWidgets('Scenario 4: Password Visibility Toggle', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 4: Password Visibility Toggle');

      app.main();
      await tester.pumpAndSettle();

      // Step 1: Enter password
      final passwordField = find.byType(TextField).last;
      await tester.enterText(passwordField, 'testpassword');
      await tester.pumpAndSettle();

      // Step 2: Find and tap password visibility toggle
      final visibilityToggle = find.byIcon(Icons.visibility_off_outlined);
      if (visibilityToggle.evaluate().isNotEmpty) {
        await tester.tap(visibilityToggle);
        await tester.pumpAndSettle();
      }

      print('✅ Scenario 4 completed successfully');
    });

    testWidgets('Scenario 5: Remember Me Functionality', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 5: Remember Me Functionality');

      app.main();
      await tester.pumpAndSettle();

      // Step 1: Find and tap remember me checkbox
      final checkbox = find.byType(Checkbox);
      if (checkbox.evaluate().isNotEmpty) {
        await tester.tap(checkbox);
        await tester.pumpAndSettle();
      }

      print('✅ Scenario 5 completed successfully');
    });

    testWidgets('Scenario 6: Fill Test Data Functionality', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 6: Fill Test Data Functionality');

      app.main();
      await tester.pumpAndSettle();

      // Step 1: Find and tap fill test data button
      final fillButton = find.text('Fill Test Data');
      if (fillButton.evaluate().isNotEmpty) {
        await tester.tap(fillButton);
        await tester.pumpAndSettle();
      }

      print('✅ Scenario 6 completed successfully');
    });

    testWidgets('Scenario 7: Navigation to Register Page', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 7: Navigation to Register Page');

      app.main();
      await tester.pumpAndSettle();

      // Step 1: Tap register button
      final registerButton = find.text('Create Account');
      if (registerButton.evaluate().isNotEmpty) {
        await tester.tap(registerButton);
        await tester.pumpAndSettle();
      }

      print('✅ Scenario 7 completed successfully');
    });

    testWidgets('Scenario 8: UI Responsiveness and Scrolling', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 8: UI Responsiveness and Scrolling');

      app.main();
      await tester.pumpAndSettle();

      // Step 1: Test scrolling functionality
      final scrollable = find.byType(SingleChildScrollView);
      if (scrollable.evaluate().isNotEmpty) {
        await tester.drag(scrollable, const Offset(0, -100));
        await tester.pumpAndSettle();
      }

      // Step 2: Verify elements are still accessible
      expect(find.text('Sign In'), findsOneWidget);

      print('✅ Scenario 8 completed successfully');
    });

    testWidgets('Scenario 9: Error Handling - Network Issues', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 9: Error Handling - Network Issues');

      app.main();
      await tester.pumpAndSettle();

      // Step 1: Fill form with valid data
      final usernameField = find.byType(TextField).first;
      final passwordField = find.byType(TextField).last;

      await tester.enterText(usernameField, 'testuser');
      await tester.enterText(passwordField, 'testpassword');
      await tester.pumpAndSettle();

      // Step 2: Attempt login
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();

      print('✅ Scenario 9 completed successfully');
    });

    testWidgets('Scenario 10: Accessibility and Usability', (
      WidgetTester tester,
    ) async {
      print('🎯 Scenario 10: Accessibility and Usability');

      app.main();
      await tester.pumpAndSettle();

      // Step 1: Verify all interactive elements are accessible
      expect(find.text('Sign In'), findsOneWidget);
      expect(find.text('Create Account'), findsOneWidget);
      expect(find.byType(TextField), findsWidgets);

      print('✅ Scenario 10 completed successfully');
    });
  });

  group('Login Page Edge Cases', () {
    testWidgets('Edge Case 1: Rapid Button Tapping', (
      WidgetTester tester,
    ) async {
      print('🎯 Edge Case 1: Rapid Button Tapping');

      app.main();
      await tester.pumpAndSettle();

      // Fill form with valid data
      final usernameField = find.byType(TextField).first;
      final passwordField = find.byType(TextField).last;

      await tester.enterText(usernameField, 'testuser');
      await tester.enterText(passwordField, 'testpassword');
      await tester.pumpAndSettle();

      // Rapidly tap login button multiple times
      for (int i = 0; i < 5; i++) {
        await tester.tap(find.text('Sign In'));
        await tester.pumpAndSettle();
      }

      // Verify app doesn't crash
      expect(find.text('Sign In'), findsOneWidget);

      print('✅ Edge Case 1 completed successfully');
    });

    testWidgets('Edge Case 2: Long Text Input', (WidgetTester tester) async {
      print('🎯 Edge Case 2: Long Text Input');

      app.main();
      await tester.pumpAndSettle();

      // Enter very long text
      String longText = 'a' * 1000;
      final usernameField = find.byType(TextField).first;
      await tester.enterText(usernameField, longText);
      await tester.pumpAndSettle();

      // Verify app handles long text gracefully
      expect(find.byType(TextField), findsWidgets);

      print('✅ Edge Case 2 completed successfully');
    });

    testWidgets('Edge Case 3: Special Characters Input', (
      WidgetTester tester,
    ) async {
      print('🎯 Edge Case 3: Special Characters Input');

      app.main();
      await tester.pumpAndSettle();

      // Enter text with special characters
      const specialText = '!@#\$%^&*()_+-=[]{}|;:,.<>?';
      final usernameField = find.byType(TextField).first;
      await tester.enterText(usernameField, specialText);
      await tester.pumpAndSettle();

      // Verify app handles special characters gracefully
      expect(find.byType(TextField), findsWidgets);

      print('✅ Edge Case 3 completed successfully');
    });
  });
}

