import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/addmeal.dart';
import 'package:healthandwellness/screens/nutrition_screen.dart';
class Home1Screen extends StatelessWidget {
  const Home1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Light Gray
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Health & Wellness',
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
              'Welcome Back!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Track your meals, stay active, and maintain a healthy lifestyle.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                children: [
                  _homeCard(
                    icon: Icons.fastfood,
                    title: 'Nutrition Logging',
                    color: const Color(0xFF4CAFCE), // Blue
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NutritionLoggingScreen(),
                        ),
                      );
                    },
                  ),
                  _homeCard(
                    icon: Icons.add,
                    title: 'Add Meal',
                    color: const Color(0xFF8BC34A), // Green
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddMealScreen(),
                        ),
                      );
                    },
                  ),
                  _homeCard(
                    icon: Icons.insights,
                    title: 'Insights',
                    color: const Color(0xFFFFB74D), // Peach
                    onTap: () {
                      // Implement Insights Navigation
                    },
                  ),
                  _homeCard(
                    icon: Icons.settings,
                    title: 'Settings',
                    color: const Color(0xFF9C27B0), // Purple
                    onTap: () {
                      // Implement Settings Navigation
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _homeCard({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color.withOpacity(0.1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: color.withOpacity(0.2),
                radius: 30,
                child: Icon(icon, color: color, size: 32),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212121), // Dark Gray
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
