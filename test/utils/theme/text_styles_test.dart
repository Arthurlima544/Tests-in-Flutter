import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testinflutter/utils/theme/text_styles.dart';
import 'package:testinflutter/utils/theme/text_styles_tags.dart';
import 'package:testinflutter/utils/theme/ui_colors.dart';

void main() {
  group('Text Styles Test', () {
    test(
        'Should give a titleHome TextStyle from TextStyles class using GoogleFonts',
        () async {
      final expected = GoogleFonts.lexendDeca(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: UiColors.heading,
      );
      final result = TextStyles.getTextStyle(TextStylesTags.titleHome);

      expect(result, equals(expected));
    });
    test(
        'Should give a titleNormal TextStyle from TextStyles class using GoogleFonts',
        () async {
      final expected = GoogleFonts.lexendDeca(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: UiColors.heading,
      );
      final result = TextStyles.getTextStyle(TextStylesTags.titleNormal);

      expect(result, equals(expected));
    });
    test(
        'Should give a normal TextStyle from TextStyles class using GoogleFonts',
        () async {
      const expected = TextStyle();
      final result = TextStyles.getTextStyle(TextStylesTags.normal);

      expect(result, equals(expected));
    });
  });
}
