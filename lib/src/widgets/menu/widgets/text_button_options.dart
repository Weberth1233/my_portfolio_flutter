import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/src/utils/responsive.dart';

import '../../../utils/utils_methods.dart';

class TextButtonOptions extends StatelessWidget {
  final String text;
  final GlobalKey myKey;

  const TextButtonOptions({
    super.key,
    required this.text,
    required this.myKey,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        scrollSectionSimple(myKey);
      },
      child: Text(
        text,
        style: Responsive.isMobile(context)
            ? Theme.of(context).textTheme.bodyLarge
            : Theme.of(context).textTheme.bodySmall,
      ),
    ).paddingOnly(left: Responsive.isDesktop(context) ? 71 : 0);
  }
}
