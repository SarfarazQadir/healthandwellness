import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildNotificationItem(
              context,
              'Workout Reminder',
              'Time for your daily workout! Let\'s keep moving.',
              Icons.fitness_center,
            ),
            _buildNotificationItem(
              context,
              'Hydration Alert',
              'Stay hydrated! Drink a glass of water.',
              Icons.local_drink,
            ),
            _buildNotificationItem(
              context,
              'Weekly Report',
              'Your weekly activity report is ready.',
              Icons.bar_chart,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }

  Widget _buildNotificationItem(BuildContext context, String title, String subtitle, IconData icon) {
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
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black45),
      ),
    );
  }
}
