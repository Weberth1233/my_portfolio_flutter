import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/components/button_component.dart';
import 'package:my_portifolio/src/screens/my_home.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/utils/responsive.dart';
import 'package:my_portifolio/src/widgets/home/widgets/circular_image.dart';
import '../../utils/utils_methods.dart';

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
                text: "Olá, sou o Weberth Erik, Desenvolvedor Mobile|Web",
                style: Responsive.isMobile(context)
                    ? Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 45)
                    : Theme.of(context).textTheme.displayLarge,
                children: <TextSpan>[
                  TextSpan(
                      text: ' Flutter',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: ColorPaletteDark.colorOrangeGradiente)),
                ]),
          ),
        ).paddingOnly(bottom: 39),
        SizedBox(
          width: 656,
          child: Text(
            'Olá pessoal, sou formado em Sistemas de Informação pela Universidade Estadual do Tocantins - UNITINS, tenho como principal foco o desenvolvimento móvel e web, tenho conhecimento em Flutter, Laravel e Django. Trabalhei em projetos significativos, como o UNITINSRECICLA e o novo Portal da Transparência no MPTO, e atualmente sou Desenvolvedor Flutter terceirizado para o Ministério Público do Tocantins. Estou sempre em busca de novos desafios no desenvolvimento de software.',
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
                ),
                ButtonComponent(
                  text: 'Download CV',
                  action: () {
                    downloadCV();
                  }, //downloadCV,
                ),
              ],
            )).paddingOnly(bottom: 20),
      ],
    );
  }
}
