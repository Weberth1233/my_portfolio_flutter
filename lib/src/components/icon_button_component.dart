import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconButtonComponent extends StatelessWidget {
  final IconData icon;
  final VoidCallback action;
  final double padding;

  const IconButtonComponent(
      {super.key,
      required this.icon,
      required this.action,
      this.padding = 0.0});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: action,
    ).paddingOnly(right: padding);
  }
}
