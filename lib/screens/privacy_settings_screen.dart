import 'package:flutter/material.dart';

class PrivacySettingsScreen extends StatelessWidget {
  const PrivacySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Settings'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Enable Two-Factor Authentication'),
              value: false,
              onChanged: (bool value) {
                debugPrint('Two-Factor Authentication Toggled');
              },
            ),
            SwitchListTile(
              title: const Text('Allow Data Sharing'),
              value: true,
              onChanged: (bool value) {
                debugPrint('Data Sharing Toggled');
              },
            ),
          ],
        ),
      ),
    );
  }
}
