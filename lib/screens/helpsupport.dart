import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

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
          'Help & Support',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'We’re here to help!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'If you have any questions or need assistance, feel free to contact us through the options below.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 32),
            _supportOption(
              context,
              icon: Icons.email,
              title: 'Email Support',
              description: 'Reach us via email for assistance.',
              onTap: () {
                // Add email functionality
                debugPrint('Email Support tapped');
              },
            ),
            const SizedBox(height: 16),
            _supportOption(
              context,
              icon: Icons.chat,
              title: 'Live Chat',
              description: 'Chat with our support team in real-time.',
              onTap: () {
                // Add live chat functionality
                debugPrint('Live Chat tapped');
              },
            ),
            const SizedBox(height: 16),
            _supportOption(
              context,
              icon: Icons.phone,
              title: 'Call Us',
              description: 'Speak to our support team directly.',
              onTap: () {
                // Add phone functionality
                debugPrint('Call Us tapped');
              },
            ),
            const Spacer(),
            const Text(
              'FAQs & Resources',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Visit our FAQ page to find answers to common questions or explore additional resources.',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add FAQ navigation
                debugPrint('FAQs tapped');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4CAFCE), // Blue
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Go to FAQs'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomScreen(), // Added BottomScreen here
    );
  }

  Widget _supportOption(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.withOpacity(0.2),
                child: Icon(icon, color: Colors.blue),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF212121), // Dark Gray
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
