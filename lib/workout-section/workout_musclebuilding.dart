import 'package:flutter/material.dart';

class WorkoutMusclebuildingScreen extends StatelessWidget {
  const WorkoutMusclebuildingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bodybuilding Routines',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
        elevation: 10,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueGrey, Colors.grey],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildExerciseButton(
                context: context,
                label: 'Routine 1',
                routeName: '/musclebuilding',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Routine 2',
                routeName: '/musclebuilding1',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Routine 3',
                routeName: '/musclebuilding2',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Routine 4',
                routeName: '/musclebuilding3',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Routine 5',
                routeName: '/musclebuilding4',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Routine 6',
                routeName: '/musclebuilding5',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Routine 7',
                routeName: '/musclebuilding6',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Routine 8',
                routeName: '/musclebuilding7',
              ),
              const SizedBox(height: 10),
              _buildExerciseButton(
                context: context,
                label: 'Routine 9',
                routeName: '/musclebuilding8',
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
        backgroundColor: Colors.blueGrey[500],
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