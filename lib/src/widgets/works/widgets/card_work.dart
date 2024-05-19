import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';
import 'package:my_portifolio/src/utils/responsive.dart';

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
    return Container(
      padding: Responsive.getPadding(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Wrap(
                  spacing: 5,
                  children: [
                    const Text('Logo'),
                    Text(
                      company,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: ColorPalette.colorLight,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Text(
                durationMothYear,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: ColorPalette.colorTextSecondary),
              )
            ],
          ).paddingOnly(bottom: 23),
          Text(
            description,
            textAlign: TextAlign.justify,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 14.49),
          ),
        ],
      ),
    ).paddingOnly(bottom: 50);
  }
}
