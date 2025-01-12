import 'package:flutter/material.dart';

class ExerciseFatlossScreen extends StatelessWidget {
  const ExerciseFatlossScreen({super.key});

  final List<Map<String, String>> exercises = const [
    {'label': 'Jumping Jacks', 'route': '/jumpingjacks'},
    {'label': 'Box Jumps', 'route': '/boxjump'},
    {'label': 'Burpee', 'route': '/burpee'},
    {'label': 'Jumping Lunges', 'route': '/jumpinglunges'},
    {'label': 'Jumping Squat', 'route': '/jumpingsquat'},
    {'label': 'Mountain Climbers', 'route': '/mountainclimbers'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fat Loss',
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
                padding: const EdgeInsets.all(20),
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
      "Choose Your Fat Loss Exercise",
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
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                Colors.teal[500]!,
                Colors.teal[300]!,
              ],
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
              const SizedBox(width: 20),
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
      case 'Jumping Jacks':
        return Icons.fitness_center;
      case 'Box Jumps':
        return Icons.sports_volleyball;
      case 'Burpee':
        return Icons.sports_gymnastics;
      case 'Jumping Lunges':
        return Icons.directions_run;
      case 'Jumping Squat':
        return Icons.sports_martial_arts;
      case 'Mountain Climbers':
        return Icons.landscape;
      default:
        return Icons.sports;
    }
  }
}
