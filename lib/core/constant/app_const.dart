import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppConstant {
  static String urlTemplate =
      "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
  static String onesignalAppId =
      "os_v2_app_lacdmxkicjfnbl6hyyntrene6edizzehpj7ulf4zjnbauzq65p3bfvlxga7ro26mi3eye7q4qnjweyuetaxjfak7zjucokkv3ibokwq";
  static const cartList = 'cartList';
  static const cartServiceItem = 'cartServiceItem';

  static List<BoxShadow> shadow = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.12),
      offset: const Offset(0, 4),
      spreadRadius: -1,
      blurRadius: 10,
    ),
  ];

  static List<Color> whiteLinearGradient = [AppColors.red, Colors.white];
  static List<Color> primayLinearGradient = [
    AppColors.primaryGreen,
    AppColors.primaryYellow,
  ];

  static double screenHeight(context) => MediaQuery.sizeOf(context).height;

  static double screenWidth(context) => MediaQuery.sizeOf(context).width;

  static String? token;
  static String? otp;
}
