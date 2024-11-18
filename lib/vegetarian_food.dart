import 'package:flutter/material.dart';

class VegetarianFood extends StatelessWidget {
  const VegetarianFood({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> vegetarianFoods = [
      {'food': 'Paneer (100g)', 'price': '\$2.00', 'calories': '265'},
      {'food': 'Eggplant Parmesan', 'price': '\$4.00', 'calories': '300'},
      {'food': 'Vegetable Stir-Fry', 'price': '\$3.50', 'calories': '200'},
      {'food': 'Mushroom Risotto', 'price': '\$5.00', 'calories': '350'},
      {'food': 'Cheese Pizza (slice)', 'price': '\$2.50', 'calories': '272'},
      {'food': 'Grilled Cheese Sandwich', 'price': '\$2.00', 'calories': '300'},
      {'food': 'Greek Salad', 'price': '\$3.00', 'calories': '180'},
      {'food': 'Vegetarian Tacos', 'price': '\$3.50', 'calories': '250'},
      {'food': 'Falafel Wrap', 'price': '\$4.00', 'calories': '400'},
      {'food': 'Stuffed Bell Peppers', 'price': '\$3.75', 'calories': '200'},
      {'food': 'Vegetable Lasagna', 'price': '\$4.50', 'calories': '300'},
      {'food': 'Hummus & Pita Bread', 'price': '\$2.50', 'calories': '250'},
      {'food': 'Caprese Salad', 'price': '\$3.00', 'calories': '150'},
      {'food': 'Zucchini Noodles', 'price': '\$2.00', 'calories': '120'},
      {'food': 'Spinach & Feta Quiche', 'price': '\$3.25', 'calories': '350'},
      {'food': 'Vegetable Curry', 'price': '\$4.00', 'calories': '400'},
      {'food': 'Tofu Scramble', 'price': '\$3.00', 'calories': '150'},
      {'food': 'Vegetarian Chili', 'price': '\$3.50', 'calories': '230'},
      {'food': 'Egg Salad Sandwich', 'price': '\$2.75', 'calories': '250'},
      {'food': 'Cheese Quesadilla', 'price': '\$2.50', 'calories': '300'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetarian Food'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(color: Colors.teal, width: 1.5),
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
          },
          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.teal[100]),
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
            for (var food in vegetarianFoods)
              TableRow(
                decoration: BoxDecoration(
                  color: vegetarianFoods.indexOf(food) % 2 == 0
                      ? Colors.white
                      : Colors.teal[50],
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
    );
  }
}
// TODO Implement this library.