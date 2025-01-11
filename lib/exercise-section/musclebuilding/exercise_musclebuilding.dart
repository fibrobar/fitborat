import 'package:flutter/material.dart';

class ExerciseMusclebuildingScreen extends StatelessWidget {
  const ExerciseMusclebuildingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bodybuilding',
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
                label: 'Barbell Row',
                routeName: '/barbellrow',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Bench Press',
                routeName: '/benchpress',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Barbell Curl',
                routeName: '/curls',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Deadlift',
                routeName: '/deadlift',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Dip',
                routeName: '/dip',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Triceps Extension',
                routeName: '/extensions',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Lateral Raise',
                routeName: '/lateralraises',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Pull Up',
                routeName: '/pullup',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Squat',
                routeName: '/squat',
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
