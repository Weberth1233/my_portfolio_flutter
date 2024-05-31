import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';

class AppTextStyles {
  final bool isLightTheme;

  AppTextStyles({this.isLightTheme = false});

  TextStyle get headline1 => TextStyle(
        fontFamily: 'Poppins',
        fontSize: 55,
        fontWeight: FontWeight.bold,
        color: isLightTheme ? Colors.black : ColorPalette.colorLight,
      );

  TextStyle get mediumText => TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: isLightTheme ? Colors.black : ColorPalette.colorTextSecondary,
      );

  TextStyle get smallText => TextStyle(
        fontFamily: 'Poppins',
        fontSize: 13,
        fontWeight: FontWeight.normal,
        color: isLightTheme ? Colors.black : ColorPalette.colorTextSecondary,
      );

  TextStyle get subtitleText => TextStyle(
        fontFamily: 'Poppins',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: isLightTheme ? Colors.black : ColorPalette.colorLight,
      );

  // static TextStyle get labelTextMedium => TextStyle(
  //       fontFamily: 'Poppins',
  //       fontSize: 18,
  //       fontWeight: FontWeight.bold,
  //       color: ColorPaletteDark.colorLight,
  //     );
}
