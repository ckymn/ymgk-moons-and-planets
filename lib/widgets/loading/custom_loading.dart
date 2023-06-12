import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../core/constants/assets/animation_constants.dart';
import '../../core/init/colors/custom_colors.dart';

class CustomLoading {
  static CustomLoading? _instance;
  static CustomLoading get instance {
    _instance ??= _instance = CustomLoading._init();
    return _instance!;
  }

  CustomLoading._init();

  Future<dynamic> open(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: CustomColors.instance.black.withOpacity(0.66),
      builder: (context) => Center(
          child: Lottie.asset(
        AnimationConstants.instance.loading,
        height: 40.h,
      )),
    );
  }
}
