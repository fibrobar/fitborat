import 'package:flutter/material.dart';

class MyDataScreen extends StatefulWidget {
  const MyDataScreen({Key? key}) : super(key: key);

  @override
  _MyDataScreenState createState() => _MyDataScreenState();
}

class _MyDataScreenState extends State<MyDataScreen> {
  String name = 'John Doe';
  String email = 'johndoe@example.com';

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
            Text('Name: $name'),
            Text('Email: $email'),
            ElevatedButton(
              onPressed: () async {
                // Navigate to ChangeEmailScreen and wait for the new email
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeEmailScreen(initialEmail: email),
                  ),
                );
                // If a new email is returned, update the email
                if (result != null) {
                  setState(() {
                    email = result;
                  });
                }
              },
              child: const Text('Change Email'),
            ),
            ElevatedButton(
              onPressed: () async {
                // Navigate to ChangeNameScreen and wait for the new name
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeNameScreen(initialName: name),
                  ),
                );
                // If a new name is returned, update the name
                if (result != null) {
                  setState(() {
                    name = result;
                  });
                }
              },
              child: const Text('Change Name'),
            ),
          ],
        ),
      ),
    );
  }
}
class ChangeEmailScreen extends StatelessWidget {
  final String initialEmail;
  const ChangeEmailScreen({Key? key, required this.initialEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = initialEmail;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Email'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Enter new email'),
              onChanged: (value) {
                email = value;
              },
              controller: TextEditingController(text: initialEmail),
            ),
            ElevatedButton(
              onPressed: () {
                // Return the new email to the previous screen
                Navigator.pop(context, email);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangeNameScreen extends StatelessWidget {
  final String initialName;
  const ChangeNameScreen({Key? key, required this.initialName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = initialName;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Enter new name'),
              onChanged: (value) {
                name = value;
              },
              controller: TextEditingController(text: initialName),
            ),
            ElevatedButton(
              onPressed: () {
                // Return the new name to the previous screen
                Navigator.pop(context, name);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
