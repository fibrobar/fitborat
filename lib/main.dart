import 'package:flutter/material.dart';
import 'package:proba/home_screen.dart';
import 'package:proba/exercise.dart';
import 'package:proba/my_data.dart';
import 'package:proba/bmi_calculator.dart';
import 'package:proba/healthy_food.dart';
import 'package:proba/vegan_food.dart';
import 'package:proba/normal_food.dart';
import 'package:proba/vegetarian_food.dart';
import 'package:proba/logInScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Buddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black, fontSize: 18),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        ),
      ),
      // Remove the stack widget and make the initial route the LogInScreen
      home: const LogInScreen(),
      routes: {
        // Named routes for each screen
        '/home': (context) => const Homescreen(),
        '/exercise': (context) => const ExerciseScreen(),
        '/my_data': (context) => const MyDataScreen(),
        '/bmi_calculator': (context) => const BmiCalculatorScreen(),
        '/healthy_food': (context) => const HealthyFoodScreen(),
        '/normal_food': (context) => const NormalFood(),
        '/vegetarian_food': (context) => const VegetarianFood(),
        '/vegan_food': (context) => const VeganFood(),
      },
    );
  }
}

