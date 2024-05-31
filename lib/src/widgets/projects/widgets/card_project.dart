import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/components/icon_button_component.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/utils/responsive.dart';

class CardProject extends StatelessWidget {
  final String text;
  final String pathImage;
  final VoidCallback? actionGit;
  final VoidCallback? actionFigma;
  final VoidCallback? actionLink;

  const CardProject({
    super.key,
    required this.text,
    required this.pathImage,
    this.actionGit,
    this.actionFigma,
    this.actionLink,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Responsive.getSizeCard(context),
          height: 235,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: ColorPalette.colorPrimary,
            image: DecorationImage(
              image: AssetImage(pathImage),
              fit: BoxFit
                  .cover, // Certifique-se de que a imagem se encaixa no contêiner
            ),
          ),
        ),
        Container(
          width: Responsive.getSizeCard(context),
          decoration: BoxDecoration(
            color: ColorPalette.colorAppBar,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    Responsive.isDesktop(context)
                        ? 'Clique nos links para saber mais...'
                        : 'Role para o lado para ver mais...',
                    style: Theme.of(context).textTheme.bodySmall),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: ColorPalette.colorLight,
                      fontWeight: FontWeight.w600),
                ),
                actionLink == null
                    ? Row(
                        children: <IconButtonComponent>[
                          IconButtonComponent(
                            icon: FontAwesomeIcons.github,
                            action: actionGit!,
                          ),
                          IconButtonComponent(
                            icon: FontAwesomeIcons.figma,
                            action: actionFigma!,
                          ),
                        ],
                      )
                    : IconButtonComponent(
                        icon: FontAwesomeIcons.link,
                        action: actionLink!,
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
