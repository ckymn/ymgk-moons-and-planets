import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/constants/assets/font_constants.dart';
import '../icons/custom_icons.dart';

class CustomSnackBar {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar({
    required BuildContext context,
    required String message,
    required IconData icon,
    required Color backgroundColor,
    required Color borderColor,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        dismissDirection: DismissDirection.vertical,
        backgroundColor: Colors.transparent,
        elevation: 0,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(top: 50.h, right: 2.w, left: 2.w, bottom: 0),
        content: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2.h)),
            color: backgroundColor,
            border: Border.all(color: borderColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.h, left: 2.h, right: 1.h, bottom: 1.h),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        message,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: FontsConstants.instance.INTER_REGULAR,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoButton(
                  child: Icon(
                    CustomIcons.instance.close,
                    color: Colors.white,
                  ),
                  onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar()),
            ],
          ),
        ),
      ),
    );
  }
}
