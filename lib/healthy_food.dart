import 'package:flutter/material.dart';
import 'package:proba/BaseLayout.dart';

class HealtyFoodScreen extends StatelessWidget {
  const HealtyFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthy Food'),
      ),
      body: Container(
    //set the background on black with red
    decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.black, Colors.red],
    ),
    ),
    child:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/normal_food');              },
              child: const Text('Normal'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/vegetarian_food');

              },
              child: const Text('Vegetarian'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/vegan_food');
              },
              child: const Text('Vegan'),
            ),
          ],
        ),
      ),
    ),
    );
  }
}