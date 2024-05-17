import 'package:flutter/material.dart';

import 'screens/my_home.dart';
import 'theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu portifolio',
      darkTheme: AppTheme.darkTheme,
      home: const MyHomePage(),
    );
  }
}
