import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'General',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          _settingTile(
            icon: Icons.person_outline,
            title: 'Profile',
            subtitle: 'Manage your profile',
          ),

          _settingTile(
            icon: Icons.notifications_none,
            title: 'Notifications',
            subtitle: 'Notification preferences',
          ),

          _settingTile(
            icon: Icons.language,
            title: 'Language',
            subtitle: 'App language',
          ),

          const SizedBox(height: 24),

          const Text(
            'App',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          _settingTile(
            icon: Icons.info_outline,
            title: 'About',
            subtitle: 'About Instagram Raftar',
          ),

          _settingTile(
            icon: Icons.help_outline,
            title: 'Help',
            subtitle: 'Get help and support',
          ),
        ],
      ),
    );
  }

  Widget _settingTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      leading: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(
        Icons.chevron_right,
      ),
    );
  }
}
