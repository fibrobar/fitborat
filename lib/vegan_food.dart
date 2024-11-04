import 'package:flutter/material.dart';

class VeganFoodScreen extends StatelessWidget {
  const VeganFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegan Food'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    Text('Monday'),
                    Text('Tuesday'),
                    Text('Wednesday'),
                    Text('Thursday'),
                    Text('Friday'),

                  ],
                ),
                TableRow(
                  children: [
                    Text('2000 calories'),
                    Text('2100  calories'),
                    Text('2200 calories'),
                    Text('2300 calories'),
                    Text('2400 calories'),

                  ],
                ),
                TableRow(
                  children: [//this is the vegan food list
                    Text('Rice, Beans, Broccoli'),
                    Text('Salad, Tofu, Spinach'),
                    Text('Pasta, Lentils, Spinach'),
                    Text('Pizza, Tofu'),
                    Text('Chees balls, Fries'),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}