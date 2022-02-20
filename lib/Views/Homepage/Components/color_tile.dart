import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testinflutter/Models/item.dart';
import 'package:testinflutter/utils/theme/text_styles.dart';
import 'package:testinflutter/utils/theme/text_styles_tags.dart';
import 'package:testinflutter/utils/theme/ui_colors.dart';

class ColorTile extends StatelessWidget {
  final Item item;

  ColorTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 37.0,
        right: 37.0,
        top: 40,
      ),
      child: Container(
        color: UiColors.primary,
        height: 70,
        width: MediaQuery.of(context).size.width - 37,
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              color: item.color,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Item ${newRandonNumber(item.number)}",
              style: TextStyles.getTextStyle(TextStylesTags.titleNormal),
            ),
          ],
        ),
      ),
    );
  }
}

int newRandonNumber(int number) {
  Random random = Random();
  int res = number == 0 ? random.nextInt(20) : random.nextInt(20) * number;
  return res;
}
