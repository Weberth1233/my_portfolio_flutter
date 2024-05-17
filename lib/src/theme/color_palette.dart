import 'package:flutter/material.dart';

class ColorPalette {
  static Color get colorPrimary => const Color(0xff161513);

  static Color get colorTextSecondary => const Color(0xffC5C5C5);
  static Color get colorTextButtonDark => const Color(0xff161513);

  static Color get colorAppBar => const Color(0xff222222);

  static Color get colorLight => const Color(0xffffffff);

  static Color get colorOrangeGradiente => const Color(0xFFFF855F);

  static LinearGradient get colorGradiente => const LinearGradient(
        begin: Alignment(0.67, -0.74),
        end: Alignment(-0.67, 0.74),
        colors: [Color(0xFFFF855F), Color(0xFF8000FE)],
      );
}
