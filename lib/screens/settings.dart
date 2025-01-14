import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart';
import 'package:healthandwellness/screens/about.dart';
import 'package:healthandwellness/screens/helpsupport.dart';
import 'package:healthandwellness/screens/language.dart';
import 'package:healthandwellness/screens/notificationscreen.dart';
import 'package:healthandwellness/screens/privacypolicy.dart';
import 'package:healthandwellness/screens/profilescreen.dart';
import 'package:healthandwellness/screens/theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _settingsSectionTitle('Account'),
          _settingsOption(
            icon: Icons.person,
            title: 'Profile',
            subtitle: 'Manage your profile settings',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
          _settingsOption(
            icon: Icons.lock,
            title: 'Privacy',
            subtitle: 'Control your privacy settings',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PrivacyPolicyScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          _settingsSectionTitle('Notifications'),
          _settingsOption(
            icon: Icons.notifications,
            title: 'Notification Settings',
            subtitle: 'Manage notifications preferences',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          _settingsSectionTitle('App Settings'),
          _settingsOption(
            icon: Icons.color_lens,
            title: 'Theme',
            subtitle: 'Customize app appearance',
            onTap: () {
 Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ThemeScreen(),
      ),
    );            },
          ),
          _settingsOption(
            icon: Icons.language,
            title: 'Language',
            subtitle: 'Select your preferred language',
            onTap: () {
 Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LanguageScreen(),
      ),
    );            },
          ),
          const SizedBox(height: 24),
          _settingsSectionTitle('Support'),
          _settingsOption(
            icon: Icons.help,
            title: 'Help & Support',
            subtitle: 'Get help and support',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HelpSupportScreen(),
                ),
              );
            },
          ),
          _settingsOption(
            icon: Icons.info,
            title: 'About',
            subtitle: 'Learn more about the app',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutScreen(),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomScreen(), // Added BottomScreen here
    );
  }

  Widget _settingsSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF212121), // Dark Gray
        ),
      ),
    );
  }

  Widget _settingsOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.withOpacity(0.2),
          child: Icon(icon, color: Colors.blue),
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
          subtitle,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black26),
        onTap: onTap,
      ),
    );
  }
}
