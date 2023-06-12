import 'package:flutter/cupertino.dart';

import '../../core/constants/assets/font_constants.dart';
import '../../core/init/colors/custom_colors.dart';

class AppNameLogo extends StatelessWidget {
  const AppNameLogo({super.key, required this.fontSize, this.color});
  final double fontSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Space Game',
      style: TextStyle(
        fontFamily: FontsConstants.instance.IRISH_REGULAR,
        color: color ?? CustomColors.instance.primaryColor,
        fontSize: fontSize,
      ),
    );
  }
}
