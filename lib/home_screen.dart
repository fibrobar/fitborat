import 'package:flutter/material.dart';

import 'multicolorCard.dart';
//this will be the homescreen of the app
//make 3 buttons that will navigate to the 3 different screens
//one will navigate to exercise screen that will contain a list of exercises
//one will navigate to the healhty food screen that will contain a list of healthy food
//one will to my data screen that will contain the user's data
//the name of the app will be gym buddy
//the app will have a purple color scheme

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //set the tile in the middle of the app bar and make it bigger
        title: const Center(child: Text('Gym Buddy', style: TextStyle(fontSize: 60))),
      ),
      body: Container(
        //set the background on black with red
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.white],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: ()
              {
                Navigator.pushNamed(context, '/exercise');
              },
              child: const Text('Exercises'),
              ),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, '/healthy_food');

              },
              child: const Text('Healthy Food'),
              ),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, '/my_data');
              },
              child: const Text('My Data'),
              ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bmi_calculator');
            },
            child: const Text('BMI Calculator'),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
