import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  const BottomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF4CAFCE), // Blue
      unselectedItemColor: const Color(0xFF757575), // Gray
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.directions_run),
          label: 'Fitness',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fastfood),
          label: 'Nutrition',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bed),
          label: 'Sleep',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      onTap: (int index) {
        if (index == 0) {
          Navigator.pushReplacementNamed(context, "/");
        } else if (index == 1) {
          Navigator.pushReplacementNamed(context, "/fitness_tracking");
        } else if (index == 2) {
          Navigator.pushReplacementNamed(context, "/nutrition_logging");
        } else if (index == 3) {
          Navigator.pushReplacementNamed(context, "/sleep_monitoring");
        } else if (index == 4) {
          Navigator.pushReplacementNamed(context, "/profile");
        }
      },
    );
  }
}
