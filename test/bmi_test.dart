import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proba/bmi_calculator.dart';

void main() {
  group('BMI Calculator Tests', () {
    testWidgets('Valid inputs display correct BMI and category', (WidgetTester tester) async {
      // Build the BmiCalculatorScreen widget.
      await tester.pumpWidget(MaterialApp(home: BmiCalculatorScreen()));

      // Enter height and weight values.
      await tester.enterText(find.byType(TextField).at(0), '75');   // Weight in kg
      await tester.enterText(find.byType(TextField).at(1), '1.80'); // Height in meters

      // Tap the 'Calculate' button.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Verify the BMI result and category.
      expect(find.text('BMI: 23.15'), findsOneWidget);
      expect(find.text('Category: Normal weight'), findsOneWidget);
    });

    testWidgets('Underweight category displays correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: BmiCalculatorScreen()));

      await tester.enterText(find.byType(TextField).at(0), '45'); // Weight in kg
      await tester.enterText(find.byType(TextField).at(1), '1.60'); // Height in meters

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(find.text('BMI: 17.58'), findsOneWidget);
      expect(find.text('Category: Underweight'), findsOneWidget);
    });

    testWidgets('Obesity category displays correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: BmiCalculatorScreen()));

      await tester.enterText(find.byType(TextField).at(0), '100'); // Weight in kg
      await tester.enterText(find.byType(TextField).at(1), '1.60'); // Height in meters

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(find.text('BMI: 39.06'), findsOneWidget);
      expect(find.text('Category: Obesity'), findsOneWidget);
    });

    testWidgets('Invalid input displays error message', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: BmiCalculatorScreen()));

      await tester.enterText(find.byType(TextField).at(0), 'abc'); // Invalid weight
      await tester.enterText(find.byType(TextField).at(1), '1.80'); // Valid height

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(find.text('Invalid input'), findsOneWidget);
    });

    testWidgets('Zero height displays error message', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: BmiCalculatorScreen()));

      await tester.enterText(find.byType(TextField).at(0), '70'); // Valid weight
      await tester.enterText(find.byType(TextField).at(1), '0');  // Invalid height

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(find.text('Invalid input'), findsOneWidget);
    });

    testWidgets('Clears previous result on new input', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: BmiCalculatorScreen()));

      // Enter first set of valid values.
      await tester.enterText(find.byType(TextField).at(0), '70');
      await tester.enterText(find.byType(TextField).at(1), '1.75');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Verify the first result.
      expect(find.text('BMI: 22.86'), findsOneWidget);
      expect(find.text('Category: Normal weight'), findsOneWidget);

      // Enter second set of values.
      await tester.enterText(find.byType(TextField).at(0), '90');
      await tester.enterText(find.byType(TextField).at(1), '1.80');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Verify the new result and clear old one.
      expect(find.text('BMI: 27.78'), findsOneWidget);
      expect(find.text('Category: Overweight'), findsOneWidget);
      expect(find.text('BMI: 22.86'), findsNothing);
    });
  });
}
