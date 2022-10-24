import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/common/app_colors.dart';

class AppBarTitle extends StatelessWidget {
  final String text;
  dynamic onTap;

  //final Function ontab;

  AppBarTitle({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26.sp,
            letterSpacing: 3.0,
            color: AppColor.grey,
          ),
        ),
      ),
    );
  }
}
