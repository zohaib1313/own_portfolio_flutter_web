import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  static const primaryColor = Color(0xff0A192F);
  static const lightBlue = Color(0xff41FBDA);
  static const whiteColor = Color(0xffffffff);
  static const blackColor = Color(0xff363a43);
  static const greenColor = Color(0xff50c40d);
  static const darkBlue = Color(0xff037dcb);
  static const grey = Color(0xffbcbdbc);
  static final cardBgColor = Colors.blueGrey.withOpacity(0.7);

  static var iconsColors = const Color(0xffffA8B2D1);
}

class AppTextStyles {
  static final _fontBold = GoogleFonts.average(
      textStyle: const TextStyle(
          fontWeight: FontWeight.bold, color: AppColor.blackColor));
  static final _fontNormal = GoogleFonts.average(
      textStyle: const TextStyle(
          fontWeight: FontWeight.normal, color: AppColor.blackColor));

  static TextStyle textStyleBoldTitleLarge = _fontBold.copyWith(fontSize: 22);

  static TextStyle textStyleBoldSubTitleLarge =
      _fontBold.copyWith(fontSize: 30);

  static TextStyle textStyleNormalLargeTitle =
      _fontNormal.copyWith(fontSize: 30);
  static TextStyle textStyleBoldBodyMedium = _fontBold.copyWith(fontSize: 16);
  static TextStyle textStyleNormalBodyMedium =
      _fontNormal.copyWith(fontSize: 26);
  static TextStyle textStyleBoldBodySmall = _fontBold.copyWith(fontSize: 14);
  static TextStyle textStyleNormalBodySmall =
      _fontNormal.copyWith(fontSize: 24);
  static TextStyle textStyleBoldBodyXSmall = _fontBold.copyWith(fontSize: 12);
  static TextStyle textStyleNormalBodyXSmall =
      _fontNormal.copyWith(fontSize: 22);
}

class AppStyles {
  static final cardBoxDecoration = BoxDecoration(
      color: AppColor.cardBgColor, borderRadius: BorderRadius.circular(14));
}
