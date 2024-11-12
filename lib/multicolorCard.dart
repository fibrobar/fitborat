import 'package:flutter/material.dart';

class MulticolorCard extends StatelessWidget {
  final String text;
  final List<Color> gradientColors;

  const MulticolorCard({
    Key? key,
    required this.text,
    this.gradientColors = const [Colors.blue, Colors.purple], required Null Function() onPressed, required Text child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
