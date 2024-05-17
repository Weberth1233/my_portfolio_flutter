import 'package:flutter/material.dart';
import 'package:my_portifolio/src/widgets/global_scaffold.dart';
import '../widgets/menu/widget_custom_menu.dart';
import '../widgets/home/widget_home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const GlobalScaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 97.82),
              child: Center(
                child: Home(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
