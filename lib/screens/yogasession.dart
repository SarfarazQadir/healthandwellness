import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class YogaScreen extends StatelessWidget {
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
          "Yoga Tracker",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Banner Image
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mindful.jpg'), // Ensure the image is added to your assets
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Yoga Session",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
          ),
          // Session Timer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Duration",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF757575), // Medium Gray
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "00:00:00",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4CAF50), // Green
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Yoga Poses:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Yoga Routine List with Scrollbar
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Scrollbar(
                thumbVisibility: true, // Always visible when scrolling
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      YogaPoseTile(pose: "Downward Dog", duration: "3 minutes"),
                      YogaPoseTile(pose: "Warrior II", duration: "4 minutes"),
                      YogaPoseTile(pose: "Child's Pose", duration: "2 minutes"),
                      YogaPoseTile(pose: "Mountain Pose", duration: "5 minutes"),
                      YogaPoseTile(pose: "Triangle Pose", duration: "3 minutes"),
                      YogaPoseTile(pose: "Seated Twist", duration: "4 minutes"),
                      YogaPoseTile(pose: "Cat-Cow Pose", duration: "3 minutes"),
                      YogaPoseTile(pose: "Cobra Pose", duration: "2 minutes"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Start yoga session logic here
        },
        backgroundColor: const Color(0xFF4CAF50), // Green
        child: const Icon(Icons.play_arrow),
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }
}

class YogaPoseTile extends StatelessWidget {
  final String pose;
  final String duration;

  const YogaPoseTile({
    super.key,
    required this.pose,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF4CAF50).withOpacity(0.2),
          child: const Icon(
            Icons.self_improvement,
            color: Color(0xFF4CAF50),
          ),
        ),
        title: Text(
          pose,
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
