import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/painting.dart';
import 'package:healthandwellness/screens/about.dart';
import 'package:healthandwellness/screens/cycling.dart';
import 'package:healthandwellness/screens/forgot_password_screen.dart';
import 'package:healthandwellness/screens/morningwalk.dart';
import 'package:healthandwellness/screens/profilescreen.dart';
import 'package:healthandwellness/screens/settings.dart';
import 'package:healthandwellness/screens/yogasession.dart';
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
import 'package:flutter/material.dart';
import 'screens/fitness_tracking_screen.dart'; // Ensure this file exists and is correctly implemented

void main() {
  runApp(const HealthWellnessApp());
}
// new code 
class HealthWellnessApp extends StatelessWidget {
  const HealthWellnessApp({super.key} );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health & Wellness Tracker',
      theme: ThemeData(
        // Updated to use `ColorScheme` for better compatibility
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF4CAFCE), // Blue
          secondary: const Color(0xFF8BC34A), // Green
          background: const Color(0xFFF5F5F5), // Light Gray
        ),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF212121)), // headline1 updated
          titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF212121)), // headline6 updated
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black87), // bodyText1 updated
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black54), // bodyText2 updated
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Retained for scaffold background
       ),routes: 
       {
         "/": (context) => HomeScreen(),
         "/fitness_tracking": (context) => FitnessTrackingScreen(),
         "/nutrition_logging": (context) => NutritionLoggingScreen(),
          "/sleep_monitoring": (context) => SleepMonitoringScreen(),
          "/mental_wellness": (context) => MentalWellnessScreen(),
          "/profile": (context) => ProfileScreen(),
       },
     // home: const HomeScreen(), // Ensure this widget is implemented
    );
  }
}
