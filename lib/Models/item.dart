// ignore_for_file: file_names

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Item extends Equatable {
  final int id;
  final int number;
  final Color color;

  const Item({
    required this.id,
    required this.color,
    required this.number,
  });

  const Item.loading() : this(id: 0, color: Colors.grey, number: 0);

  bool get isLoading => (color == Colors.grey && number == 0);

  @override
  List<Object?> get props => [id, number, color];
}
