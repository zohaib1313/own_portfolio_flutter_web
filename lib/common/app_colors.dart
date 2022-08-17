import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  static const primaryColor = Color(0xffffe000);
  static const whiteColor = Color(0xffffffff);
  static const blackColor = Color(0xff363a43);
  static const greenColor = Color(0xff50c40d);
  static const darkBlue = Color(0xff037dcb);
  static const lightBlue = Color(0xff5fbced);
  static const grey = Color(0xffbcbdbc);
}

class AppTextStyles {
  static final _fontBold = GoogleFonts.abel(
      textStyle: const TextStyle(
          fontWeight: FontWeight.bold, color: AppColor.blackColor));
  static final _fontNormal = GoogleFonts.abel(
      textStyle: const TextStyle(
          fontWeight: FontWeight.normal, color: AppColor.blackColor));

  static TextStyle textStyleBoldTitleLarge = _fontBold.copyWith(fontSize: 22);

  static TextStyle textStyleBoldSubTitleLarge =
      _fontBold.copyWith(fontSize: 20);

  static TextStyle textStyleNormalLargeTitle =
      _fontNormal.copyWith(fontSize: 20);
  static TextStyle textStyleBoldBodyMedium = _fontBold.copyWith(fontSize: 16);
  static TextStyle textStyleNormalBodyMedium =
      _fontNormal.copyWith(fontSize: 16);
  static TextStyle textStyleBoldBodySmall = _fontBold.copyWith(fontSize: 14);
  static TextStyle textStyleNormalBodySmall =
      _fontNormal.copyWith(fontSize: 14);
  static TextStyle textStyleBoldBodyXSmall = _fontBold.copyWith(fontSize: 12);
  static TextStyle textStyleNormalBodyXSmall =
      _fontNormal.copyWith(fontSize: 12);
}
