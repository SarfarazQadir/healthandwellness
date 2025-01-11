import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';
import 'package:healthandwellness/screens/help.dart';
import 'package:healthandwellness/screens/notificationscreen.dart';
import 'package:healthandwellness/screens/privacypolicy.dart';
import 'package:healthandwellness/screens/profilescreen.dart';
import 'package:healthandwellness/screens/settings.dart';

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

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
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
      body: Padding(
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
      MaterialPageRoute(builder: (context) => const ProfileScreen()),
    );
  }),
  _buildAnimatedMenuItem(context, Icons.settings, 'Settings', () {
    debugPrint('Settings Clicked');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingsScreen()),
    );
  }),
  _buildAnimatedMenuItem(context, Icons.notifications, 'Notifications', () {
    debugPrint('Notifications Clicked');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NotificationScreen()),
    );
  }),
  _buildAnimatedMenuItem(context, Icons.help, 'Help', () {
    debugPrint('Help Clicked');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HelpScreen()),
    );
  }),
  _buildAnimatedMenuItem(context, Icons.privacy_tip, 'Privacy Policy', () {
    debugPrint('Privacy Policy Clicked');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PrivacyPolicyScreen()),
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

  Widget _buildAnimatedMenuItem(BuildContext context, IconData icon, String label, VoidCallback onPressed) {
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
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}


