import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({Key? key}) : super(key: key);

  @override
  _BmiCalculatorScreenState createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  double? _bmi;
  String _bmiCategory = '';

  void _calculateBmi() {
    final double? weight = double.tryParse(_weightController.text);
    final double? height = double.tryParse(_heightController.text);

    if (weight != null && height != null && height > 0) {
      setState(() {
        _bmi = weight / (height * height);
        _bmiCategory = _getBmiCategory(_bmi!);
      });
    } else {
      setState(() {
        _bmi = null;
        _bmiCategory = 'Invalid input';
      });
    }
  }

  String _getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 24.9) {
      return 'Normal weight';
    } else if (bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Weight (kg)',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Height (m)',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateBmi,
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),
            if (_bmi != null)
              Column(
                children: [
                  Text(
                    'BMI: ${_bmi!.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Category: $_bmiCategory',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            if (_bmiCategory == 'Invalid input')
              Text(
                _bmiCategory,
                style: const TextStyle(color: Colors.red, fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
