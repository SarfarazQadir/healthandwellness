import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';

class NutritionLoggingScreen extends StatelessWidget {
  const NutritionLoggingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Light Gray
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Nutrition Logging',
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
              'Log Your Meals',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Keep track of your daily nutrition intake for a healthier lifestyle.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Recent Meals',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121), // Dark Gray
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _mealCard(
                    mealType: 'Breakfast',
                    details: 'Oatmeal, Blueberries, Almond Milk',
                    calories: '350 kcal',
                    color: const Color(0xFF4CAFCE), // Blue
                  ),
                  _mealCard(
                    mealType: 'Lunch',
                    details: 'Grilled Salmon, Quinoa, Veggies',
                    calories: '550 kcal',
                    color: const Color(0xFF8BC34A), // Green
                  ),
                  _mealCard(
                    mealType: 'Snack',
                    details: 'Protein Bar, Almonds',
                    calories: '250 kcal',
                    color: const Color(0xFFFFB74D), // Peach
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF4CAFCE), // Blue
        onPressed: () {
          // Navigate to Add Meal Screen
        },
        icon: const Icon(Icons.add),
        label: const Text('Add Meal'),
      ),
      bottomNavigationBar: BottomScreen(),
    );
  }

  Widget _mealCard({
    required String mealType,
    required String details,
    required String calories,
    required Color color,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(Icons.fastfood, color: color),
        ),
        title: Text(
          mealType,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF212121), // Dark Gray
          ),
        ),
        subtitle: Text(
          details,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
        trailing: Text(
          calories,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ),
    );
  }
}
