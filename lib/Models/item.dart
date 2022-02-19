// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Item {
  final int number;
  final Color color;

  Item({
    required this.color,
    required this.number,
  });

  Item.loading() : this(color: Colors.grey, number: 0);

  bool get isLoading => (color == Colors.grey && number == 0);
}
