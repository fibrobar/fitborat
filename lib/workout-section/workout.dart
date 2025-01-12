import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Workouts',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[700],
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
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildTitle(),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildWorkoutCard(
                    context: context,
                    label: 'Build Muscle',
                    icon: Icons.fitness_center,
                    routeName: '/workout_musclebuilding',
                  ),
                  const SizedBox(height: 20),
                  _buildWorkoutCard(
                    context: context,
                    label: 'Lose Fat',
                    icon: Icons.local_fire_department,
                    routeName: '/workout_fatloss',
                  ),
                  const SizedBox(height: 20),
                  _buildWorkoutCard(
                    context: context,
                    label: 'Build Endurance',
                    icon: Icons.directions_run,
                    routeName: '/workout_endurance',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      "Choose Your Workout Plan",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        shadows: [
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Colors.black45,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildWorkoutCard({
    required BuildContext context,
    required String label,
    required IconData icon,
    required String routeName,
  }) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, routeName),
      child: Card(
        elevation: 8,
        shadowColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.blueGrey[400]!, Colors.blueGrey[200]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
