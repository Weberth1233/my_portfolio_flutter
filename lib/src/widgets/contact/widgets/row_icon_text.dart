import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../theme/color_palette.dart';
import '../../../utils/utils_methods.dart';

class RowIconText extends StatelessWidget {
  final String url;
  final String text;
  final IconData iconData;
  const RowIconText(
      {super.key,
      required this.url,
      required this.text,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          url != ''
              ? launchURL(url)
              : Clipboard.setData(ClipboardData(text: text));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: ColorPalette.colorOrangeGradiente,
                content:
                    const Text("Email copiado para a área de transferência")),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              iconData,
              color: ColorPalette.colorOrangeGradiente,
            ).paddingOnly(right: 10),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ).paddingOnly(bottom: 10),
      ),
    );
  }
}
