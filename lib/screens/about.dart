import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Light Gray
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Text(
          'About',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/logo.png'), // Replace with your app logo
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Health & Wellness App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212121), // Dark Gray
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Version 1.0.0',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Learn About This App',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The Health & Wellness app is your comprehensive companion for achieving a healthier lifestyle. Track your sleep, log your nutrition, and monitor your daily activities—all in one place. With user-friendly features and intuitive design, this app helps you stay on top of your wellness journey effortlessly.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Features',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '- Sleep monitoring to track your sleep quality.\n'
              '- Nutrition logging for managing your meals.\n'
              '- Activity tracking for better fitness management.\n'
              '- Customizable notifications and reminders.\n'
              '- Insights and tips to improve your overall wellness.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'We aim to empower individuals to lead healthier lives by providing them with the tools and knowledge they need to make informed decisions about their wellness.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'If you have any questions, feedback, or suggestions, feel free to reach out to us at support@healthandwellnessapp.com.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomScreen(), // Bottom navigation for consistency
    );
  }
}
