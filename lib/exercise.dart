import 'package:flutter/material.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercises'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exercise/1');
              },
              child: const Text('Exercise 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exercise/2');
              },
              child: const Text('Exercise 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/exercise/3');
              },
              child: const Text('Exercise 3'),
            ),
          ],
        ),
      ),
    );
  }
}