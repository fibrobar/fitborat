import 'package:flutter/material.dart';

//save the new email and change the email of the user
//imput a new string for email and save it
//put the new email in the place of the  email variable

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Email'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                email = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}