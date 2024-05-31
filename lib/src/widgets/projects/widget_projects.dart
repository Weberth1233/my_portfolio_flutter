import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/utils/responsive.dart';
import 'package:my_portifolio/src/widgets/projects/widgets/card_project.dart';

import 'mock-cards/list_cards.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Responsive.getPadding(context),
      child: Column(
        children: [
          Text(
            'PROJETOS PESSOAIS',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: ColorPalette.colorOrangeGradiente),
          ),
          const SizedBox(
            height: 57,
          ),
          Container(
            // margin: Responsive.getPadding(context)
            child: Responsive.isMobile(context)
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        cards.length,
                        (index) {
                          return CardProject(
                            text: cards[index].text,
                            pathImage: cards[index].pathImage,
                            actionGit: cards[index].actionGit,
                            actionFigma: cards[index].actionFigma,
                          ).paddingOnly(left: 10);
                        },
                      ),
                    ),
                  )
                : Wrap(
                    spacing: 120,
                    runSpacing: 20,
                    children: List.generate(
                      cards.length,
                      (index) {
                        return CardProject(
                          text: cards[index].text,
                          pathImage: cards[index].pathImage,
                          actionGit: cards[index].actionGit,
                          actionFigma: cards[index].actionFigma,
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
