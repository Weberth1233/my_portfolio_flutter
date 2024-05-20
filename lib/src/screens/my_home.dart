import 'package:flutter/material.dart';
import 'package:my_portifolio/src/widgets/contact/widget_contact.dart';
import 'package:my_portifolio/src/widgets/experience/widget_experience.dart';
import 'package:my_portifolio/src/widgets/global_scaffold.dart';
import 'package:my_portifolio/src/widgets/projects/widget_projects.dart';
import 'package:my_portifolio/src/widgets/works/widget_works.dart';
import 'package:my_portifolio/src/widgets/home/widget_home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final keyHome = GlobalKey();
final keyExperience = GlobalKey();
final keyProjects = GlobalKey();
final keyWorks = GlobalKey();
final keyContact = GlobalKey();

final List<GlobalKey> keys = [
  keyHome,
  keyExperience,
  keyProjects,
  keyWorks,
  keyContact
];
final ScrollController _scrollController = ScrollController();

class _MyHomePageState extends State<MyHomePage> {
  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      controller: _scrollController,
      keyHome: keyHome,
      keyExperience: keyExperience,
      keyProjects: keyProjects,
      keyWorks: keyWorks,
      keyContact: keyContact,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Center(
                  child: Home(
                    key: keyHome,
                    keyContact: keyContact,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Experience(
                  key: keyExperience,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Projects(
                  key: keyProjects,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Works(
                  key: keyWorks,
                ),
              ),
              Contact(
                key: keyContact,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
