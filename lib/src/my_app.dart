import 'package:flutter/material.dart';
import 'package:my_portifolio/src/controllers/controller_theme.dart';

import 'screens/my_home.dart';
import 'theme/app_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ControllerTheme controllerTheme = ControllerTheme();

    return AnimatedBuilder(
      animation: controllerTheme.themeLight,
      builder: (context, child) {
        final appTheme = AppTheme(isLight: controllerTheme.themeLight.value);
        return MaterialApp(
          title: 'Meu portifolio',
          debugShowCheckedModeBanner: false,
          theme: controllerTheme.themeLight.value
              ? appTheme.lightTheme
              : appTheme.darkTheme,
          home: MyHomePage(
            controllerTheme: controllerTheme,
          ),
        );
      },
    );
  }
}
