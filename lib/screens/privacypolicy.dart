import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Color(0xFF4CAFCE)), // Blue icon color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212121), // Dark gray
                ),
              ),
              const SizedBox(height: 16),
              _buildSectionTitle('Data Collection'),
              const Text(
                'We collect data to improve your experience. This includes steps, workouts, and dietary habits. Your data is secure and confidential.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575), // Medium gray
                ),
              ),
              const SizedBox(height: 16),
              _buildSectionTitle('Data Usage'),
              const Text(
                'Your data is used to provide personalized insights and recommendations. We do not share your data with third parties without your consent.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575), // Medium gray
                ),
              ),
              const SizedBox(height: 16),
              _buildSectionTitle('Your Rights'),
              const Text(
                'You have the right to access, modify, and delete your data at any time. Contact us for assistance.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575), // Medium gray
                ),
              ),
              const SizedBox(height: 16),
              _buildSectionTitle('Contact Us'),
              const Text(
                'If you have any questions or concerns, reach out to us at privacy@healthtracker.com.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575), // Medium gray
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF4CAFCE), // Blue
        ),
      ),
    );
  }
}
