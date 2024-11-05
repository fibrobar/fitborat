import 'package:flutter/material.dart';
import 'package:proba/home_screen.dart';
import 'package:proba/exercise.dart';
import 'package:proba/my_data.dart';
import 'package:proba/bmi_calculator.dart';
import 'package:proba/exercise1.dart';
import 'package:proba/exercise2.dart';
import 'package:proba/exercise3.dart';
import 'package:proba/healthy_food.dart';
import 'package:proba/normal_food.dart';
import 'package:proba/vegetarian_food.dart';
import 'package:proba/vegan_food.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Buddy',
      //set a picture as the background

      home: const Homescreen(),
      routes: {
        '/exercise': (context) => const ExerciseScreen(),
        '/my_data': (context) => const MyDataScreen(),
        '/bmi_calculator': (context) => const BmiCalculatorScreen(),
        '/healthy_food': (context) => const HealtyFoodScreen(),
      },
    );
  }
}