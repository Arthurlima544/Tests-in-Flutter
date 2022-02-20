import 'package:flutter/material.dart';
import 'package:testinflutter/utils/theme/text_styles.dart';
import 'package:testinflutter/utils/theme/text_styles_tags.dart';
import 'package:testinflutter/utils/theme/ui_colors.dart';

class LoadingColorTile extends StatelessWidget {
  const LoadingColorTile({
    Key? key,
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
              color: Colors.blue,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              ". . .",
              style: TextStyles.getTextStyle(TextStylesTags.titleNormal),
            ),
          ],
        ),
      ),
    );
  }
}
