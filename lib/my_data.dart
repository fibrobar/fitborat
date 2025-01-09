import 'package:flutter/material.dart';

// Global variables to hold the email and password
String email = '';
String password = '';

// Helper widget to display data in a card
Widget _buildInfoCard(String title, String data, IconData icon) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 30),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    elevation: 5,
    child: ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(
        '$title: $data',
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ),
  );
}

class MyDataScreen extends StatelessWidget {
  const MyDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use the global variables for email and password
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Data',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.deepPurple[800],
        centerTitle: true,
        elevation: 10,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.deepPurple, Colors.blueAccent],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildInfoCard('Email', email, Icons.email),
              const SizedBox(height: 20),
              _buildInfoCard('Password', password, Icons.lock),
            ],
          ),
        ),
      ),
    );
  }
}
