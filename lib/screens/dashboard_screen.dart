import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/addmeal.dart';
import 'package:healthandwellness/screens/bottombar.dart';
import 'package:healthandwellness/screens/fitness_tracking_screen.dart';
import 'package:healthandwellness/screens/help.dart';
import 'package:healthandwellness/screens/mental_wellness_screen.dart';
import 'package:healthandwellness/screens/notificationscreen.dart';
import 'package:healthandwellness/screens/nutrition_screen.dart';
import 'package:healthandwellness/screens/privacypolicy.dart';
import 'package:healthandwellness/screens/profilescreen.dart';
import 'package:healthandwellness/screens/settings.dart';
import 'package:healthandwellness/screens/sleep_screen.dart';

class HealthTrackerApp extends StatelessWidget {
  const HealthTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool isMenuExpanded = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleMenu() {
    setState(() {
      isMenuExpanded = !isMenuExpanded;
      if (isMenuExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Health Tracker',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.blue),
            onPressed: toggleMenu,
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap the body with SingleChildScrollView for full screen scrolling
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Back, User!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                StatCard(
                  title: 'Steps',
                  value: '12,345',
                  color: Color(0xFF4CAFCE),
                  icon: Icons.directions_walk,
                ),
                StatCard(
                  title: 'Calories',
                  value: '890 kcal',
                  color: Color(0xFF8BC34A),
                  icon: Icons.local_fire_department,
                ),
                StatCard(
                  title: 'Workout',
                  value: '45 min',
                  color: Color(0xFFFFB74D),
                  icon: Icons.fitness_center,
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Quick Actions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HoverButton(
                  label: 'Start Workout',
                  color: Color(0xFF4CAFCE),
                  icon: Icons.play_arrow,
                ),
                HoverButton(
                  label: 'Log Meal',
                  color: Color(0xFFFFB74D),
                  icon: Icons.fastfood,
                ),
              ],
            ),
            const SizedBox(height: 24),
            // This is the section where we add the cards
            GridView.builder(
              shrinkWrap: true, // Allow GridView to take only necessary space
              physics:
                  const NeverScrollableScrollPhysics(), // Disable scrolling of GridView
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 6, // Number of cards
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return _homeCard(
                      icon: Icons.fastfood,
                      title: 'Nutrition Logging',
                      color: const Color(0xFF4CAFCE), // Blue
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const NutritionLoggingScreen(),
                          ),
                        );
                      },
                    );
                  case 1:
                    return _homeCard(
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
                    );
                  case 2:
                    return _homeCard(
                      icon: Icons.psychology,
                      title: 'Mental Wellness',
                      color: const Color(0xFF9C27B0), // Purple
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MentalWellnessScreen(),
                          ),
                        );
                      },
                    );
                  case 3:
                    return _homeCard(
                      icon: Icons.bed,
                      title: 'Sleep Monitoring',
                      color: const Color(0xFF3F51B5), // Indigo
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SleepMonitoringScreen(),
                          ),
                        );
                      },
                    );
                  case 4:
                    return _homeCard(
                      icon: Icons.fitness_center,
                      title: 'Fitness Tracking',
                      color: const Color(0xFFFF5722), // Deep Orange
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FitnessTrackingScreen(),
                          ),
                        );
                      },
                    );
                  case 5:
                    return _homeCard(
                      icon: Icons.insights,
                      title: 'Insights',
                      color: const Color(0xFFFFB74D), // Peach
                      onTap: () {
                        // Implement Insights Navigation
                      },
                    );
                  default:
                    return Container(); // Fallback
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomScreen(),
      floatingActionButton: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        height: isMenuExpanded ? 300 : 60,
        width: isMenuExpanded ? 60 : 60,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            if (isMenuExpanded)
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildAnimatedMenuItem(context, Icons.person, 'Profile', () {
                    debugPrint('Profile Clicked');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()),
                    );
                  }),
                  _buildAnimatedMenuItem(context, Icons.settings, 'Settings',
                      () {
                    debugPrint('Settings Clicked');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsScreen()),
                    );
                  }),
                  _buildAnimatedMenuItem(
                      context, Icons.notifications, 'Notifications', () {
                    debugPrint('Notifications Clicked');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()),
                    );
                  }),
                  _buildAnimatedMenuItem(context, Icons.help, 'Help', () {
                    debugPrint('Help Clicked');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HelpScreen()),
                    );
                  }),
                  _buildAnimatedMenuItem(
                      context, Icons.privacy_tip, 'Privacy Policy', () {
                    debugPrint('Privacy Policy Clicked');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrivacyPolicyScreen()),
                    );
                  }),
                  const SizedBox(height: 10),
                ],
              ),
            FloatingActionButton(
              onPressed: toggleMenu,
              child: Icon(isMenuExpanded ? Icons.close : Icons.menu),
              backgroundColor: isMenuExpanded ? Colors.red : Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedMenuItem(BuildContext context, IconData icon,
      String label, VoidCallback onPressed) {
    return ScaleTransition(
      scale: CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: FloatingActionButton(
          onPressed: onPressed,
          mini: true,
          backgroundColor: const Color(0xFF4CAFCE),
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final IconData icon;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    required this.icon,
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
          Icon(icon, color: color, size: 32),
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

class HoverButton extends StatefulWidget {
  final String label;
  final Color color;
  final IconData icon;

  const HoverButton({
    super.key,
    required this.label,
    required this.color,
    required this.icon,
  });

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: isHovered ? widget.color.withOpacity(0.9) : widget.color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: widget.color.withOpacity(0.4),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(widget.icon, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              widget.label,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _homeCard({
  required IconData icon,
  required String title,
  required Color color,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: MouseRegion(
      onEnter: (_) {
        // Handle Hover Effect
      },
      onExit: (_) {
        // Handle Hover Effect
      },
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
    ),
  );
}
