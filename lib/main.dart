import 'package:flutter/material.dart';
import 'package:proba/workout-section/endurance/endurance.dart';
import 'package:proba/exercise-section/endurance/cycle/ride1.dart';
import 'package:proba/exercise-section/endurance/cycle/ride2.dart';
import 'package:proba/exercise-section/endurance/cycle/ride3.dart';
import 'package:proba/exercise-section/endurance/cycle/ride4.dart';
import 'package:proba/exercise-section/endurance/cycling.dart';
import 'package:proba/exercise-section/endurance/run.dart';
import 'package:proba/exercise-section/endurance/run/run1.dart';
import 'package:proba/exercise-section/endurance/run/run2.dart';
import 'package:proba/exercise-section/endurance/run/run3.dart';
import 'package:proba/exercise-section/endurance/run/run4.dart';
import 'package:proba/exercise-section/endurance/swim.dart';
import 'package:proba/exercise-section/endurance/swim/backstroke.dart';
import 'package:proba/exercise-section/endurance/swim/breaststroke.dart';
import 'package:proba/exercise-section/endurance/swim/butterfly.dart';
import 'package:proba/exercise-section/endurance/swim/freestyle.dart';
import 'package:proba/exercise-section/endurance/exercise_endurance.dart';
import 'package:proba/exercise-section/fatloss/exercise_fatloss.dart';
import 'package:proba/exercise-section/musclebuilding/exercise_musclebuilding.dart';
import 'package:proba/workout-section/endurance/endurance1.dart';
import 'package:proba/workout-section/endurance/endurance2.dart';
import 'package:proba/workout-section/endurance/endurance3.dart';
import 'package:proba/workout-section/endurance/endurance4.dart';
import 'package:proba/workout-section/endurance/endurance5.dart';
import 'package:proba/workout-section/endurance/endurance6.dart';
import 'package:proba/workout-section/endurance/endurance7.dart';
import 'package:proba/workout-section/endurance/endurance8.dart';
import 'package:proba/workout-section/fatloss/fatloss.dart';
import 'package:proba/exercise-section/fatloss/boxjump.dart';
import 'package:proba/exercise-section/fatloss/burpee.dart';
import 'package:proba/exercise-section/fatloss/jumpingjacks.dart';
import 'package:proba/exercise-section/fatloss/jumpinglunges.dart';
import 'package:proba/exercise-section/fatloss/jumpingsquat.dart';
import 'package:proba/exercise-section/fatloss/mountainclimbers.dart';
import 'package:proba/home_screen.dart';
import 'package:proba/exercise-section/exercise.dart';
import 'package:proba/workout-section/fatloss/fatloss1.dart';
import 'package:proba/workout-section/fatloss/fatloss2.dart';
import 'package:proba/workout-section/fatloss/fatloss3.dart';
import 'package:proba/workout-section/fatloss/fatloss4.dart';
import 'package:proba/workout-section/fatloss/fatloss5.dart';
import 'package:proba/workout-section/fatloss/fatloss6.dart';
import 'package:proba/workout-section/fatloss/fatloss7.dart';
import 'package:proba/workout-section/fatloss/fatloss8.dart';
import 'package:proba/workout-section/musclebuilding/musclebuilding.dart';
import 'package:proba/exercise-section/musclebuilding/barbellrow.dart';
import 'package:proba/exercise-section/musclebuilding/benchpress.dart';
import 'package:proba/exercise-section/musclebuilding/curls.dart';
import 'package:proba/exercise-section/musclebuilding/deadlift.dart';
import 'package:proba/exercise-section/musclebuilding/dip.dart';
import 'package:proba/exercise-section/musclebuilding/extensions.dart';
import 'package:proba/exercise-section/musclebuilding/lateralraises.dart';
import 'package:proba/exercise-section/musclebuilding/pullup.dart';
import 'package:proba/exercise-section/musclebuilding/squat.dart';
import 'package:proba/my_data.dart';
import 'package:proba/bmi_calculator.dart';
import 'package:proba/nutrition-section/nutrition.dart';
import 'package:proba/nutrition-section/animalbasedfoods.dart';
import 'package:proba/nutrition-section/cheatmeals.dart';
import 'package:proba/nutrition-section/plantbasedfoods.dart';
import 'package:proba/logInScreen.dart';
import 'package:proba/workout-section/musclebuilding/musclebuilding1.dart';
import 'package:proba/workout-section/musclebuilding/musclebuilding2.dart';
import 'package:proba/workout-section/musclebuilding/musclebuilding3.dart';
import 'package:proba/workout-section/musclebuilding/musclebuilding4.dart';
import 'package:proba/workout-section/musclebuilding/musclebuilding5.dart';
import 'package:proba/workout-section/musclebuilding/musclebuilding6.dart';
import 'package:proba/workout-section/musclebuilding/musclebuilding7.dart';
import 'package:proba/workout-section/musclebuilding/musclebuilding8.dart';
import 'package:proba/workout-section/workout.dart';
import 'package:proba/workout-section/workout_endurance.dart';
import 'package:proba/workout-section/workout_fatloss.dart';
import 'package:proba/workout-section/workout_musclebuilding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitBarat',
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
        // Other necessary parts of app
        '/home': (context) => const Homescreen(),
        '/my_data': (context) => const MyDataScreen(),
        '/bmi_calculator': (context) => const BmiCalculatorScreen(),


        // Nutrition Section
        '/nutrition': (context) => const NutritionScreen(),
        '/cheatmeals': (context) => const Cheatmeals(),
        '/plantbasedfoods': (context) => const Plantbasedfoods(),
        '/animalbasedfoods': (context) => const Animalbasedfoods(),


        // Workouts Section
        // Workout Categorisation
        '/workout': (context) => const WorkoutScreen(),
        '/workout_endurance': (context) => const WorkoutEnduranceScreen(),
        '/workout_fatloss': (context) => const WorkoutFatlossScreen(),
        '/workout_musclebuilding': (context) => const WorkoutMusclebuildingScreen(),
        // Bodybuilding Workouts
        '/musclebuilding': (context) => const MuscleBuilding(),
        '/musclebuilding1': (context) => const MuscleBuilding1(),
        '/musclebuilding2': (context) => const MuscleBuilding2(),
        '/musclebuilding3': (context) => const MuscleBuilding3(),
        '/musclebuilding4': (context) => const MuscleBuilding4(),
        '/musclebuilding5': (context) => const MuscleBuilding5(),
        '/musclebuilding6': (context) => const MuscleBuilding6(),
        '/musclebuilding7': (context) => const MuscleBuilding7(),
        '/musclebuilding8': (context) => const MuscleBuilding8(),
        // Endurance Workouts
        '/endurance': (context) => const Endurance(),
        '/endurance1': (context) => const Endurance1(),
        '/endurance2': (context) => const Endurance2(),
        '/endurance3': (context) => const Endurance3(),
        '/endurance4': (context) => const Endurance4(),
        '/endurance5': (context) => const Endurance5(),
        '/endurance6': (context) => const Endurance6(),
        '/endurance7': (context) => const Endurance7(),
        '/endurance8': (context) => const Endurance8(),
        // Conditioning Workouts
        '/fatloss': (context) => const Fatloss(),
        '/fatloss1': (context) => const Fatloss1(),
        '/fatloss2': (context) => const Fatloss2(),
        '/fatloss3': (context) => const Fatloss3(),
        '/fatloss4': (context) => const Fatloss4(),
        '/fatloss5': (context) => const Fatloss5(),
        '/fatloss6': (context) => const Fatloss6(),
        '/fatloss7': (context) => const Fatloss7(),
        '/fatloss8': (context) => const Fatloss8(),
        //Exercise Section
        //Exercise Categorisation
        '/exercise': (context) => const ExerciseScreen(),
        '/exercise_endurance': (context) => const ExerciseEnduranceScreen(),
        '/exercise_fatloss': (context) => const ExerciseFatlossScreen(),
        '/exercise_musclebuilding': (context) => const ExerciseMusclebuildingScreen(),
        //Bodybuilding Exercises
        '/barbellrow': (context) => const BarbellrowScreen(),
        '/benchpress': (context) => const BenchpressScreen(),
        '/curls': (context) => const CurlsScreen(),
        '/deadlift': (context) => const DeadliftScreen(),
        '/dip': (context) => const DipScreen(),
        '/extensions': (context) => const ExtensionsScreen(),
        '/lateralraises': (context) => const LateralraisesScreen(),
        '/pullup': (context) => const PullupScreen(),
        '/squat': (context) => const SquatScreen(),
        //FatLoss Exercises
        '/boxjump': (context) => const BoxjumpScreen(),
        '/burpee': (context) => const BurpeeScreen(),
        '/jumpingjacks': (context) => const JumpingjacksScreen(),
        '/jumpinglunges': (context) => const JumpinglungesScreen(),
        '/jumpingsquat': (context) => const JumpingsquatScreen(),
        '/mountainclimbers': (context) => const MountainclimbersScreen(),
        //Endurance Categorisation
        '/run': (context) => const RunScreen(),
        '/cycling': (context) => const CyclingScreen(),
        '/swim': (context) => const SwimScreen(),
        //Running Tips
        '/run1': (context) => const Run1Screen(),
        '/run2': (context) => const Run2Screen(),
        '/run3': (context) => const Run3Screen(),
        '/run4': (context) => const Run4Screen(),
        //Cycling Tips
        '/ride1': (context) => const Ride1Screen(),
        '/ride2': (context) => const Ride2Screen(),
        '/ride3': (context) => const Ride3Screen(),
        '/ride4': (context) => const Ride4Screen(),
        //Swimming Exercises
        '/backstroke': (context) => const BackstrokeScreen(),
        '/breaststroke': (context) => const BreaststrokeScreen(),
        '/butterfly': (context) => const ButterflyScreen(),
        '/freestyle': (context) => const FreestyleScreen(),
      },
    );
  }
}

