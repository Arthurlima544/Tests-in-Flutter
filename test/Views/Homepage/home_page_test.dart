import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:testinflutter/Views/Homepage/home_page.dart';
import 'package:testinflutter/main.dart';

void main() {
  group('HomePage testes ', () {
    testWidgets("founding at least 1 ColorTile", (tester) async {
      // buildado widget
      await tester.pumpWidget(const MyApp());

      expect(find.text('Item 0'), findsWidgets);
      await tester.fling(find.byType(ListView), const Offset(0, -200), 3000);
      await tester.pumpAndSettle();
      expect(find.text('Item 0'), findsNothing);
    });
  });
}
