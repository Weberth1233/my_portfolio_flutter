import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/components/icon_button_component.dart';
import '../controllers/controller_theme.dart';
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
  final ControllerTheme controllerTheme;

  const GlobalScaffold({
    super.key,
    required this.body,
    required this.controller,
    required this.keyHome,
    required this.keyExperience,
    required this.keyProjects,
    required this.keyWorks,
    required this.keyContact,
    required this.controllerTheme,
  });

  @override
  Widget build(BuildContext context) {
    List<TextButtonOptions> textButtonOptions = [
      TextButtonOptions(
        text: 'Home',
        myKey: keyHome,
      ),
      TextButtonOptions(
        text: 'Conhecimentos',
        myKey: keyExperience,
      ),
      TextButtonOptions(
        text: 'Projetos',
        myKey: keyProjects,
      ),
      TextButtonOptions(
        text: 'Experiências',
        myKey: keyWorks, // Corrigido para keyExperience
      ),
      TextButtonOptions(
        text: 'Contatos',
        myKey: keyContact,
      ),
    ];

    return Scaffold(
      appBar: Responsive.isMobile(context)
          ? AppBar(
              title: Text(
                'Portifolio Weberth',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              centerTitle: true,
              actions: [
                IconButtonComponent(
                  icon: controllerTheme.themeLight.value
                      ? Icons.sunny
                      : Icons.nightlight_round,
                  action: controllerTheme.changeTheme, // Usando arrow function
                ),
              ],
            )
          : PreferredSize(
              preferredSize: const Size(double.infinity, 400),
              child: MyCustomMenuDesktop(
                controller: controller,
                textButtonOptions: textButtonOptions,
                controllerTheme: controllerTheme,
              ),
            ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: textButtonOptions.map((option) {
              return TextButtonOptions(
                text: option.text,
                myKey: option.myKey,
              ).paddingOnly(bottom: 20);
            }).toList(), // Usando map ao invés de List.generate
          ),
        ),
      ),
      body: body,
    );
  }
}
