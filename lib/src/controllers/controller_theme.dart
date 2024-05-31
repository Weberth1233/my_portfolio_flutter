import 'package:flutter/material.dart';

class ControllerTheme {
  ValueNotifier<bool> themeLight = ValueNotifier<bool>(false);

  changeTheme() {
    themeLight.value = !themeLight.value;
  }
}
