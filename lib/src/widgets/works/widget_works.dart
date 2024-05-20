import 'package:flutter/material.dart';
import 'package:my_portifolio/src/widgets/works/widgets/card_work.dart';

import '../../theme/color_palette.dart';

class Works extends StatefulWidget {
  const Works({super.key});

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          company: "Alpha Terceirização(MinÍsterio Publico - TO)",
          durationMothYear: "Mai 2024 - Presente",
          description:
              "Sou um desenvolvedor Full Stack com experiência na Alpha Terceirização e Serviços Gerais, contribuindo com soluções tecnológicas inovadoras. Minhas competências incluem: Domínio em Flutter para o desenvolvimento Web utilizando Flutter, garantindo uma experiência de usuário excepcional. Proficiência no Django REST Framework(Utilizando o sistema ATHENAS) para a construção de robustas APIs e sistemas web escaláveis. Experiência em Dart, facilitando o desenvolvimento eficiente e elegante de aplicativos com Flutter. Conhecimento em desenvolvimento web, criando interfaces dinâmicas e funcionais.Ambiente de desenvolvimento ágil e colaborativo, utilizando ferramentas como GitLab para controle de versão e colaboração em equipe.Utilização de padrões de arquitetura como Bloc e Modular para garantir código limpo, organizado e de fácil manutenção.",
        ),
        const CardWork(
          pathLogo: '',
          company: "SolarView(Desenvolvedor Junior)",
          durationMothYear: "Set 2023 - Dez 2023",
          description:
              "Durante meu tempo na SolarView, desenvolvi e apliquei diversas habilidades essenciais para o cargo de Desenvolvedor de Software Júnior, incluindo: Laravel: Implementação de soluções backend robustas e seguras utilizando o framework Laravel. Desenvolvimento Web: Criação e manutenção de aplicações web responsivas e eficientes. MySQL: Gerenciamento e otimização de bases de dados, garantindo alta performance e integridade dos dados. PHP: Desenvolvimento de funcionalidades dinâmicas e interativas utilizando PHP. Ambiente de Desenvolvimento: Configuração e manutenção de ambientes de desenvolvimento, assegurando uma integração contínua e um fluxo de trabalho eficiente. Scrum: Participação em equipes ágeis, aplicando práticas e princípios do Scrum para entregar projetos de forma eficiente e dentro dos prazos estabelecidos.",
        ),
        const CardWork(
          pathLogo: '',
          company: "SolarView(Assistente de TI)",
          durationMothYear: "Mai 2024 - Presente",
          description:
              "As a Senior Software Engineer at Google, I played a pivotal role in developing innovative solutions for Google's core search algorithms. Collaborating with a dynamic team of engineers, I contributed to the enhancement of search accuracy and efficiency, optimizing user experiences for millions of users worldwide.",
        ),
      ],
    );
  }
}
