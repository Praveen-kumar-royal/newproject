import '../lib/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('home page widget test', (WidgetTester tester) async {
    await tester.pumpWidget(HomePage());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'abc');
    expect(find.text('abc'), findsOneWidget);
    var button = find.text('Reverse');
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text('cba'), findsOneWidget);
  });
}
