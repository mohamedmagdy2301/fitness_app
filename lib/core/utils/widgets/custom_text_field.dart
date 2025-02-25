import 'package:fitness_app/core/constant/app_colors.dart';
import 'package:fitness_app/core/constant/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.labelText,
    super.key,
    this.controller,
    this.obscureText,
    this.keyboardType,
    this.onChanged,
    this.boarderColor,
    this.maxLines,
    this.isRequired,
    this.validatorPassword,
    this.validator,
  });
  final String labelText;
  final TextEditingController? controller;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged, validatorPassword;
  final Color? boarderColor;
  final int? maxLines;
  final String? Function(String?)? validator;

  final bool? isRequired;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isPasswordObscure;

  @override
  void initState() {
    super.initState();
    isPasswordObscure = widget.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: widget.keyboardType ?? TextInputType.text,
          controller: widget.controller,
          validator:
              widget.validator ??
              (value) {
                if (value == null || value.isEmpty) {
                  return "Required to enter ${widget.labelText}";
                }

                return null;
              },
          onChanged: widget.onChanged,
          maxLines: widget.maxLines ?? 1,
          obscureText: isPasswordObscure,
          style: AppTextStyle.regular(15),
          decoration: InputDecoration(
            hintText: 'Enter ${widget.labelText}',
            hintStyle: AppTextStyle.medium(15),
            border: customOutlineInputBorder(color: widget.boarderColor),
            enabledBorder: customOutlineInputBorder(color: widget.boarderColor),
            focusedBorder: customOutlineInputBorder(color: widget.boarderColor),
            focusedErrorBorder: customOutlineInputBorder(color: AppColors.red),
            errorBorder: customOutlineInputBorder(color: AppColors.red),
            suffixIcon: changePasswordObscure(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder customOutlineInputBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.r)),
      borderSide: BorderSide(color: color ?? AppColors.borderColor),
    );
  }

  IconButton? changePasswordObscure() {
    return widget.obscureText != null
        ? IconButton(
          onPressed: () {
            setState(() {
              isPasswordObscure = !isPasswordObscure;
            });
          },
          icon: Icon(
            isPasswordObscure ? Icons.visibility_off : Icons.visibility,
          ),
        )
        : null;
  }
}
