import 'package:flutter/material.dart';

class VegetarianFoodScreen extends StatelessWidget {
  const VegetarianFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetarian Food'),
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
                  children: [
                    Text('Rice, Chicken, Broccoli'),
                    Text('Salmon, Popatos,Salat '),
                    Text('Pasta, Beef, Spinach'),
                    Text('Pizza, Chicken'),
                    Text('Burger, Fries'),
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