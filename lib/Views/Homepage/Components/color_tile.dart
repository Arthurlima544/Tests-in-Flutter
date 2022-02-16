import 'package:flutter/material.dart';
import 'package:testinflutter/utils/theme/ui_colors.dart';

class ColorTile extends StatelessWidget {
  final int index;
  const ColorTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UiColors.primary,
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 50,
            color: Colors.blue,
          ),
          Text(
            "$index",
          ),
        ],
      ),
    );
  }
}
