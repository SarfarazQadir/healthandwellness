import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter/painting.dart';
import 'screens/dashboard_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/fitness_tracking_screen.dart';
import 'screens/goal_screen.dart';
import 'screens/mental_wellness_screen.dart';
import 'screens/nutrition_screen.dart';
import 'screens/sleep_screen.dart';

// import 'package:flutter/material.dart';
// import 'screens/dashboard_screen.dart';
// import 'screens/fitness_tracking_screen.dart';
// import 'screens/nutrition_screen.dart';
// import 'screens/sleep_screen.dart';
// import 'screens/mental_wellness_screen.dart';
// import 'screens/goal_screen.dart';

void main() {
  runApp(HealthTrackerApp());
}

class HealthTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF4CAF50), // Soft Green
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF2196F3)), // Calm Blue
        scaffoldBackgroundColor: Color(0xFFF5F5F5), // Light Grey
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF212121)), // Dark Grey
        ),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // static const List<Widget> _pages = [
  //   DashboardScreen(),
  //   FitnessTrackingScreen(),
  //   NutritionScreen(),
  //   SleepScreen(),
  //   MentalWellnessScreen(),
  //   GoalScreen(),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health & Wellness Tracker"),
        backgroundColor: Color(0xFF2196F3),
      ),
   //   body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Fitness'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Nutrition'),
          BottomNavigationBarItem(icon: Icon(Icons.nightlight_round), label: 'Sleep'),
          BottomNavigationBarItem(icon: Icon(Icons.self_improvement), label: 'Mental Wellness'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Goals'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFF4CAF50),
      ),
    );
  }
}
