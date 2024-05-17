import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';

class AppTextStyles {
  static TextStyle get headline1 => TextStyle(
        fontFamily: 'Poppins',
        fontSize: 55,
        fontWeight: FontWeight.bold,
        color: ColorPalette.colorLight,
      );

  static TextStyle get mediumText => TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: ColorPalette.colorTextSecondary,
      );

  static TextStyle get smallText => TextStyle(
        fontFamily: 'Poppins',
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: ColorPalette.colorLight,
      );
}
