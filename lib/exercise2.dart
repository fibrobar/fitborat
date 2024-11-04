import 'package:flutter/material.dart';

//can you put here a link from youtube that shows how to do the exercise?

class Exercise2Screen extends StatelessWidget {
  const Exercise2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Exercise 2'),
          ],
        ),
      ),
    );
  }
}