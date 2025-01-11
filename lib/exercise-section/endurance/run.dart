import 'package:flutter/material.dart';

class RunScreen extends StatelessWidget {
  const RunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Running',
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
                label: 'Tip 1',
                routeName: '/run1',
              ),
              const SizedBox(height: 20),
              _buildExerciseButton(
                context: context,
                label: 'Tip 2',
                routeName: '/run2',
              ),
              const SizedBox(height: 20),
              _buildExerciseButton(
                context: context,
                label: 'Tip 3',
                routeName: '/run3',
              ),
              const SizedBox(height: 20),
              _buildExerciseButton(
                context: context,
                label: 'Tip 4',
                routeName: '/run4',
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