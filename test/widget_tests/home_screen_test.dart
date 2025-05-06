import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_example_app/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen has a title', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));
    expect(find.text('Flutter Demo App'), findsOneWidget);
  });
}
