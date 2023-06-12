import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/constants/assets/font_constants.dart';
import '../../core/init/colors/custom_colors.dart';
import 'custom_cupertino_button.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({
    super.key,
    this.onPressed,
    required this.label,
    this.backgroundColor,
    this.textColor,
    this.radius,
    this.fontSize,
    this.border,
  });
  final void Function()? onPressed;
  final String label;
  final Color? backgroundColor;
  final Color? textColor;
  final double? radius;
  final double? fontSize;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      child: Platform.isIOS
          ? CustomCupertinoButton.filled(
              color: backgroundColor,
              disabledColor: CustomColors.instance.textBlackColor.withOpacity(0.3),
              borderRadius: BorderRadius.all(Radius.circular(radius ?? 0.8.h)),
              onPressed: onPressed,
              border: border,
              child: Text(
                label,
                style: TextStyle(
                  fontFamily: FontsConstants.instance.INTER_SEMIBOLD,
                  fontSize: fontSize ?? 15.sp,
                  color: textColor ?? Colors.white,
                ),
              ),
            )
          : ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(radius ?? 0.8.h)),
                )),
                elevation: MaterialStateProperty.resolveWith<double>(
                  (Set<MaterialState> states) {
                    return 0.0;
                  },
                ),
              ),
              onPressed: onPressed,
              child: Text(
                label,
                style: TextStyle(
                  fontFamily: FontsConstants.instance.INTER_SEMIBOLD,
                  fontSize: fontSize ?? 15.sp,
                  color: textColor ?? Colors.white,
                ),
              ),
            ),
    );
  }
}
