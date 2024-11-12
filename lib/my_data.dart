import 'package:flutter/material.dart';

class MyDataScreen extends StatefulWidget {
  const MyDataScreen({super.key});

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
      //make the background color of the body multiple colors





      body:Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.black, Colors.white],
        ),
        ),
        child:
      Center(
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
                if (result != null && result is String) {
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
                if (result != null && result is String) {
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
      ),
    );
  }
}

class ChangeEmailScreen extends StatefulWidget {
  final String initialEmail;
  const ChangeEmailScreen({super.key, required this.initialEmail});

  @override
  _ChangeEmailScreenState createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    // Initialize the TextEditingController with the initial email
    _emailController = TextEditingController(text: widget.initialEmail);
  }

  @override
  void dispose() {
    // Don't forget to dispose the controller when the widget is disposed
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Email'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController, // Use the controller here
              decoration: const InputDecoration(labelText: 'Enter new email'),
            ),
            ElevatedButton(
              onPressed: () {
                // Return the new email to the previous screen
                Navigator.pop(context, _emailController.text);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangeNameScreen extends StatefulWidget {
  final String initialName;
  const ChangeNameScreen({super.key, required this.initialName});

  @override
  _ChangeNameScreenState createState() => _ChangeNameScreenState();
}

class _ChangeNameScreenState extends State<ChangeNameScreen> {
  late TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    // Initialize the TextEditingController with the initial name
    _nameController = TextEditingController(text: widget.initialName);
  }

  @override
  void dispose() {
    // Don't forget to dispose the controller when the widget is disposed
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _nameController, // Use the controller here
              decoration: const InputDecoration(labelText: 'Enter new name'),
            ),
            ElevatedButton(
              onPressed: () {
                // Return the new name to the previous screen
                Navigator.pop(context, _nameController.text);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
