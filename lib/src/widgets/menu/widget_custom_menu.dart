import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/utils/responsive.dart';
import 'package:my_portifolio/src/widgets/menu/widgets/options_menu.dart';

class MyCustomMenu extends StatelessWidget {
  const MyCustomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? const MyCustomMenuDesktop()
        : const MyCustomMenuMobile();
  }
}

class MyCustomMenuDesktop extends StatelessWidget {
  const MyCustomMenuDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.colorAppBar,
      height: 82.18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Text('LOGO AQUI',
                    style: Theme.of(context).textTheme.bodySmall),
              )),
          const Expanded(
            flex: 4,
            child: OptionMenu(),
          ),
        ],
      ),
    );
  }
}

class MyCustomMenuMobile extends StatelessWidget {
  const MyCustomMenuMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TextButton(onPressed: () {}, child: const Text("Home")),
        TextButton(onPressed: () {}, child: const Text("Sobre mim")),
        TextButton(onPressed: () {}, child: const Text("Trabalho")),
        TextButton(onPressed: () {}, child: const Text("Contatos")),
      ],
    );
  }
}
