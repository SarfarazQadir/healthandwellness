import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

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
          'Language Settings',
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
              'Select a Language',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121),
              ),
            ),
            const SizedBox(height: 20),
            _languageOption(
              context: context,
              title: 'English',
              icon: Icons.language,
              description: 'Default app language',
              onTap: () {
                // Logic to apply English language
              },
            ),
            const SizedBox(height: 16),
            _languageOption(
              context: context,
              title: 'Español (Spanish)',
              icon: Icons.translate,
              description: 'Change app language to Spanish',
              onTap: () {
                // Logic to apply Spanish language
              },
            ),
            const SizedBox(height: 16),
            _languageOption(
              context: context,
              title: 'Français (French)',
              icon: Icons.language_outlined,
              description: 'Change app language to French',
              onTap: () {
                // Logic to apply French language
              },
            ),
            const SizedBox(height: 16),
            _languageOption(
              context: context,
              title: 'Deutsch (German)',
              icon: Icons.g_translate,
              description: 'Change app language to German',
              onTap: () {
                // Logic to apply German language
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }

  Widget _languageOption({
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
