import 'package:flutter/material.dart';

class EngagementScreen extends StatelessWidget {
  const EngagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Engagement',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Engagement',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              'See how people interact with your content.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 24),

            _statCard(
              title: 'Likes',
              value: '0',
              icon: Icons.favorite_border,
            ),

            const SizedBox(height: 12),

            _statCard(
              title: 'Comments',
              value: '0',
              icon: Icons.chat_bubble_outline,
            ),

            const SizedBox(height: 12),

            _statCard(
              title: 'Shares',
              value: '0',
              icon: Icons.share_outlined,
            ),

            const SizedBox(height: 12),

            _statCard(
              title: 'Saves',
              value: '0',
              icon: Icons.bookmark_border,
            ),

            const SizedBox(height: 28),

            const Text(
              'Engagement rate',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.grey.shade200,
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.trending_up,
                    size: 30,
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Text(
                      'Overall engagement',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Text(
                    '0%',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Interactions over time',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Container(
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.grey.shade200,
                ),
              ),
              child: const Center(
                child: Text(
                  'Engagement Graph',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w
