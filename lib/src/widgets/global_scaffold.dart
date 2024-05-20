import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';

import '../utils/responsive.dart';
import 'menu/widget_custom_menu.dart';
import 'menu/widgets/text_button_options.dart';

class GlobalScaffold extends StatelessWidget {
  final Widget body;
  final ScrollController controller;
  final GlobalKey keyHome;
  final GlobalKey keyExperience;
  final GlobalKey keyProjects;
  final GlobalKey keyWorks;
  final GlobalKey keyContact;

  const GlobalScaffold({
    super.key,
    required this.body,
    required this.controller,
    required this.keyHome,
    required this.keyExperience,
    required this.keyProjects,
    required this.keyWorks,
    required this.keyContact,
  });

  @override
  Widget build(BuildContext context) {
    List<TextButtonOptions> textButtonOptions = [
      TextButtonOptions(
        text: "Home",
        myKey: keyHome,
      ),
      TextButtonOptions(
        text: "Projetos",
        myKey: keyProjects,
      ),
      TextButtonOptions(
        text: "Experiências",
        myKey: keyWorks,
      ),
      TextButtonOptions(
        text: "Contatos",
        myKey: keyContact,
      ),
    ];

    return Scaffold(
      appBar: Responsive.isMobile(context)
          ? AppBar(
              title: Text(
                'Portifolio Weberth',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorPalette.colorLight,
                    fontWeight: FontWeight.w600),
              ),
              centerTitle: true,
            )
          : PreferredSize(
              preferredSize: const Size(double.infinity, 400),
              child: MyCustomMenuDesktop(
                controller: controller,
                textButtonOptions: textButtonOptions,
              ),
            ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              textButtonOptions.length,
              (index) {
                return TextButtonOptions(
                  text: textButtonOptions[index].text,
                  myKey: textButtonOptions[index].myKey,
                );
              },
            ),
          ),
        ),
      ),
      body: body,
    );
  }
}
