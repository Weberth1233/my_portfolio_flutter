import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 213,
      height: 213,
      decoration: ShapeDecoration(
        gradient: ColorPaletteDark.colorGradiente,
        image: const DecorationImage(
          alignment: Alignment.center,
          image: AssetImage('assets/images/emoji3.png'),
          fit: BoxFit.cover,
        ),
        shape: const OvalBorder(),
      ),
    );
    // return Container(
    //   width: 200,
    //   height: 200,
    //   decoration: BoxDecoration(
    //     color: ColorPalette.colorLight,
    //     borderRadius: BorderRadius.circular(100),
    //     image: const DecorationImage(
    //       image: AssetImage('assets/images/emoji3.png'),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    // );
  }
}
