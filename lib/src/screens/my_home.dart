import 'package:flutter/material.dart';
import 'package:my_portifolio/src/utils/responsive.dart';
import 'package:my_portifolio/src/widgets/contact/widget_contact.dart';
import 'package:my_portifolio/src/widgets/experience/widget_experience.dart';
import 'package:my_portifolio/src/widgets/global_scaffold.dart';
import 'package:my_portifolio/src/widgets/works/widget_works.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 0,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 97.82),
                child: Center(
                  child: Home(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 88),
                child: Experience(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 88),
                child: Works(),
              ),
              Contact(),
            ],
          ),
        ),
      ),
    );
  }
}
