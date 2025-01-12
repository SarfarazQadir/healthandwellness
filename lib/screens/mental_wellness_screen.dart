import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class MentalWellnessScreen extends StatelessWidget {
  const MentalWellnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mental Wellness',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Mind Matters',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Explore resources to improve your mental well-being. Take a moment for yourself today.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 24),
            _buildSectionHeader('Daily Affirmations'),
            _buildAffirmationCard(
              'assets/images/affirmation1.png',
              'You are stronger than you think.',
            ),
            _buildAffirmationCard(
              'assets/images/affirmation2.png',
              'Every day is a fresh start.',
            ),
            const SizedBox(height: 24),
            _buildSectionHeader('Guided Meditations'),
            _buildMeditationCard(
              context,
              'Stress Relief',
              '10 mins • Calm your mind and reduce stress.',
              Icons.self_improvement,
            ),
            _buildMeditationCard(
              context,
              'Sleep Better',
              '15 mins • Relax and prepare for a peaceful sleep.',
              Icons.nights_stay,
            ),
            _buildMeditationCard(
              context,
              'Focus Booster',
              '8 mins • Improve concentration and clarity.',
              Icons.center_focus_strong,
            ),
            const SizedBox(height: 24),
            _buildSectionHeader('Helpful Articles'),
            _buildArticleTile(
              context,
              '5 Tips to Manage Stress',
              'Learn practical strategies to reduce stress in your daily life.',
              'assets/images/article1.png',
            ),
            _buildArticleTile(
              context,
              'Benefits of Mindfulness',
              'Discover how mindfulness can improve mental health.',
              'assets/images/article2.png',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF212121),
      ),
    );
  }

  Widget _buildAffirmationCard(String imagePath, String text) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(imagePath, height: 150, width: double.infinity, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: Color(0xFF212121)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMeditationCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent.withOpacity(0.2),
          child: Icon(icon, color: Colors.blue),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.black54, fontSize: 14),
        ),
        trailing: const Icon(Icons.play_circle_fill, size: 28, color: Colors.blue),
        onTap: () {
          debugPrint('$title meditation started');
          // Add navigation or action here
        },
      ),
    );
  }

  Widget _buildArticleTile(
    BuildContext context,
    String title,
    String subtitle,
    String imagePath,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imagePath, width: 60, height: 60, fit: BoxFit.cover),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.black54, fontSize: 14),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black45),
        onTap: () {
          debugPrint('$title clicked');
          // Add navigation or action here
        },
      ),
    );
  }
}
