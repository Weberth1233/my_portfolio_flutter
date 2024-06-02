import 'package:flutter/material.dart';
import 'package:my_portifolio/src/components/shape_decoration_component.dart';

import '../../theme/color_palette.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'CONHECIMENTOS',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 48,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 30,
          runSpacing: 20,
          children: <ContainerShapeDecorationComponent>[
            const ContainerShapeDecorationComponent(
              pathImage: 'assets/images/django.png',
              width: 40,
              height: 40,
              color: Colors.transparent,
            ),
            const ContainerShapeDecorationComponent(
              pathImage: 'assets/images/java.png',
              width: 40,
              height: 40,
              color: Colors.transparent,
            ),
            const ContainerShapeDecorationComponent(
              pathImage: 'assets/images/flutter.png',
              width: 40,
              height: 40,
              color: Colors.transparent,
            ),
            const ContainerShapeDecorationComponent(
              pathImage: 'assets/images/html.jpg',
              width: 40,
              height: 40,
              color: Colors.transparent,
            ),
            const ContainerShapeDecorationComponent(
              pathImage: 'assets/images/css.png',
              width: 40,
              height: 40,
              color: Colors.transparent,
            ),
            const ContainerShapeDecorationComponent(
              pathImage: 'assets/images/javascript.png',
              width: 40,
              height: 40,
              color: Colors.transparent,
            ),
            ContainerShapeDecorationComponent(
              pathImage: 'assets/images/github.png',
              width: 40,
              height: 40,
              color: ColorPaletteDark.colorLight,
            ),
          ],
        ),
      ],
    );
  }
}
