import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/components/button_component.dart';
import 'package:my_portifolio/src/screens/my_home.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/widgets/home/widgets/circular_image.dart';
import '../../utils/general_settings.dart';

class Home extends StatefulWidget {
  final GlobalKey keyContact;
  const Home({super.key, required this.keyContact});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const CircularImage().paddingOnly(bottom: 39),
        SizedBox(
          width: 656,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Olá, sou o Weberth, Desenvolvedor Django e",
                style: Theme.of(context).textTheme.displayLarge,
                children: <TextSpan>[
                  TextSpan(
                      text: ' Flutter',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: ColorPalette.colorOrangeGradiente)),
                ]),
          ),
        ).paddingOnly(bottom: 39),
        SizedBox(
          width: 656,
          child: Text(
            'Sou Weberth Erik, recém-formado em Sistemas de Informação pela UNITINS, especializado em desenvolvimento móvel com Flutter e com experiência em Flutter, Laravel e Django. Trabalhei em projetos significativos, como o UNITINSRECICLA, e atualmente sou desenvolvedor Flutter para o Ministério Público do Tocantins. Sempre em busca de novos desafios no desenvolvimento de software.',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ).paddingOnly(bottom: 20),
        SizedBox(
            width: 656,
            child: Wrap(
              spacing: 20,
              runSpacing: 29,
              alignment: WrapAlignment.center,
              children: [
                ButtonComponent(
                  text: 'Entrar em contato',
                  action: () {
                    scrollSectionSimple(keyContact);
                  },
                  colorButton: ColorPalette.colorLight,
                  colorText: ColorPalette.colorTextButtonDark,
                ),
                ButtonComponent(
                  text: 'Download CV',
                  action: () {}, //downloadCV,
                  colorButton: Colors.transparent,
                  colorText: ColorPalette.colorLight,
                ),
              ],
            )).paddingOnly(bottom: 20),
      ],
    );
  }
}
