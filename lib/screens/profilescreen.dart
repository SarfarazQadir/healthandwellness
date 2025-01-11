import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/user_placeholder.png'), // Replace with an actual image
            ),
            const SizedBox(height: 16),
            const Text(
              'Name: John Doe',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Text(
              'Email: johndoe@example.com',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                debugPrint('Edit Profile Pressed');
              },
              child: const Text('Edit Profile'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
