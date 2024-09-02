import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Sample Integration Test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {},
            child: Text('Tap me'),
          ),
        ),
      ),
    ));

    // Verify the button exists
    expect(find.text('Tap me'), findsOneWidget);

    // Tap the button and trigger a frame.
    await tester.tap(find.text('Tap me'));
    await tester.pump();

    // Verify the button was tapped.
    expect(find.text('Tap me'), findsOneWidget);
  });
}
