import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/utils/responsive.dart';
import 'package:my_portifolio/src/utils/utils_methods.dart';
import 'package:my_portifolio/src/widgets/contact/widgets/row_icon_text.dart';

import '../../controllers/controller_theme.dart';

class Contact extends StatefulWidget {
  final ControllerTheme controllerTheme;
  const Contact({super.key, required this.controllerTheme});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Responsive.getPadding(context),
      width: MediaQuery.of(context).size.width,
      color: widget.controllerTheme.themeLight.value
          ? ColorPaletteLight.colorFooter
          : ColorPalette.colorFooter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Entre em contato',
            style: Theme.of(context).textTheme.titleMedium,
          ).paddingOnly(top: 50.73, bottom: 20.37),
          Text(
            'Estou sempre em busca de novos desafios e oportunidades para colaborar em projetos inovadores. Se você está à procura de um desenvolvedor apaixonado e dedicado, que pode trazer suas ideias à vida com soluções criativas e eficazes, adoraria conversar com você! Seja para discutir um projeto, trocar ideias sobre desenvolvimento de software ou apenas para uma conversa sobre as tendências do setor, sinta-se à vontade para entrar em contato. Estou aqui para ajudar a transformar suas visões em realidade!',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 10,
          ),
          const RowIconText(
            url: 'https://www.linkedin.com/in/weberth-e-949388138/',
            text: 'Weberth_Erik',
            iconData: FontAwesomeIcons.linkedin,
          ),
          const RowIconText(
            url: 'https://www.instagram.com/weberth_erik/',
            text: '@weberth_erik',
            iconData: FontAwesomeIcons.instagram,
          ),
          const RowIconText(
            url: '',
            text: 'webertherikanolarsirqueira@gmail.com',
            iconData: Icons.email,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchURL(
                    'https://www.figma.com/design/aIAZwsQqkT6XxgNzwkjS3y/Developer-Portfolio-Website-Design-(Community)?node-id=0-1&t=YHqSrznVXREwLUb0-0');
              },
              child: Text('Visualizar template no FIGMA - Todos os direitos',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.green)),
            ),
          )
        ],
      ),
    );
  }
}
