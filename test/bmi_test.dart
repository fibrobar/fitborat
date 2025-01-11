import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proba/bmi_calculator.dart';

void main() {
  testWidgets('BMI Calculator test', (WidgetTester tester) async {
    // Build the BmiCalculatorScreen widget.
    await tester.pumpWidget(MaterialApp(home: BmiCalculatorScreen()));

    // Enter height and weight values.
    await tester.enterText(find.byType(TextField).at(0), '75');   // Weight in kg
    await tester.enterText(find.byType(TextField).at(1), '1.80'); // Height in meters

    // Tap the 'Calculate' button.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify the BMI result.
    expect(find.text('BMI: 23.15'), findsOneWidget);
    expect(find.text('Category: Normal weight'), findsOneWidget);
  });
}
