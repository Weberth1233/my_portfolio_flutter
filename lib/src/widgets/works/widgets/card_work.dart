import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/utils/responsive.dart';
import 'package:my_portifolio/src/utils/utils_methods.dart';

class CardWork extends StatelessWidget {
  final String pathLogo;
  final String company;
  final String durationMothYear;
  final String description;

  const CardWork(
      {super.key,
      required this.pathLogo,
      required this.company,
      required this.durationMothYear,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Wrap(
                spacing: 5,
                children: [
                  Icon(
                    FontAwesomeIcons.businessTime,
                    color: ColorPaletteDark.colorOrangeGradiente,
                  ).paddingOnly(right: 10),
                  Text(
                    company,
                    style: Responsive.isMobile(context)
                        ? Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            )
                        : Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                  ),
                ],
              ),
            ),
            Text(durationMothYear,
                style: Theme.of(context).textTheme.bodySmall!)
          ],
        ).paddingOnly(bottom: 23),
        Text(
          description,
          textAlign: TextAlign.justify,
          style:
              Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14.49),
        ),
        pathLogo != ''
            ? MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(pathLogo);
                  },
                  child: Text(
                      'Cliquei para visualizar - Certificado de Registro de Programa de Computador',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.green)),
                ),
              )
            : Container(),
      ],
    ).paddingOnly(bottom: 50);
  }
}
