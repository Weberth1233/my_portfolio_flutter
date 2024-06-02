import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portifolio/src/components/icon_button_component.dart';
import 'package:my_portifolio/src/controllers/controller_theme.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/widgets/menu/widgets/options_menu.dart';

import 'widgets/text_button_options.dart';

class MyCustomMenuDesktop extends StatelessWidget {
  final ScrollController controller;
  final List<TextButtonOptions> textButtonOptions;
  final ControllerTheme controllerTheme;
  const MyCustomMenuDesktop(
      {super.key,
      required this.controller,
      required this.textButtonOptions,
      required this.controllerTheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      height: 82.18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              child: Text(
                'Portfólio//Weberth'.toUpperCase(),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: ColorPaletteDark.colorOrangeGradiente,
                    fontWeight: FontWeight.w600),
              )),
          OptionMenu(
            textButtonOptions: textButtonOptions,
          ),
          IconButtonComponent(
              icon: controllerTheme.themeLight.value
                  ? Icons.sunny
                  : Icons.nightlight_round,
              action: () {
                controllerTheme.changeTheme();
              }),
        ],
      ),
    );
  }
}

// class MyCustomMenuMobile extends StatelessWidget {
//   const MyCustomMenuMobile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       width: 40,
//       child: IconButton(
//         onPressed: () {
//           Scaffold.of(context).openDrawer();
//         },
//         alignment: Alignment.topLeft,
//         icon: const Icon(
//           Icons.menu,
//           size: 40,
//         ),
//       ),
//     );
//   }
// }
