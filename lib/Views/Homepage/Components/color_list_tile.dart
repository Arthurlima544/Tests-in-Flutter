import 'package:flutter/material.dart';

class ColorTile extends StatelessWidget {
  final int index;
  const ColorTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$index"),
    );
  }
}
