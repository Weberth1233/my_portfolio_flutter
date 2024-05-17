import 'package:flutter/material.dart';

import 'menu/widget_custom_menu.dart';

class GlobalScaffold extends StatelessWidget {
  final Widget body;
  const GlobalScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 400),
        child: MyCustomMenu(),
      ),
      body: body,
    );
  }
}
