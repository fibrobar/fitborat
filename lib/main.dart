import 'package:flutter/material.dart';
import 'package:proba/home_screen.dart';
import 'package:proba/exercise.dart';
import 'package:proba/my_data.dart';
import 'package:proba/bmi_calculator.dart';
import 'package:proba/healthy_food.dart';
//import flutter_svg package





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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black, fontSize: 18),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        ),
      ),
    home: Stack(
    children: [
    const Homescreen(),
    ],
    ),
      routes: {
        '/exercise': (context) => const ExerciseScreen(),
        '/my_data': (context) => const MyDataScreen(),
        '/bmi_calculator': (context) => const BmiCalculatorScreen(),
        //'/exercise/1': (context) => const Exercise1Screen(),
       // '/exercise/2': (context) => const Exercise2Screen(),
       // '/exercise/3': (context) => const Exercise3Screen(),
        '/healthy_food': (context) => const HealtyFoodScreen(),
        //'/normal_food': (context) => const NormalFoodScreen(),
       // '/vegetarian_food': (context) => const VegetarianFoodScreen(),
       // '/vegan_food': (context) => const VeganFoodScreen(),
      },
    );
  }
}


