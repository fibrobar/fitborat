import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo; // Alias to avoid conflicts

class Cheatmeals extends StatefulWidget {
  const Cheatmeals({Key? key}) : super(key: key);

  @override
  _CheatmealsState createState() => _CheatmealsState();
}

class _CheatmealsState extends State<Cheatmeals> {
  List<Map<String, dynamic>> cheatMeals = [];
  late mongo.Db db;

  @override
  void initState() {
    super.initState();
    fetchDataFromDatabase();
  }

  Future<void> fetchDataFromDatabase() async {
    const mongoUri = 'mongodb://aaron369:mobileapp@fitborat-shard-00-00.4mjmy.mongodb.net:27017,fitborat-shard-00-01.4mjmy.mongodb.net:27017,fitborat-shard-00-02.4mjmy.mongodb.net:27017/fitborat?ssl=true&replicaSet=atlas-4mjmy-shard-0&authSource=admin&retryWrites=true&w=majority';
    const collectionName = 'cheatmeals';

    try {
      db = mongo.Db(mongoUri); // Use alias for mongo_dart
      await db.open();
      final collection = db.collection(collectionName);

      final fetchedData = await collection.find().toList();
      setState(() {
        cheatMeals = fetchedData.map((doc) => {
          'food': doc['food'] ?? 'Unknown',
          'protein_g': doc['protein_g'] ?? 'Unknown',
          'carbs_g': doc['carbs_g'] ?? 'Unknown',
          'fats_g': doc['fats_g'] ?? 'Unknown',
          'calories': doc['calories'] ?? 'Unknown',
        }).toList();
      });
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      await db.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cheat Meals'),
        backgroundColor: Colors.green,
      ),
      body: cheatMeals.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
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
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Protein (g)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Carbs (g)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Fats (g)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
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
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              for (var food in cheatMeals)
                TableRow(
                  decoration: BoxDecoration(
                    color: cheatMeals.indexOf(food) % 2 == 0
                        ? Colors.white
                        : Colors.green[50],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food['food'],
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food['protein_g'],
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food['carbs_g'],
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food['fats_g'],
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        food['calories'],
                        style: const TextStyle(fontSize: 12),
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
