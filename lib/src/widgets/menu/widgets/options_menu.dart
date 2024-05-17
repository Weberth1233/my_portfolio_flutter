import 'package:flutter/material.dart';

import 'text_button_options.dart';

class OptionMenu extends StatelessWidget {
  const OptionMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButtonOptions(
          text: 'Home',
          action: () {
            print('cliquei');
          },
        ),
        TextButtonOptions(
          text: 'Projetos',
          action: () {
            print('cliquei');
          },
        ),
        TextButtonOptions(
          text: 'Experience',
          action: () {
            print('cliquei');
          },
        ),
        TextButtonOptions(
          text: 'Contatos',
          action: () {
            print('cliquei');
          },
        ),
      ],
    );
  }
}
