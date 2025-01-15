  import 'package:flutter/material.dart';

  class ThemeScreen extends StatelessWidget {
    const ThemeScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Theme Settings',
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
                'Select a Theme',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212121),
                ),
              ),
              const SizedBox(height: 20),
              _themeOption(
                context: context,
                title: 'Light Theme',
                icon: Icons.wb_sunny,
                description: 'Bright and vibrant look for better visibility',
                onTap: () {
                  // Logic to apply Light Theme
                },
              ),
              const SizedBox(height: 16),
              _themeOption(
                context: context,
                title: 'Dark Theme',
                icon: Icons.nights_stay,
                description: 'Soft and comfortable for low-light environments',
                onTap: () {
                  // Logic to apply Dark Theme
                },
              ),
              const SizedBox(height: 16),
              _themeOption(
                context: context,
                title: 'System Default',
                icon: Icons.settings,
                description: 'Automatically adapt to system settings',
                onTap: () {
                  // Logic to apply System Default Theme
                },
              ),
            ],
          ),
        ),
      bottomNavigationBar: BottomAppBar(),
      );
    }

    Widget _themeOption({
      required BuildContext context,
      required String title,
      required IconData icon,
      required String description,
      required VoidCallback onTap,
    }) {
      return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: Icon(icon, color: Colors.blue),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF212121),
            ),
          ),
          subtitle: Text(
            description,
            style: const TextStyle(color: Colors.black54),
          ),
          trailing: const Icon(Icons.check_circle_outline, color: Colors.blue),
          onTap: onTap,
        ),
      );
    }
  }
