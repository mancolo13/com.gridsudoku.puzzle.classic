import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class DailyTab extends StatelessWidget {
  const DailyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Puzzle'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Icon(Icons.star_rounded, size: 64, color: Colors.amber),
                  const SizedBox(height: 12),
                  const Text('October 2 Challenge', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  const Text('Difficulty: Medium • Award: Gold Star', style: TextStyle(color: AppTheme.textSecondary)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary, foregroundColor: Colors.black),
                    child: const Text('Start Daily Board'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
