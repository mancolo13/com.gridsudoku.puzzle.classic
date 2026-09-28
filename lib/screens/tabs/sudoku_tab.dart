import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class SudokuTab extends StatefulWidget {
  const SudokuTab({super.key});

  @override
  State<SudokuTab> createState() => _SudokuTabState();
}

class _SudokuTabState extends State<SudokuTab> {
  final List<List<int>> _grid = List.generate(4, (_) => [0, 0, 0, 0]);
  int? _selR;
  int? _selC;

  @override
  void initState() {
    super.initState();
    _grid[0][0] = 1;
    _grid[1][2] = 3;
    _grid[2][1] = 4;
    _grid[3][3] = 2;
  }

  void _setNum(int n) {
    if (_selR != null && _selC != null) {
      setState(() => _grid[_selR!][_selC!] = n);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridSudoku Mini (4x4)'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(color: AppTheme.primary, width: 2)),
                child: Column(
                  children: List.generate(4, (r) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(4, (c) {
                        final val = _grid[r][c];
                        final isSel = _selR == r && _selC == c;
                        return GestureDetector(
                          onTap: () => setState(() {
                            _selR = r;
                            _selC = c;
                          }),
                          child: Container(
                            width: 64,
                            height: 64,
                            decoration: BoxDecoration(
                              color: isSel ? AppTheme.primary.withValues(alpha: 0.3) : AppTheme.card,
                              border: Border.all(color: Colors.white24),
                            ),
                            child: Center(
                              child: Text(val == 0 ? '' : '$val', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        );
                      }),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1, 2, 3, 4].map((n) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: AppTheme.surface, padding: const EdgeInsets.all(18)),
                      onPressed: () => _setNum(n),
                      child: Text('$n', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
