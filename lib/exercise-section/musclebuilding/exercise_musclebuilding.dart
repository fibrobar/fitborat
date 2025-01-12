import 'package:flutter/material.dart';

class ExerciseMusclebuildingScreen extends StatelessWidget {
  const ExerciseMusclebuildingScreen({super.key});

  final List<Map<String, String>> exercises = const [
    {'label': 'Barbell Row', 'route': '/barbellrow'},
    {'label': 'Bench Press', 'route': '/benchpress'},
    {'label': 'Barbell Curl', 'route': '/curls'},
    {'label': 'Deadlift', 'route': '/deadlift'},
    {'label': 'Dip', 'route': '/dip'},
    {'label': 'Triceps Extension', 'route': '/extensions'},
    {'label': 'Lateral Raise', 'route': '/lateralraises'},
    {'label': 'Pull Up', 'route': '/pullup'},
    {'label': 'Squat', 'route': '/squat'},
  ];

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
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildTitle(),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: exercises.length,
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemBuilder: (context, index) {
                  return _buildExerciseCard(
                    context: context,
                    label: exercises[index]['label']!,
                    routeName: exercises[index]['route']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      "Choose Your Bodybuilding Exercise",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        shadows: [
          Shadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Colors.black38,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildExerciseCard({
    required BuildContext context,
    required String label,
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
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.teal[500]!, Colors.teal[300]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            children: [
              Icon(
                _getIcon(label),
                size: 40,
                color: Colors.white,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
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

  IconData _getIcon(String label) {
    switch (label) {
      case 'Barbell Row':
        return Icons.fitness_center;
      case 'Bench Press':
        return Icons.sports_gymnastics;
      case 'Barbell Curl':
        return Icons.sports_handball;
      case 'Deadlift':
        return Icons.sports_martial_arts;
      case 'Dip':
        return Icons.directions_run;
      case 'Triceps Extension':
        return Icons.sports_kabaddi;
      case 'Lateral Raise':
        return Icons.trending_up;
      case 'Pull Up':
        return Icons.sports;
      case 'Squat':
        return Icons.sports_baseball;
      default:
        return Icons.sports;
    }
  }
}
