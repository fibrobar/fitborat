import 'package:flutter/material.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exercises',
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
              const Text(
                "Choose Your Goal",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 5,
                      color: Colors.black45,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              _buildExerciseButton(
                context: context,
                label: 'Endurance',
                routeName: '/exercise_endurance',
                icon: Icons.directions_run,
                color: Colors.greenAccent,
              ),
              const SizedBox(height: 20),
              _buildExerciseButton(
                context: context,
                label: 'Weight Loss',
                routeName: '/exercise_fatloss',
                icon: Icons.fitness_center,
                color: Colors.pinkAccent,
              ),
              const SizedBox(height: 20),
              _buildExerciseButton(
                context: context,
                label: 'Bodybuilding',
                routeName: '/exercise_musclebuilding',
                icon: Icons.sports_mma,
                color: Colors.orangeAccent,
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
    required IconData icon,
    required Color color,
  }) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 8,
        shadowColor: Colors.black54,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(width: 15),
          Text(
            label,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
