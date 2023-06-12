import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/assets/font_constants.dart';
import '../../../core/init/colors/custom_colors.dart';
import 'custom_cupertino_button.dart';

class GeneralTextButton extends StatelessWidget {
  GeneralTextButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.color,
    this.decoration,
    this.fontSize,
    this.fontFamily,
  });
  final void Function() onPressed;
  final String label;
  Color? color;
  TextDecoration? decoration;
  double? fontSize;
  String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CustomCupertinoButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(
                  fontFamily: fontFamily ?? FontsConstants.instance.INTER_MEDIUM,
                  decoration: decoration,
                  color: color ?? CustomColors.instance.white,
                  fontSize: fontSize),
            ))
        : TextButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(
                  fontFamily: fontFamily ?? FontsConstants.instance.INTER_MEDIUM,
                  decoration: decoration,
                  color: color ?? CustomColors.instance.white,
                  fontSize: fontSize),
            ));
  }
}
