import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portifolio/src/components/icon_button_component.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';

class CardProject extends StatelessWidget {
  final String text;
  final String pathImage;
  final VoidCallback action;

  const CardProject({
    super.key,
    required this.text,
    required this.pathImage,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 235,
          child: Lottie.asset(
            'assets/animation/desktop.json',
            fit: BoxFit.fill,
            repeat: true,
          ),
        ),
        Container(
          width: 390,
          height: 70,
          decoration: BoxDecoration(
            color: ColorPalette.colorAppBar,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Container(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 23, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Text>[
                    Text(
                      'Clique aqui para visualizar',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 10),
                    ),
                    Text(text, style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                IconButtonComponent(
                  icon: FontAwesomeIcons.github,
                  action: action,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
