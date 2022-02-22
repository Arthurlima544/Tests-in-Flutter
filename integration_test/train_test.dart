import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testinflutter/Views/Homepage/Components/color_tile.dart';
import 'package:testinflutter/Views/Homepage/Components/loading_color_tile.dart';
import 'package:testinflutter/Views/Homepage/home_page.dart';
import 'package:testinflutter/main.dart';

void main() {
  group('Integration Tests', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
        as IntegrationTestWidgetsFlutterBinding;

    testWidgets(
        'Deve Carregar a HomePage com itens LoadingColorTile e permitir a rolagem dos itens para baixo, obtendo as Widgtes ColorTile e não quebrando ao final da lista',
        (tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.byType(LoadingColorTile), findsWidgets);

      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      await tester.fling(find.byType(ListView), const Offset(0, -2000), 90000);
      await tester.pumpAndSettle();

      expect(find.byType(ColorTile), findsWidgets);
    });

    testWidgets(
        'Deve Carregar a HomePage com itens LoadingColorTile e permitir a rolagem dos itens para cima, obtendo as Widgtes ColorTile e não quebrando ao final da lista',
        (tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.byType(LoadingColorTile), findsWidgets);

      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      await tester.fling(find.byType(ListView), const Offset(0, -2000), 90000);
      await tester.pumpAndSettle();

      await tester.fling(find.byType(ListView), const Offset(0, 2000), 90000);
      await tester.pumpAndSettle();

      expect(find.byType(ColorTile), findsWidgets);
    });
  });
}
