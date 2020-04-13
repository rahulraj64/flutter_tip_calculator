import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:tipapp/main.dart';

void main() {
  testWidgets('Tip Calculator works correctly', (WidgetTester tester) async {
    await tester.pumpWidget(TipApp());

    final billAmountFinder = find.byKey(Key('billAmount'));
    final tipPercentFinder = find.byKey(Key('tipPercentage'));
    final tipAmountFinder = find.byKey(Key('tipAmount'));
    final totalAmountFinder = find.byKey(Key('totalAmount'));

    expect(billAmountFinder, findsOneWidget);
    expect(tipPercentFinder, findsOneWidget);
    expect(tipAmountFinder, findsOneWidget);
    expect(totalAmountFinder, findsOneWidget);

    await tester.enterText(billAmountFinder, '100');
    await tester.enterText(tipPercentFinder, '10');
    await tester.pump();

    expect(find.text('TIP AMOUNT: 10.0'), findsOneWidget);
    expect(find.text('TOTAL AMOUNT: 110.0'), findsOneWidget);
  });
}
