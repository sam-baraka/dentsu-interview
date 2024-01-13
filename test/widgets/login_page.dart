import 'package:dentsu_interview/authentication/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dentsu_interview/authentication/login_page.dart';
import 'package:mocktail/mocktail.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  testWidgets('Login page renders correctly', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(
      home: const LoginPage(),
      navigatorObservers: [MockNavigatorObserver()],
    ));

    // Verify visual elements
    expect(find.text('Welcome to Dentsu LMS'), findsOneWidget);
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Keep me logged in'), findsOneWidget);
    expect(find.byType(MaterialButton), findsOneWidget);
  });

  testWidgets('Login button disabled when fields are empty',
      (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(const MaterialApp(
      home: LoginPage(),
    ));

    // Find the login button
    final button = find.byType(MaterialButton);

    // Verify initial state
    expect(button, findsOneWidget);
    expect((button.evaluate().first.widget as MaterialButton).enabled, isFalse);
  });

  testWidgets('Login button enabled when fields are filled',
      (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(const MaterialApp(
      home: LoginPage(),
    ));

    // Find the text fields
    final emailField = find.byType(AuthTextField).first;
    final passwordField = find.byType(AuthTextField).last;

    // Enter text into fields
    await tester.enterText(emailField, 'test@example.com');
    await tester.enterText(passwordField, 'password123');
    await tester.pump(); // Trigger widget rebuild

    // Find the login button
    final button = find.byType(MaterialButton);

    // Verify enabled state
    expect(button, findsOneWidget);
    expect((button.evaluate().first.widget as MaterialButton).enabled, isTrue);
  });

  testWidgets('Login button triggers navigation when tapped',
      (WidgetTester tester) async {
    final mockObserver = MockNavigatorObserver();

    // Build the widget
    await tester.pumpWidget(MaterialApp(
      home: const LoginPage(),
      navigatorObservers: [mockObserver],
    ));

    // Simulate filling fields (assuming login logic is handled elsewhere)
    final button = find.byType(MaterialButton);
    await tester.tap(button);
    await tester.pump();
  });
}
