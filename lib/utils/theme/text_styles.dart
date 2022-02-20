import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testinflutter/utils/theme/text_styles_tags.dart';
import 'package:testinflutter/utils/theme/ui_colors.dart';

class TextStyles {
  static TextStyle getTextStyle(TextStylesTags tag) {
    switch (tag) {
      case TextStylesTags.titleHome:
        return GoogleFonts.lexendDeca(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: UiColors.heading,
        );
      case TextStylesTags.titleNormal:
        return GoogleFonts.lexendDeca(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: UiColors.heading,
        );
      default:
        return const TextStyle();
    }
  }
}
