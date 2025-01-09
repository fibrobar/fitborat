import 'package:flutter/material.dart';

class NormalFood extends StatelessWidget {
  const NormalFood({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> NormalFoods = [
      {'food': 'Chicken Breast (100g)', 'price': '\$2.00', 'calories': '165'},
      {'food': 'Salmon (100g)', 'price': '\$5.00', 'calories': '206'},
      {'food': 'Egg (1 large)', 'price': '\$0.20', 'calories': '78'},
      {'food': 'Beef Steak (100g)', 'price': '\$4.50', 'calories': '250'},
      {'food': 'Pork Chop (100g)', 'price': '\$3.00', 'calories': '242'},
      {'food': 'Cheese (100g)', 'price': '\$2.50', 'calories': '402'},
      {'food': 'Milk (1 cup)', 'price': '\$1.00', 'calories': '150'},
      {'food': 'Butter (100g)', 'price': '\$1.75', 'calories': '717'},
      {'food': 'Yogurt (1 cup)', 'price': '\$1.50', 'calories': '150'},
      {'food': 'Ice Cream (1 scoop)', 'price': '\$2.00', 'calories': '200'},
      {'food': 'Bacon (2 slices)', 'price': '\$1.50', 'calories': '100'},
      {'food': 'Hot Dog', 'price': '\$3.00', 'calories': '150'},
      {'food': 'Pepperoni Pizza (slice)', 'price': '\$2.50', 'calories': '285'},
      {'food': 'Hamburger', 'price': '\$5.00', 'calories': '354'},
      {'food': 'French Fries (small)', 'price': '\$2.00', 'calories': '365'},
      {'food': 'Pasta (1 cup)', 'price': '\$1.50', 'calories': '220'},
      {'food': 'Sausage (1 link)', 'price': '\$1.25', 'calories': '180'},
      {'food': 'Shrimp (100g)', 'price': '\$4.00', 'calories': '99'},
      {'food': 'Sushi Roll', 'price': '\$6.00', 'calories': '200'},
      {'food': 'Pork Ribs (100g)', 'price': '\$4.50', 'calories': '294'},
      {'food': 'Lobster (100g)', 'price': '\$8.00', 'calories': '89'},
      {'food': 'Crab (100g)', 'price': '\$6.00', 'calories': '83'},
      {'food': 'Scallops (100g)', 'price': '\$7.00', 'calories': '69'},
      {'food': 'Clams (100g)', 'price': '\$5.00', 'calories': '142'},
      {'food': 'Mussels (100g)', 'price': '\$4.00', 'calories': '172'},
      {'food': 'Oysters (100g)', 'price': '\$9.00', 'calories': '68'},
      {'food': 'Tuna (100g)', 'price': '\$7.50', 'calories': '184'},
      {'food': 'Cod (100g)', 'price': '\$6.50', 'calories': '82'},
      {'food': 'Trout (100g)', 'price': '\$5.50', 'calories': '109'},
      {'food': 'Halibut (100g)', 'price': '\$8.50', 'calories': '140'},
      {'food': 'Crab Cakes (100g)', 'price': '\$6.50', 'calories': '305'},
      {'food': 'Fish and Chips', 'price': '\$10.00', 'calories': '800'},
      {'food': 'Fish Tacos', 'price': '\$8.50', 'calories': '450'},
      {'food': 'Fish Sandwich', 'price': '\$7.50', 'calories': '600'},
      {'food': 'Fish Burger', 'price': '\$9.00', 'calories': '700'},
      {'food': 'Fish Pie', 'price': '\$8.00', 'calories': '500'},
      {'food': 'Fish Soup', 'price': '\$6.50', 'calories': '350'},
      {'food': 'Fish Curry', 'price': '\$7.00', 'calories': '400'},
      {'food': 'Fish Stew', 'price': '\$8.50', 'calories': '550'},
      {'food': 'Fish Salad', 'price': '\$6.00', 'calories': '300'},
      {'food': 'Fish Kebabs', 'price': '\$7.50', 'calories': '450'},
      {'food': 'Fish Skewers', 'price': '\$6.50', 'calories': '350'},
      {'food': 'Fish Stir-fry', 'price': '\$7.00', 'calories': '400'},
      {'food': 'Fish Risotto', 'price': '\$8.50', 'calories': '550'},
      {'food': 'Fish Paella', 'price': '\$6.00', 'calories': '300'},
      {'food': 'Fish Sushi', 'price': '\$7.50', 'calories': '450'},
      {'food': 'Fish Tacos', 'price': '\$6.50', 'calories': '350'},
      {'food': 'Fish Nachos', 'price': '\$7.00', 'calories': '400'},
      {'food': 'Fish Pasta', 'price': '\$8.50', 'calories': '550'},
      {'food': 'Fish Pizza', 'price': '\$6.00', 'calories': '300'},
      {'food': 'Fish Burger', 'price': '\$7.50', 'calories': '450'},
      {'food': 'Fish Sandwich', 'price': '\$6.50', 'calories': '350'},
      {'food': 'Fish Soup', 'price': '\$7.00', 'calories': '400'},
      {'food': 'Fish Curry', 'price': '\$8.50', 'calories': '550'},
      {'food': 'Fish Stew', 'price': '\$6.00', 'calories': '300'},
      {'food': 'Fish Salad', 'price': '\$7.50', 'calories': '450'},
      {'food': 'Fish Kebabs', 'price': '\$6.50', 'calories': '350'},
      {'food': 'Fish Skewers', 'price': '\$7.00', 'calories': '400'},
      {'food': 'Fish Stir-fry', 'price': '\$8.50', 'calories': '550'},

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Normal Food'),
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
              for (var food in NormalFoods)
                TableRow(
                  decoration: BoxDecoration(
                    color: NormalFoods.indexOf(food) % 2 == 0
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
