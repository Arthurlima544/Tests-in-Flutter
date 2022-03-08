import 'item.dart';

const itemsPerPage = 15;

class ItemPage {
  final List<Item> items;
  final int startingIndex;
  final bool hasNext;

  ItemPage({
    required this.items,
    required this.startingIndex,
    required this.hasNext,
  });
}
