import 'package:fitness_app/core/constant/app_assets.dart';
import 'package:fitness_app/core/extansions/padding_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 21.r,
          foregroundImage: Image.asset(AppAssets.mego).image,
        ),
      ).paddingAll(6),
      actions: [Image.asset(AppAssets.notificationHome).paddingAll(12)],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
