import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gym Buddy',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepPurple, Colors.purpleAccent],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildCustomButton(
                context,
                label: 'Exercises',
                icon: Icons.fitness_center,
                routeName: '/exercise',
              ),
              const SizedBox(height: 20),
              _buildCustomButton(
                context,
                label: 'Healthy Food',
                icon: Icons.fastfood,
                routeName: '/healthy_food',
              ),
              const SizedBox(height: 20),
              _buildCustomButton(
                context,
                label: 'My Data',
                icon: Icons.person,
                routeName: '/my_data',
              ),
              const SizedBox(height: 20),
              _buildCustomButton(
                context,
                label: 'BMI Calculator',
                icon: Icons.calculate,
                routeName: '/bmi_calculator',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomButton(BuildContext context,
      {required String label, required IconData icon, required String routeName}) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      icon: Icon(icon, size: 28, color: Colors.white),
      label: Text(
        label,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.purple[700], padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: Colors.black,
        elevation: 8,
      ),
    );
  }
}
