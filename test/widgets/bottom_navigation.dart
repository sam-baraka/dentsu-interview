import 'package:dentsu_interview/UIs/main_home/bottom_navigation/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Material widget has correct properties', (tester) async {
    await tester.pumpWidget(const BottomNavigationWidget());
    final material = tester.widget<Material>(find.byType(Material));
    expect(material.color, Colors.white);
    expect(material.elevation, 20);
  });

  testWidgets('Row widget has mainAxisAlignment.spaceEvenly', (tester) async {
    await tester.pumpWidget(const BottomNavigationWidget());
    final row = tester.widget<Row>(find.byType(Row));
    expect(row.mainAxisAlignment, MainAxisAlignment.spaceEvenly);
  });
}
