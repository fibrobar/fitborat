import 'package:flutter/material.dart';
import 'package:fitguym/home_screen.dart';
import 'package:fitguym/exercise.dart';
import 'package:fitguym/exercise1.dart';
import 'package:fitguym/exercise2.dart';
import 'package:fitguym/exercise3.dart';
import 'package:fitguym/healty_food.dart';
import 'package:fitguym/normal_food.dart';
import 'package:fitguym/vegetarian_food.dart';
import 'package:fitguym/vegan_food.dart';
import 'package:fitguym/my_data.dart';
import 'package:fitguym/change_email.dart';
import 'package:fitguym/bmi_calculator.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Buddy',
      //set a picture as the background

      home: const Homescreen(),
      routes: {
        '/exercise': (context) => const ExerciseScreen(),
        '/exercise/1': (context) =>  Exercise1Screen(),
        '/exercise/2': (context) =>  Exercise2Screen(),
        '/exercise/3': (context) =>  Exercise3Screen(),
        '/healthy_food': (context) => const HealtyFoodScreen(),
        '/normal_food': (context) => const NormalFoodScreen(),
        '/vegetarian_food': (context) => const VegetarianFoodScreen(),
        '/vegan_food': (context) => const VeganFoodScreen(),
        '/my_data': (context) => const MyDataScreen(),
        //'/change_email': (context) => const ChangeEmailScreen(),
        '/bmi_calculator': (context) => const BmiCalculatorScreen(),


      },
    );
  }
}

