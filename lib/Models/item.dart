// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Item {
  final int id;
  final int number;
  final Color color;

  Item({
    required this.id,
    required this.color,
    required this.number,
  });

  Item.loading() : this(id: 0, color: Colors.grey, number: 0);

  bool get isLoading => (color == Colors.grey && number == 0);
}
