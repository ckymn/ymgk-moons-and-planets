import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/init/colors/custom_colors.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({Key? key, required this.label, required this.onTap}) : super(key: key);
  final void Function() onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105.w,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          width: 107.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.all(Radius.circular(3.h)),
                child: Ink(
                  height: 6.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: CustomColors.instance.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(3.h)),
                  ),
                  child: Center(
                      child: SizedBox(
                    width: 35.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          label,
                          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.arrow_forward_sharp,
                          size: 30,
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
