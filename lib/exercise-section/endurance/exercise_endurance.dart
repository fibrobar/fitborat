import 'package:flutter/material.dart';

class ExerciseEnduranceScreen extends StatelessWidget {
  const ExerciseEnduranceScreen({super.key});

  final List<Map<String, String>> exercises = const [
    {'label': 'Swimming', 'route': '/swim'},
    {'label': 'Running', 'route': '/run'},
    {'label': 'Cycling', 'route': '/cycling'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Endurance',
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
                "Pick Your Activity",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 5,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              ...exercises.map((exercise) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: _buildExerciseButton(
                    context: context,
                    label: exercise['label']!,
                    routeName: exercise['route']!,
                  ),
                );
              }).toList(),
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
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 8,
        shadowColor: Colors.black54,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _getIcon(label),
            color: _getColor(label),
            size: 28,
          ),
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

  IconData _getIcon(String label) {
    switch (label) {
      case 'Swimming':
        return Icons.pool;
      case 'Running':
        return Icons.directions_run;
      case 'Cycling':
        return Icons.directions_bike;
      default:
        return Icons.sports;
    }
  }

  Color _getColor(String label) {
    switch (label) {
      case 'Swimming':
        return Colors.blueAccent;
      case 'Running':
        return Colors.orangeAccent;
      case 'Cycling':
        return Colors.greenAccent;
      default:
        return Colors.teal;
    }
  }
}
