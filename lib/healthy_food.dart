import 'package:flutter/material.dart';

class HealthyFoodScreen extends StatelessWidget {
  const HealthyFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Healthy Food',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[900],
        elevation: 5,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Colors.redAccent],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildCustomButton(
                context,
                label: 'Normal',
                icon: Icons.fastfood_outlined,
                routeName: '/normal_food',
                color: Colors.orange,
              ),
              const SizedBox(height: 20),
              _buildCustomButton(
                context,
                label: 'Vegetarian',
                icon: Icons.spa, // Changed to an available icon
                routeName: '/vegetarian_food',
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              _buildCustomButton(
                context,
                label: 'Vegan',
                icon: Icons.eco_outlined,
                routeName: '/vegan_food',
                color: Colors.lightGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomButton(BuildContext context,
      {required String label,
        required IconData icon,
        required String routeName,
        required Color color}) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      icon: Icon(icon, size: 28, color: Colors.white),
      label: Text(
        label,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color.withOpacity(0.9),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 10,
        shadowColor: Colors.black,
      ),
    );
  }
}
