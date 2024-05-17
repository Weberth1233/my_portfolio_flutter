import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ColorPalette.colorPrimary,
      textTheme: TextTheme(
        displayLarge: AppTextStyles.headline1,
        bodyMedium: AppTextStyles.mediumText,
      ),

      buttonTheme: ButtonThemeData(
        buttonColor: ColorPalette.colorLight,
        textTheme: ButtonTextTheme.primary,
      ),
      // Adicione mais personalizações conforme necessário
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: ColorPalette.colorPrimary,
      textTheme: TextTheme(
          displayLarge: AppTextStyles.headline1,
          bodyMedium: AppTextStyles.mediumText,
          bodySmall: AppTextStyles.smallText),
      buttonTheme: ButtonThemeData(
        buttonColor: ColorPalette.colorPrimary,
        textTheme: ButtonTextTheme.primary,
      ),
      // Adicione mais personalizações para o tema escuro
    );
  }
}
