import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:testinflutter/Models/item.dart';
import 'package:testinflutter/Models/item_page.dart';

const totalItensLength = 500;

Future<ItemPage> fetchPage(int startingIndex) async {
  await Future<void>.delayed(const Duration(milliseconds: 400));
  return ItemPage(
      items: List.generate(
          math.min(itemsPerPage, totalItensLength - startingIndex),
          (index) => Item(
              id: index,
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              number: index)),
      startingIndex: startingIndex,
      hasNext: startingIndex + itemsPerPage < totalItensLength);
}
