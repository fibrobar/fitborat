//enter the weight and height and get the BMI value
//calculate the BMI value using the formula: weight(kg)/height(m)^2
//display the BMI value
//display the BMI category

import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatelessWidget {
  const BmiCalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Weight (kg)',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Height (m)',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //calculate the BMI value
                //display the BMI value
                //display the BMI category
              },
              child: const Text('Calculate'),
            ),
          ],
        ),
      ),
    );
  }
}