import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testinflutter/main.dart';

void main() {
  group('HomePage tests ', () {
    setUp(() => GoogleFonts.config.allowRuntimeFetching = false);
    testWidgets("Should find at least 1 LoadingColorTile", (tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('. . .'), findsWidgets); // LoadingColorTileWidget
      await tester.fling(find.byType(ListView), const Offset(0, -200), 3000);
      await tester.pumpAndSettle();
      expect(find.text('. . .'), findsNothing);
    });
    testWidgets("Should find at least 1 ColorTile", (tester) async {
      await tester.pumpWidget(const MyApp());
      const loadingDuration = Duration(milliseconds: 500);
      await tester.pump(loadingDuration);
      expect(find.text('. . .'), findsNothing);
      expect(find.text("Item 0"), findsOneWidget);
    });
  });
}
