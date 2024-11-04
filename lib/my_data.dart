import 'package:flutter/material.dart';

//display the name and the email of the user
//make a buuton to change the email


class MyDataScreen extends StatelessWidget {
  const MyDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Name: John Doe'),
            Text('Email:jhone@gmail.com'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/change_email');
              },
              child: const Text('Change Email'),
            ),


          ],
        ),
      ),
    );
  }
}


