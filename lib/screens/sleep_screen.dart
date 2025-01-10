import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class SleepMonitoringScreen extends StatelessWidget {
  const SleepMonitoringScreen({super.key});

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
          'Sleep Monitoring',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.blue),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Track Your Sleep',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Monitor your sleep schedule to improve your well-being.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Last Night\'s Sleep',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 16),
            _sleepSummaryCard(),
            const SizedBox(height: 24),
            const Text(
              'Weekly Sleep Patterns',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: _weeklySleepChart(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF4CAFCE), // Blue
        onPressed: () {
          // Add Sleep Tracking Logic
        },
        icon: const Icon(Icons.alarm),
        label: const Text('Track Sleep'),
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }

  Widget _sleepSummaryCard() {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Total Sleep',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4CAFCE), // Blue
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '7 hrs 45 min',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121), // Dark Gray
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Sleep Quality',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8BC34A), // Green
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '85%',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121), // Dark Gray
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _weeklySleepChart() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: const Text(
          'Weekly Sleep Chart Goes Here',
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
