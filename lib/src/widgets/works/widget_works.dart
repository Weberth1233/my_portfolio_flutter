import 'package:flutter/material.dart';
import 'package:my_portifolio/src/widgets/works/widgets/card_work.dart';

import '../../theme/color_palette.dart';
import '../../utils/responsive.dart';

class Works extends StatefulWidget {
  const Works({super.key});

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Responsive.getPadding(context),
      child: Column(
        children: [
          Text(
            'EXPERIÊNCIAS',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: ColorPalette.colorOrangeGradiente),
          ),
          const SizedBox(
            height: 57,
          ),
          const CardWork(
            pathLogo: '',
            company: "MinÍsterio Público - TO",
            durationMothYear: "Mai 2024 - Presente",
            description:
                "Atualmente, trabalho como desenvolvedor Flutter terceirizado no Ministério Público do Tocantins. Recentemente, participei do desenvolvimento do novo Portal da Transparência do Ministério Público do Tocantins, utilizando o framework Flutter Web para o Front-End. Desempenhei um papel crucial na criação de elementos essenciais do portal, incluindo as principais funções de acessibilidade e a elaboração de diversas telas. As principais tecnologias que utilizo no meu trabalho no Ministério Público do Tocantins incluem: Flutter (Web)| Modular| BLOC| Django (ATHENAS)| GITGitLab| Docker",
          ),
          const CardWork(
            pathLogo: '',
            company: "SolarView(Assistente de TI/Desenvolvedor Junior)",
            durationMothYear: "Maio 2023 - Dez 2023",
            description:
                "Essa foi minha primeira oportunidade como Desenvolvedor Júnior. Inicialmente, comecei como Assistente de TI e, após algum tempo, recebi a chance de atuar junto ao time de desenvolvimento. Participei ativamente do Scrum, participando das dailys e reviews para aprimorar o que estava sendo desenvolvido. Também trabalhei na correção de falhas e na criação de novas funcionalidades. Durante meu período na SolarView, adquiri habilidades nas seguintes tecnologias e metodologias: Laravel| PHP| MySQL| Bitbucket| Scrum",
          ),
          const CardWork(
              pathLogo:
                  'https://drive.google.com/file/d/1p1ze_hwbD-jzKiDEDARZLnKpOZu6UfnF/view?usp=sharing',
              company: "UNITINS(Desenvolver Flutter(Bolsista))",
              durationMothYear: "Maio 2023 - Dez 2023",
              description:
                  ' Um dos projetos mais significativos em que trabalhei foi o UNITINSRECICLA, um aplicativo criado para informar sobre o descarte correto de materiais reciclados e facilitar a localização de pontos de coleta em Palmas - TO. Minha contribuição para este projeto incluiu a criação da documentação e desenvolvimento do referido aplicativo em conjunto com um colega do curso de Sistemas de Informação.'),
        ],
      ),
    );
  }
}
