import 'package:flutter/material.dart';

class VegetarianFood extends StatelessWidget {
  const VegetarianFood({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> vegetariannFoods = [
      {'food': 'Apple', 'price': '\$1.00', 'calories': '95'},
      {'food': 'Banana', 'price': '\$0.50', 'calories': '105'},
      {'food': 'Orange', 'price': '\$0.75', 'calories': '62'},
      {'food': 'Grapes', 'price': '\$2.00', 'calories': '114'},
      {'food': 'Strawberries', 'price': '\$3.00', 'calories': '50'},
      {'food': 'Avocado', 'price': '\$1.50', 'calories': '160'},
      {'food': 'Broccoli', 'price': '\$2.50', 'calories': '55'},
      {'food': 'Carrot', 'price': '\$0.30', 'calories': '25'},
      {'food': 'Lentils (1 cup)', 'price': '\$1.00', 'calories': '230'},
      {'food': 'Almonds (100g)', 'price': '\$4.00', 'calories': '575'},
      {'food': 'Quinoa (1 cup)', 'price': '\$3.00', 'calories': '222'},
      {'food': 'Chia seeds (100g)', 'price': '\$2.50', 'calories': '486'},
      {'food': 'Soy milk (1 cup)', 'price': '\$1.50', 'calories': '80'},
      {'food': 'Tofu (100g)', 'price': '\$2.00', 'calories': '144'},
      {'food': 'Seitan (100g)', 'price': '\$3.00', 'calories': '370'},
      {'food': 'Tempeh (100g)', 'price': '\$2.50', 'calories': '195'},
      {'food': 'Vegan burger', 'price': '\$5.00', 'calories': '250'},
      {'food': 'Vegan pizza', 'price': '\$8.00', 'calories': '300'},
      {'food': 'Vegan ice cream', 'price': '\$4.50', 'calories': '200'},
      {'food': 'Vegan chocolate', 'price': '\$3.50', 'calories': '150'},
      {'food': 'Vegan cookies', 'price': '\$2.50', 'calories': '100'},
      {'food': 'Vegan cake', 'price': '\$6.00', 'calories': '350'},
      {'food': 'Vegan muffin', 'price': '\$3.00', 'calories': '180'},
      {'food': 'Vegan brownie', 'price': '\$4.00', 'calories': '220'},
      {'food': 'Vegan pancakes', 'price': '\$5.00', 'calories': '250'},
      {'food': 'Vegan waffles', 'price': '\$4.50', 'calories': '200'},
      {'food': 'Vegan donuts', 'price': '\$3.50', 'calories': '150'},
      {'food': 'Vegan croissant', 'price': '\$2.50', 'calories': '100'},
      {'food': 'Vegan bagel', 'price': '\$3.00', 'calories': '180'},
      {'food': 'Vegan sandwich', 'price': '\$4.00', 'calories': '220'},
      {'food': 'Vegan hot dog', 'price': '\$4.50', 'calories': '200'},
      {'food': 'Vegan burrito', 'price': '\$3.50', 'calories': '150'},
      {'food': 'Vegan taco', 'price': '\$2.50', 'calories': '100'},
      {'food': 'Vegan nachos', 'price': '\$3.00', 'calories': '180'},
      {'food': 'Vegan pasta', 'price': '\$5.00', 'calories': '250'},
      {'food': 'Vegan risotto', 'price': '\$4.50', 'calories': '200'},
      {'food': 'Vegan paella', 'price': '\$3.50', 'calories': '150'},
      {'food': 'Vegan sushi', 'price': '\$2.50', 'calories': '100'},
      {'food': 'Vegan curry', 'price': '\$3.00', 'calories': '180'},
      {'food': 'Vegan stir-fry', 'price': '\$4.00', 'calories': '400'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetarian Food'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Table(
            border: TableBorder.all(color: Colors.green, width: 1.5),
            columnWidths: const {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.green[100]),
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Food',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Price',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Calories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              for (var food in vegetariannFoods)
                TableRow(
                  decoration: BoxDecoration(
                    color: vegetariannFoods.indexOf(food) % 2 == 0
                        ? Colors.white
                        : Colors.green[50],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food['food'],
                        style: const TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food['price'],
                        style: const TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food['calories'],
                        style: const TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
