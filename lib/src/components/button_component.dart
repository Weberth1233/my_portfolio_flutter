import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';

class ButtonComponent extends StatefulWidget {
  final String text;

  final Function() action;

  const ButtonComponent({
    super.key,
    required this.text,
    required this.action,
  });

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.action,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          widget.text,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
