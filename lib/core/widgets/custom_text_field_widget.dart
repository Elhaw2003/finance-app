import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.hintText, this.suffixIcon,this.obscureText});
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: 331.w,
      child: TextFormField(
        obscureText: obscureText?? false,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 18.h),
          filled: true,
          fillColor: AppColors.textFieldColor,
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 15.sp
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: AppColors.borderTextFieldColor,width: 1)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: AppColors.primaryColor,width: 1)
          ),
          suffixIcon: suffixIcon
        ),
      ),
    );
  }
}
