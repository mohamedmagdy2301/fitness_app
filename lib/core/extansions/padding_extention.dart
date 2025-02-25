import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension PaddingX on Widget {
  Padding paddingAll(double value, {Key? key}) =>
      Padding(key: key, padding: EdgeInsets.all(value.r), child: this);

  Padding paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsets.only(
      top: top.h,
      left: left.w,
      bottom: bottom.h,
      right: right.w,
    ),
    child: this,
  );

  Padding paddingLTRB(
    double left,
    double top,
    double right,
    double bottom, {
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsets.fromLTRB(left.w, top.h, right.w, bottom.h),
    child: this,
  );

  Padding paddingFromViewPadding(
    ViewPadding padding,
    double devicePixelRatio, {
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsets.fromViewPadding(padding, devicePixelRatio),
    child: this,
  );

  Padding paddingSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsets.symmetric(
      vertical: vertical.h,
      horizontal: horizontal.w,
    ),
    child: this,
  );
}
