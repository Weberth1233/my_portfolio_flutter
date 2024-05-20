import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/utils/responsive.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Responsive.getPadding(context),
      width: MediaQuery.of(context).size.width,
      color: ColorPalette.colorAppBar,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Contato',
            style: Theme.of(context).textTheme.titleMedium,
          ).paddingOnly(top: 83.73, bottom: 34.37),
          Text(
            'Sou Weberth Erik, recém-formado em Sistemas de Informação pela UNITINS, especializado em desenvolvimento móvel com Flutter e com experiência em Flutter, Laravel e Django. Trabalhei em projetos significativos, como o UNITINSRECICLA, e atualmente sou desenvolvedor FullStack(Django/Flutter). E estou sempre em busca de novos desafios no desenvolvimento de software.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.email,
                color: ColorPalette.colorOrangeGradiente,
              ).paddingOnly(right: 10),
              Text(
                "webertherikanolarsirqueira@gmail.com",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: ColorPalette.colorLight),
              ),
            ],
          ).paddingOnly(bottom: 41.25),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.instagram,
                  color: ColorPalette.colorLight,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.linkedin,
                  color: ColorPalette.colorLight,
                ),
                onPressed: () {},
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Visualizar template no FIGMA - Todos os direitos',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
