import 'package:flutter/material.dart';
import 'package:healthandwellness/screens/bottombar.dart'; // Adjust the import path as needed

class PrivacySettingsScreen extends StatelessWidget {
  const PrivacySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Privacy Settings',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.blue),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Manage Your Privacy',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            _buildPrivacyOption(
              context,
              'Two-Factor Authentication',
              'Enable extra security for your account',
              Icons.security,
              toggle: true,
              initialValue: true,
            ),
            _buildPrivacyOption(
              context,
              'Profile Visibility',
              'Control who can view your profile',
              Icons.visibility_outlined,
              toggle: false,
              onTap: () {
                debugPrint('Profile Visibility Clicked');
                // Add navigation or functionality here
              },
            ),
            _buildPrivacyOption(
              context,
              'Activity Status',
              'Show your active status to others',
              Icons.toggle_on,
              toggle: true,
              initialValue: false,
            ),
            _buildPrivacyOption(
              context,
              'Data Sharing',
              'Control how your data is shared',
              Icons.share_outlined,
              toggle: false,
              onTap: () {
                debugPrint('Data Sharing Clicked');
                // Add navigation or functionality here
              },
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('Save Changes Clicked');
                  // Save functionality here
                },
                child: const Text(
                  'Save Changes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      vertical: 14, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomScreen(),
    );
  }

  Widget _buildPrivacyOption(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon, {
    required bool toggle,
    bool initialValue = false,
    VoidCallback? onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent.withOpacity(0.2),
          child: Icon(icon, color: Colors.blue),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.black54, fontSize: 14),
        ),
        trailing: toggle
            ? Switch(
                value: initialValue,
                onChanged: (bool value) {
                  debugPrint('$title toggled to $value');
                },
                activeColor: Colors.blue,
              )
            : const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black45,
              ),
        onTap: toggle ? null : onTap,
      ),
    );
  }
}
