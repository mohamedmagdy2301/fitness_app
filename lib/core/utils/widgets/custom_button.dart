import 'package:fitness_app/core/constant/app_const.dart';
import 'package:fitness_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isLoading = false,
    this.buttonColor = AppColors.primaryYellow,
    this.textColor = Colors.white,
    this.borderRadius = 50.0,
    this.padding = const EdgeInsets.symmetric(
      vertical: 16.0,
      horizontal: 122.5,
    ),
    this.borderColor = AppColors.primaryYellow,
    this.icon = '',
    this.width = 350,
    this.isArabic = false,
    this.height,
  });

  final String title;
  final VoidCallback onPressed;
  final bool isLoading, isArabic;
  final Color buttonColor;
  final Color textColor;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final String icon;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onPressed,
      child: Container(
        width: width?.w,
        height: height ?? 53.h,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.w),
          borderRadius: BorderRadius.circular(borderRadius.r),
          color: buttonColor,
          gradient: LinearGradient(colors: AppConstant.primayLinearGradient),
        ),
        child: Center(
          child:
              isLoading
                  ? Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20.0.w,
                        height: 20.0.h,
                        child: CircularProgressIndicator(),
                      ),
                      SizedBox(width: 10.w),
                    ],
                  )
                  : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLoading
                          ? CircularProgressIndicator()
                          : Row(
                            children: [
                              if (icon != '') ...[
                                Image.asset(
                                  icon,
                                  color: textColor,
                                  width: 20.w,
                                  height: 20.h,
                                ),
                                SizedBox(width: 10.w),
                              ],
                              Text(
                                title,
                                style: AppTextStyle.regular(15).copyWith(
                                  color: textColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                    ],
                  ),
        ),
      ),
    );
  }
}
