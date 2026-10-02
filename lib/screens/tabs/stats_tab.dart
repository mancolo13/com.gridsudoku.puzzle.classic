import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Solver Statistics'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: const [
                  Text('4m 12s', style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  SizedBox(height: 4),
                  Text('Best Medium Puzzle Time', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const Icon(Icons.emoji_events_rounded, color: Colors.amber, size: 36),
              title: const Text('Puzzles Solved'),
              trailing: const Text('64 Completed', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
