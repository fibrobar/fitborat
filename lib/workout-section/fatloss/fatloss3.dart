import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo; // Alias to avoid conflicts

class Fatloss3 extends StatefulWidget {
  const Fatloss3({Key? key}) : super(key: key);

  @override
  _Fatloss3State createState() => _Fatloss3State();
}

class _Fatloss3State extends State<Fatloss3> {
  List<Map<String, dynamic>> fatloss3Exercises = [];
  late mongo.Db db;

  @override
  void initState() {
    super.initState();
    fetchDataFromDatabase();
  }

  Future<void> fetchDataFromDatabase() async {
    const mongoUri =
        'mongodb://aaron369:mobileapp@fitborat-shard-00-00.4mjmy.mongodb.net:27017,fitborat-shard-00-01.4mjmy.mongodb.net:27017,fitborat-shard-00-02.4mjmy.mongodb.net:27017/fitborat?ssl=true&replicaSet=atlas-4mjmy-shard-0&authSource=admin&retryWrites=true&w=majority';
    const collectionName = 'fat_loss_3';

    try {
      db = mongo.Db(mongoUri); // Use alias for mongo_dart
      await db.open();
      final collection = db.collection(collectionName);

      final fetchedData = await collection.find().toList();
      setState(() {
        fatloss3Exercises = fetchedData.map((doc) => {
          'day': doc['day'] ?? 'Unknown',
          'exercise': doc['exercise'] ?? 'Unknown',
          'sets_reps': doc['sets&reps'] ?? 'Unknown',
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
        title: const Text('Routine 4'),
        backgroundColor: Colors.blue,
      ),
      body: fatloss3Exercises.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Table(
            border: TableBorder.all(color: Colors.blue, width: 1.5),
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(1),
              4: FlexColumnWidth(1),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.blue[100]),
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Day',
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
                      'Exercise',
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
                      'Sets and Reps',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              for (var exercise in fatloss3Exercises)
                TableRow(
                  decoration: BoxDecoration(
                    color: fatloss3Exercises.indexOf(exercise) % 2 == 0
                        ? Colors.white
                        : Colors.blue[50],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        exercise['day'],
                        style: const TextStyle(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        exercise['exercise'],
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        exercise['sets_reps'],
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

