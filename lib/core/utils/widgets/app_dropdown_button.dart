import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fitness_app/core/constant/app_colors.dart';
import 'package:fitness_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppDropDownButton extends StatelessWidget {
  const AppDropDownButton({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    required this.onChanged,
    required this.items,
    this.radius,
    this.borderColor,
  });
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function(int?) onChanged;
  final List<String> items;
  final BorderRadiusGeometry? radius;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      onChanged: onChanged,
      dropdownStyleData: DropdownStyleData(
        maxHeight: 300.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: borderColor ?? AppColors.primaryYellow,
            width: 0.2.w,
          ),
          borderRadius: radius ?? BorderRadius.all(Radius.circular(10.r)),
        ),
      ),
      decoration: secondryFormFieldDecoration(
        prefixIcon: prefixIcon,
        borderColor: borderColor?.withValues(alpha: 0.5),
      ),
      isDense: true,
      style: AppTextStyle.regular(15),
      isExpanded: true,
      hint: Text(
        hintText,
        style: AppTextStyle.regular(
          15,
        ).copyWith(color: Colors.grey, height: 1.2),
      ),
      iconStyleData: IconStyleData(
        icon: SvgPicture.asset(
          'assets/svg/chivon_down.svg',
          fit: BoxFit.scaleDown,
          color: AppColors.luckyGrey,
        ),
      ),
      items: List.generate(items.length, (int index) {
        return DropdownMenuItem<int>(
          value: index,
          child: Text(
            items[index],
            style: AppTextStyle.regular(15).copyWith(color: Colors.black),
          ),
        );
      }),
    );
  }
}

InputDecoration secondryFormFieldDecoration({
  String? hintText,
  Widget? suffixIcon,
  Widget? prefixIcon,
  Color? borderColor,
}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: AppTextStyle.regular(
      15,
    ).copyWith(color: Colors.grey, height: 1.2),

    border: InputBorder.none,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: borderColor ?? Colors.white.withValues(alpha: 0.4),
        width: 1.w,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: borderColor ?? Colors.white.withValues(alpha: 0.4),
        width: 1.w,
      ),
    ),
    filled: false,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: borderColor ?? Colors.white.withValues(alpha: 0.4),
        width: 1.w,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: borderColor ?? Colors.white.withValues(alpha: 0.4),
        width: 1.w,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: borderColor ?? Colors.white.withValues(alpha: 0.4),
        width: 1.w,
      ),
    ),
    contentPadding: const EdgeInsets.all(15).w,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
  );
}
