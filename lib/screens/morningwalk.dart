import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class MorningWalkScreen extends StatelessWidget {
  const MorningWalkScreen({super.key});

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
          "Morning Walk Tracker",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Scrollbar(  // Adding Scrollbar to the entire body
        thumbVisibility: true,  // Make scrollbar thumb always visible
        child: SingleChildScrollView(  // Allow the entire body to scroll
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner Image
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/walk2.jpg'), // Ensure the image is added to your assets
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Morning Walk Session",
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
                        offset: const Offset(0, 2),
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
                        "00:45:00",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4CAFCE), // Blue
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
                  "Morning Walk Stats:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121), // Dark Gray
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Morning Walk Stats List with Scrollbar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: const [
                    StatCard(
                      title: "Distance",
                      value: "4.5 km",
                      color: Color(0xFF4CAFCE), // Blue
                    ),
                    SizedBox(height: 16),
                    StatCard(
                      title: "Steps",
                      value: "5,320",
                      color: Color(0xFF8BC34A), // Green
                    ),
                    SizedBox(height: 16),
                    StatCard(
                      title: "Calories Burned",
                      value: "250 kcal",
                      color: Color(0xFFFFB74D), // Peach
                    ),
                    SizedBox(height: 16),
                    StatCard(
                      title: "Duration",
                      value: "00:45:00",
                      color: Color(0xFF4CAF50), // Green
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Start Morning Walk session logic here
        },
        backgroundColor: const Color(0xFF4CAF50), // Green
        child: const Icon(Icons.directions_walk),
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const StatCard({
    Key? key,
    required this.title,
    required this.value,
    required this.color,
  }) : super(key: key);

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
          backgroundColor: color.withOpacity(0.2),
          child: Icon(
            Icons.directions_walk,
            color: color,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF212121), // Dark Gray
          ),
        ),
        subtitle: Text(
          value,
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
