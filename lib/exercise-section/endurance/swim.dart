import 'package:flutter/material.dart';

class SwimScreen extends StatelessWidget {
  const SwimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Swimming',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[800],
        elevation: 10,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal, Colors.cyan],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildExerciseButton(
                context: context,
                label: 'Backstroke',
                routeName: '/backstroke',
              ),
              const SizedBox(height: 20),
              _buildExerciseButton(
                context: context,
                label: 'Breaststroke',
                routeName: '/breaststroke',
              ),
              const SizedBox(height: 20),
              _buildExerciseButton(
                context: context,
                label: 'Butterfly',
                routeName: '/butterfly',
              ),
              const SizedBox(height: 20),
              _buildExerciseButton(
                context: context,
                label: 'Freestyle',
                routeName: '/freestyle',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExerciseButton({
    required BuildContext context,
    required String label,
    required String routeName,
  }) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal[600],
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 5,
        shadowColor: Colors.black54,
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}