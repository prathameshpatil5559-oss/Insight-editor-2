
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 12),

              // Profile picture
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                ),
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                'Instagram Profile',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                '@username',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade600,
                ),
              ),

              const SizedBox(height: 28),

              _profileTile(
                icon: Icons.people_outline,
                title: 'Followers',
                value: '0',
              ),

              _profileTile(
                icon: Icons.person_add_outlined,
                title: 'Following',
                value: '0',
              ),

              _profileTile(
                icon: Icons.grid_view_outlined,
                title: 'Posts',
                value: '0',
              ),

              const SizedBox(height: 20),

              _actionTile(
                icon: Icons.refresh,
                title: 'Refresh Profile',
              ),

              _actionTile(
                icon: Icons.settings_outlined,
                title: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileTile({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),
      child: Row(
        children: [
          Icon(icon, size: 27),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionTile({
    required IconData icon,
    required String title,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(
        Icons.chevron_right,
      ),
   
