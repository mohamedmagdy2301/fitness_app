import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle _baseTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
  }) {
    return TextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      fontFamily: 'Poppins',
      color: Colors.white,
    );
  }

  static TextStyle regular(double size) =>
      _baseTextStyle(fontSize: size, fontWeight: FontWeight.w400);

  static TextStyle medium(double size) =>
      _baseTextStyle(fontSize: size.sp, fontWeight: FontWeight.w500);

  static TextStyle semiBold(double size) =>
      _baseTextStyle(fontSize: size, fontWeight: FontWeight.w600);

  static TextStyle bold(double size) =>
      _baseTextStyle(fontSize: size, fontWeight: FontWeight.w700);

  static TextStyle extraBold(double size) =>
      _baseTextStyle(fontSize: size, fontWeight: FontWeight.w800);

  static TextStyle black(double size) =>
      _baseTextStyle(fontSize: size, fontWeight: FontWeight.w900);
}
