import 'package:fitness_app/core/constant/app_const.dart';
import 'package:fitness_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayRoutineCard extends StatelessWidget {
  const TodayRoutineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff222222),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        title: Text(
          "7 exercises, 3 sets, 8 reps",
          style: AppTextStyle.regular(
            14,
          ).copyWith(color: const Color.fromARGB(255, 212, 212, 212)),
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            gradient: LinearGradient(
              colors: AppConstant.primayLinearGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Text(
            "Let’s go",
            style: AppTextStyle.medium(16).copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
