
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reel Insights',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Reel Insights & Analytics',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'Understand how your Reel is performing.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade600,
                ),
              ),

              const SizedBox(height: 24),

              _statCard(
                title: 'Views',
                value: '0',
                icon: Icons.visibility_outlined,
              ),

              const SizedBox(height: 12),

              _statCard(
                title: 'Engagement',
                value: '0%',
                icon: Icons.favorite_border,
              ),

              const SizedBox(height: 12),

              _statCard(
                title: 'Profile visits',
                value: '0',
                icon: Icons.person_outline,
              ),

              const SizedBox(height: 12),

              _statCard(
                title: 'Saves',
                value: '0',
                icon: Icons.bookmark_border,
              ),

              const SizedBox(height: 28),

              const Text(
                'Followers',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              _percentageCard(
                title: 'Followers',
                percentage: '0%',
              ),

              const SizedBox(height: 10),

              _percentageCard(
                title: 'Non-followers',
                percentage: '0%',
              ),

              const SizedBox(height: 28),

              const Text(
                'Views over time',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                height: 220,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Views Graph',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              const Text(
                'Who viewed your reel',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              _infoTile(
                Icons.people_outline,
                'Top sources of views',
              ),

              _infoTile(
                Icons.favorite_border,
                'When people liked your reel',
              ),

              _infoTile(
                Icons.access_time,
                'How long people watched your reel',
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _statCard({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Container(
      width: double.infinity,
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
          Icon(
            icon,
            size: 28,
          ),
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
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _percentageCard({
    required String title,
    required String percentage,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            percentage,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _infoTile(
    IconData icon,
    String title,
  ) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(
        Icons.chevron_right,
      ),
    );
  }
}
