import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/constants/assets/font_constants.dart';
import '../../core/init/colors/custom_colors.dart';

class CustomAuthTextFormField extends StatelessWidget {
  CustomAuthTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.iconData,
    required this.controller,
    this.validator,
    this.suffixIcon,
    this.obscureText,
    this.onChanged,
    this.scrollPadding,
    this.iconSize,
    this.enable,
    this.fillColor,
    this.inputTextColor,
    this.onFieldSubmitted,
  });
  final String hintText;
  final TextInputType textInputType;
  final IconData? iconData;
  final TextEditingController controller;
  String? Function(String?)? validator;
  Widget? suffixIcon;
  bool? obscureText;
  void Function(String)? onChanged;
  final EdgeInsets? scrollPadding;
  void Function(String)? onFieldSubmitted;
  final double? iconSize;
  final bool? enable;
  final Color? fillColor;
  final Color? inputTextColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        style: TextStyle(color: inputTextColor),
        obscureText: obscureText ?? false,
        validator: validator,
        onChanged: onChanged,
        enabled: enable,
        onFieldSubmitted: onFieldSubmitted,
        scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.instance.textBlackColor.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(13),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.instance.textBlackColor.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(13),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.instance.red),
            borderRadius: BorderRadius.circular(13),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.instance.red),
            borderRadius: BorderRadius.circular(13),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.instance.textBlackColor.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(13),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.all(2.h),
            child: Icon(
              iconData,
              size: iconSize,
            ),
          ),
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            color: CustomColors.instance.black.withOpacity(0.4),
            fontFamily: FontsConstants.instance.INTER_MEDIUM,
            fontSize: 12.sp,
          ),
          filled: true,
          fillColor: fillColor ?? CustomColors.instance.white,
        ),
      ),
    );
  }
}
