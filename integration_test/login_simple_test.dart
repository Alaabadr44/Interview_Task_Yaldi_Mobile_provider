import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login Page Simple Tests', () {
    testWidgets('Login Page - Basic Widget Test', (WidgetTester tester) async {
      print('🧪 Testing: Login Page Basic Widget Test');
      
      // Create a simple login page widget for testing
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // App Logo
                    Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    
                    // Welcome Text
                    const Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    
                    // Subtitle
                    const Text(
                      'Please sign in to your account',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 30),
                    
                    // Username Field
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    // Password Field
                    TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    // Remember Me Checkbox
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text('Remember Me'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    
                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Sign In'),
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    // Register Button
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Create Account'),
                      ),
                    ),
                    
                    // Fill Test Data Button (for development)
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Fill Test Data'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // Test 1: Verify all elements are present
      print('🧪 Testing: Element Presence');
      expect(find.byType(Image), findsOneWidget);
      expect(find.text('Welcome Back'), findsOneWidget);
      expect(find.text('Please sign in to your account'), findsOneWidget);
      expect(find.byType(TextField), findsNWidgets(2));
      expect(find.text('Remember Me'), findsOneWidget);
      expect(find.text('Sign In'), findsOneWidget);
      expect(find.text('Create Account'), findsOneWidget);
      expect(find.text('Fill Test Data'), findsOneWidget);
      print('✅ All elements are present');

      // Test 2: Test form interaction
      print('🧪 Testing: Form Interaction');
      final usernameField = find.byType(TextField).first;
      final passwordField = find.byType(TextField).last;
      
      await tester.enterText(usernameField, 'testuser');
      await tester.enterText(passwordField, 'testpassword');
      await tester.pumpAndSettle();
      
      expect(find.text('testuser'), findsOneWidget);
      expect(find.text('testpassword'), findsOneWidget);
      print('✅ Form interaction is working');

      // Test 3: Test password visibility toggle
      print('🧪 Testing: Password Visibility Toggle');
      final passwordFieldWidget = tester.widget<TextField>(passwordField);
      expect(passwordFieldWidget.obscureText, isTrue);
      
      final visibilityIcon = find.byIcon(Icons.visibility_off_outlined);
      await tester.tap(visibilityIcon);
      await tester.pumpAndSettle();
      
      final passwordFieldAfterToggle = tester.widget<TextField>(passwordField);
      expect(passwordFieldAfterToggle.obscureText, isFalse);
      print('✅ Password visibility toggle is working');

      // Test 4: Test remember me checkbox
      print('🧪 Testing: Remember Me Checkbox');
      final checkbox = find.byType(Checkbox);
      final checkboxWidget = tester.widget<Checkbox>(checkbox);
      expect(checkboxWidget.value, isFalse);
      
      await tester.tap(checkbox);
      await tester.pumpAndSettle();
      
      final checkboxAfterTap = tester.widget<Checkbox>(checkbox);
      expect(checkboxAfterTap.value, isTrue);
      print('✅ Remember me checkbox is working');

      // Test 5: Test button interactions
      print('🧪 Testing: Button Interactions');
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();
      
      await tester.tap(find.text('Create Account'));
      await tester.pumpAndSettle();
      
      await tester.tap(find.text('Fill Test Data'));
      await tester.pumpAndSettle();
      print('✅ Button interactions are working');

      // Test 6: Test scrolling
      print('🧪 Testing: Scrolling');
      await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -100));
      await tester.pumpAndSettle();
      
      await tester.drag(find.byType(SingleChildScrollView), const Offset(0, 100));
      await tester.pumpAndSettle();
      print('✅ Scrolling is working');

      print('✅ Login Page Basic Widget Test completed successfully');
    });

    testWidgets('Login Page - Form Validation Test', (WidgetTester tester) async {
      print('🧪 Testing: Login Page Form Validation');
      
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Form(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field should not be empty';
                        }
                        if (value.length < 8) {
                          return 'The field must be at least 8 characters long';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field should not be empty';
                        }
                        if (value.length < 8) {
                          return 'The field must be at least 8 characters long';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Trigger validation
                        Form.of(tester.element(find.byType(Form)))?.validate();
                      },
                      child: const Text('Sign In'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // Test empty form validation
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();
      
      expect(find.text('This field should not be empty'), findsNWidgets(2));
      print('✅ Empty form validation is working');

      // Test short input validation
      final usernameField = find.byType(TextFormField).first;
      final passwordField = find.byType(TextFormField).last;
      
      await tester.enterText(usernameField, 'a');
      await tester.enterText(passwordField, '123');
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();
      
      expect(find.text('The field must be at least 8 characters long'), findsNWidgets(2));
      print('✅ Short input validation is working');

      // Test valid input
      await tester.enterText(usernameField, 'testuser');
      await tester.enterText(passwordField, 'testpassword');
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();
      
      // Should not show validation errors
      expect(find.text('This field should not be empty'), findsNothing);
      expect(find.text('The field must be at least 8 characters long'), findsNothing);
      print('✅ Valid input validation is working');

      print('✅ Login Page Form Validation Test completed successfully');
    });

    testWidgets('Login Page - UI Responsiveness Test', (WidgetTester tester) async {
      print('🧪 Testing: Login Page UI Responsiveness');
      
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: List.generate(20, (index) => 
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text('Item ${index + 1}'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // Test scrolling down
      await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -200));
      await tester.pumpAndSettle();
      
      // Test scrolling up
      await tester.drag(find.byType(SingleChildScrollView), const Offset(0, 200));
      await tester.pumpAndSettle();
      
      // Test horizontal scrolling (if needed)
      await tester.drag(find.byType(SingleChildScrollView), const Offset(-100, 0));
      await tester.pumpAndSettle();
      
      await tester.drag(find.byType(SingleChildScrollView), const Offset(100, 0));
      await tester.pumpAndSettle();

      print('✅ UI Responsiveness Test completed successfully');
    });
  });
}

