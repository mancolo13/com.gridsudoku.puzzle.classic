import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class TipsTab extends StatelessWidget {
  const TipsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final tips = [
      {'title': 'Sole Candidate (Naked Single)', 'desc': 'When only one valid number can fit into a specific empty cell.'},
      {'title': 'Hidden Pairs', 'desc': 'If two cells in a row/block contain only two specific candidates, all other numbers in those cells can be eliminated.'},
      {'title': 'Pointing Pairs', 'desc': 'When candidates in a 3x3 box align in a single row, they can be removed from the rest of that row.'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Sudoku Strategies'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tips.length,
        itemBuilder: (ctx, i) {
          final t = tips[i];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(t['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppTheme.primary)),
                  const SizedBox(height: 6),
                  Text(t['desc'] as String, style: const TextStyle(height: 1.4)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
