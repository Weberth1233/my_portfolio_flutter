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
      height: 418.76,
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
            "Seasoned Full Stack Software Engineer with over 8 years of hands-on experience in designing and implementing robust, scalable, and innovative web solutions. Adept at leveraging acomprehensive skill set encompassing front-end and back-end technologies",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
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
            children: [
              Icon(
                FontAwesomeIcons.instagram,
                color: ColorPalette.colorLight,
              ).paddingOnly(right: 10),
              Icon(
                FontAwesomeIcons.linkedin,
                color: ColorPalette.colorLight,
              ).paddingOnly(right: 10),
            ],
          ),
        ],
      ),
    );
  }
}
