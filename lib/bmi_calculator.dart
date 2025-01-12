import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({super.key});

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
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.deepPurple[800],
        centerTitle: true,
        elevation: 10,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.blueAccent],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildTextField(
                controller: _weightController,
                label: 'Weight (kg)',
                icon: Icons.monitor_weight,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: _heightController,
                label: 'Height (m)',
                icon: Icons.height,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _calculateBmi,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  shadowColor: Colors.deepPurple,
                ),
                child: const Text(
                  'Calculate',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              if (_bmi != null)
                _buildResultCard(),
              if (_bmiCategory == 'Invalid input')
                Text(
                  _bmiCategory,
                  style: const TextStyle(color: Colors.red, fontSize: 18),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.9),
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.deepPurple),
        labelStyle: const TextStyle(color: Colors.deepPurple),
      ),
      style: const TextStyle(fontSize: 18),
    );
  }

  Widget _buildResultCard() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      color: Colors.white.withOpacity(0.9),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'BMI: ${_bmi!.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            const SizedBox(height: 10),
            Text(
              'Category: $_bmiCategory',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }
}
