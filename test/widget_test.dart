import 'package:flutter_test/flutter_test.dart';
import 'package:app19/main.dart';

void main() {
  testWidgets('GridSudoku renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const GridSudokuApp());
    expect(find.byType(GridSudokuApp), findsOneWidget);
  });
}
