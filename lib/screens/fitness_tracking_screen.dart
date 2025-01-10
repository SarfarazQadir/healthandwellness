import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class FitnessTrackingScreen extends StatelessWidget {
  const FitnessTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Fitness Tracking',
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
              'Today\'s Progress',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ProgressCard(
                  title: 'Steps',
                  value: '8,560',
                  progress: 0.7,
                  color: Color(0xFF4CAFCE), // Blue
                ),
                ProgressCard(
                  title: 'Calories',
                  value: '450 kcal',
                  progress: 0.6,
                  color: Color(0xFF8BC34A), // Green
                ),
                ProgressCard(
                  title: 'Distance',
                  value: '6.8 km',
                  progress: 0.8,
                  color: Color(0xFFFFB74D), // Peach
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Activity History',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: const [
                  ActivityTile(
                    activity: 'Morning Walk',
                    duration: '45 min',
                    icon: Icons.directions_walk,
                    color: Color(0xFF4CAFCE), // Blue
                  ),
                  ActivityTile(
                    activity: 'Yoga Session',
                    duration: '30 min',
                    icon: Icons.self_improvement,
                    color: Color(0xFF8BC34A), // Green
                  ),
                  ActivityTile(
                    activity: 'Cycling',
                    duration: '20 min',
                    icon: Icons.pedal_bike,
                    color: Color(0xFFFFB74D), // Peach
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomScreen(),  
    );
  }
}

class ProgressCard extends StatelessWidget {
  final String title;
  final String value;
  final double progress;
  final Color color;

  const ProgressCard({
    super.key,
    required this.title,
    required this.value,
    required this.progress,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(
            value: progress,
            color: color,
            backgroundColor: color.withOpacity(0.2),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

class ActivityTile extends StatelessWidget {
  final String activity;
  final String duration;
  final IconData icon;
  final Color color;

  const ActivityTile({
    super.key,
    required this.activity,
    required this.duration,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        title: Text(
          activity,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF212121), // Dark Gray
          ),
        ),
        subtitle: Text(
          duration,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.black54),
      ),
    );
  }
}
