import 'package:flutter/material.dart';
import 'tabs/sudoku_tab.dart';
import 'tabs/daily_tab.dart';
import 'tabs/tips_tab.dart';
import 'tabs/stats_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _idx = 0;
  final _tabs = const [SudokuTab(), DailyTab(), TipsTab(), StatsTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _idx, children: _tabs),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _idx,
        onDestinationSelected: (i) => setState(() => _idx = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.grid_on_outlined), selectedIcon: Icon(Icons.grid_on), label: 'Puzzle'),
          NavigationDestination(icon: Icon(Icons.calendar_today_outlined), selectedIcon: Icon(Icons.calendar_today), label: 'Daily'),
          NavigationDestination(icon: Icon(Icons.lightbulb_outline), selectedIcon: Icon(Icons.lightbulb), label: 'Tips'),
          NavigationDestination(icon: Icon(Icons.insights_outlined), selectedIcon: Icon(Icons.insights), label: 'Stats'),
        ],
      ),
    );
  }
}
