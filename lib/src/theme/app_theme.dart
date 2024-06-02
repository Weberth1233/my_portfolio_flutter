import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'text_styles.dart';

class AppTheme {
  final bool isLight;
  late AppTextStyles appTextStyle;

  AppTheme({this.isLight = false}) {
    appTextStyle = AppTextStyles(isLightTheme: isLight);
  }

  ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: ColorPaletteLight.colorPrimary,
        cardColor: ColorPaletteLight.colorCard,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorPaletteLight.colorAppBar,
        ),
        textTheme: TextTheme(
            displayLarge: appTextStyle.headline1,
            bodyMedium: appTextStyle.mediumText,
            bodySmall: appTextStyle.smallText,
            titleMedium: appTextStyle.subtitleText),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
                ColorPaletteLight.colorButton), // Cor de fundo
            foregroundColor: WidgetStateProperty.all<Color>(
                ColorPaletteLight.colorTextButton),
            side: WidgetStateProperty.all<BorderSide>(
              BorderSide(color: ColorPaletteLight.colorPrimary), // Cor da borda
            ),
          ),
        ) // Cor do texto),
        // Adicione mais personalizações conforme necessário
        );
  }

  ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: ColorPaletteDark.colorPrimary,
        cardColor: ColorPaletteDark.colorCard,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorPaletteDark.colorAppBar,
        ),
        textTheme: TextTheme(
            displayLarge: appTextStyle.headline1,
            bodyMedium: appTextStyle.mediumText,
            bodySmall: appTextStyle.smallText,
            // labelMedium: AppTextStyles.labelTextMedium,
            titleMedium: appTextStyle.subtitleText),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
                ColorPaletteDark.colorButton), // Cor de fundo
            foregroundColor: WidgetStateProperty.all<Color>(
                ColorPaletteDark.colorTextButton),
            side: WidgetStateProperty.all<BorderSide>(
              BorderSide(color: ColorPaletteDark.colorLight), // Cor da borda
            ),
          ),
        )
        // Adicione mais personalizações para o tema escuro
        );
  }
}
