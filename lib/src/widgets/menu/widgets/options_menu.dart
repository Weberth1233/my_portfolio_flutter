import 'package:flutter/material.dart';

import 'text_button_options.dart';

class OptionMenu extends StatelessWidget {
  final List<TextButtonOptions> textButtonOptions;
  const OptionMenu({super.key, required this.textButtonOptions});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      textButtonOptions.length,
      (index) {
        return TextButtonOptions(
          text: textButtonOptions[index].text,
          myKey: textButtonOptions[index].myKey,
        );
      },
    )
        // TextButtonOptions(
        //   text: "Home",
        //   controller: controller,
        //   paddingLeft: 71,
        // ),
        // TextButtonOptions(
        //   text: "Projetos",
        //   controller: controller,
        //   paddingLeft: 71,
        // ),
        // TextButtonOptions(
        //   text: "Experience",
        //   controller: controller,
        //   paddingLeft: 71,
        // ),
        // TextButtonOptions(
        //   text: "Contatos",
        //   controller: controller,
        //   paddingLeft: 71,
        // ),

        );
  }
}
