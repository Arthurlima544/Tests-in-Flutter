import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testinflutter/Models/item.dart';

void main() {
  test('Should return a normal item', () {
    Item item = const Item(color: Colors.red, id: 1, number: 100);

    expect(item.isLoading, false);
    expect(item, equals(const Item(color: Colors.red, id: 1, number: 100)));
  });
  test('Should return a Item.loading', () {
    Item item = const Item.loading();
    expect(item.isLoading, true);
    expect(item, equals(const Item.loading()));
  });
}
