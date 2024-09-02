import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Sample Widget Test', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Text('Hello World'),
      ),
    ));

    // Find the text widget
    expect(find.text('Hello World'), findsOneWidget);
  });
}
