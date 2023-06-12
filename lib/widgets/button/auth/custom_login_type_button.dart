import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomLoginTypeButton extends StatelessWidget {
  const CustomLoginTypeButton({
    Key? key,
    required this.onTap,
    required this.color,
    required this.iconPath,
    required this.label,
  }) : super(key: key);

  final void Function() onTap;
  final Color color;
  final String iconPath;
  final String label;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(3.h)),
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3.h)),
              border: Border.all(
                color: color,
                width: 2,
              )),
          height: 5.5.h,
          width: 45.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconPath,
                height: 4.h,
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: color,
                ),
              ),
            ],
          )),
    );
  }
}
