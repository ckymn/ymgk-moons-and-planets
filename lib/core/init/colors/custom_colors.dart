import 'package:flutter/material.dart';

class CustomColors {
  static CustomColors? _instance;
  static CustomColors get instance {
    _instance ??= _instance = CustomColors._init();
    return _instance!;
  }

  CustomColors._init();
  final primaryColor = const Color(0xFFEEAF3D);
  final googleRedColor = const Color(0xFFF73933);
  final facebookBlueColor = const Color(0xFF3460CE);
  final Color textFieldHintColor = const Color(0xFFCACBCD);
  final Color textBlackColor = const Color(0xFF252525);
  final Color failedSnackbarBackgroundColor = const Color(0xFFFFF2F2);
  final Color failedSnackbarBorderColor = const Color(0xFFEE3025);
  final Color successSnackbarBackgroundColor = const Color(0xFFF2FEFF);
  final Color successSnackbarBorderColor = const Color(0xFF2569EE);
  final Color textFieldShadowColor = const Color(0xFFF0F0F0);

  final Color white = Colors.white;
  final Color green = Colors.green;
  final Color black = Colors.black;
  final Color red = Colors.red;
  final Color grey = Colors.grey;
}
