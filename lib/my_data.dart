import 'package:flutter/material.dart';
import 'Sign_up_Screen.dart'; // Import the UserData class

class MyDataScreen extends StatelessWidget {
  const MyDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Data'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildInfoCard('Name', UserData.name ?? 'N/A', Icons.person),
            const SizedBox(height: 20),
            _buildInfoCard('Email', UserData.email ?? 'N/A', Icons.email),
            const SizedBox(height: 20),
            _buildInfoCard('Password', UserData.password ?? 'N/A', Icons.lock),
          ],
        ),
      ),
    );
  }

  // Helper widget to display data in a card
  Widget _buildInfoCard(String title, String data, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(
          '$title: $data',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
