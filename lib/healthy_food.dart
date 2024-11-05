import 'package:flutter/material.dart';

class HealtyFoodScreen extends StatelessWidget {
  const HealtyFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthy Food'),
      ),
      body: Center(
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
    );
  }
}