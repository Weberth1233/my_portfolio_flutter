import 'package:flutter/material.dart';

class ContainerShapeDecorationComponent extends StatelessWidget {
  final double width;
  final double height;
  final LinearGradient? linearGradient;
  final Color? color;
  final String pathImage;

  const ContainerShapeDecorationComponent(
      {super.key,
      this.linearGradient,
      this.color,
      required this.pathImage,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      //#0B2D1F
      decoration: ShapeDecoration(
        gradient: linearGradient,
        color: color,
        image: DecorationImage(
          alignment: Alignment.center,
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ),
        shape: const OvalBorder(),
      ),
    );
  }
}
