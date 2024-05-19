import 'package:flutter/material.dart';
import 'package:my_portifolio/src/theme/color_palette.dart';

class ButtonComponent extends StatefulWidget {
  final String text;
  final Color colorButton;
  final Color colorText;
  final Function() action;

  const ButtonComponent(
      {super.key,
      required this.text,
      required this.colorButton,
      required this.action,
      required this.colorText});

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.action,
      style: OutlinedButton.styleFrom(
          backgroundColor: widget.colorButton,
          side: BorderSide(color: ColorPalette.colorLight)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(widget.text,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: widget.colorText, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
