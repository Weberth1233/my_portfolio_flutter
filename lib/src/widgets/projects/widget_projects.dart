import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/widgets/projects/widgets/card_project.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'PROJETOS',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: ColorPalette.colorOrangeGradiente),
        ),
        const SizedBox(
          height: 57,
        ),
        Wrap(
          spacing: 30,
          runSpacing: 10,
          children: [
            //'assets/images/github.png'
            CardProject(
              pathImage: 'assets/images/github.png',
              text: 'Teste Ministerio Publico - TO',
              action: () {},
            ),
            CardProject(
              pathImage: 'assets/images/github.png',
              text: 'takeYourUmbrellaApp',
              action: () {},
            ),
          ],
        ),
      ],
    );
  }
}
