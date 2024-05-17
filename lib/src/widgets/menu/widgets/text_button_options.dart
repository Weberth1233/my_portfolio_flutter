import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextButtonOptions extends StatelessWidget {
  final String text;
  final VoidCallback action;

  const TextButtonOptions(
      {super.key, required this.text, required this.action});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    ).paddingOnly(left: 71);
  }
}
