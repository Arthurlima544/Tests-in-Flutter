import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testinflutter/Models/item.dart';
import 'package:testinflutter/Models/item_page.dart';

void main() {
  test('Should create a Item_Page', () {
    Item item = const Item(color: Colors.red, id: 1, number: 100);
    ItemPage page = ItemPage(hasNext: false, startingIndex: 0, items: [item]);

    expect(page.items[0], equals(item));
  });
}
