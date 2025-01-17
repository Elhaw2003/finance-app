import 'package:flutter/material.dart';
import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles{
  static  TextStyle primaryHeadLineStyle = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w700,
    fontSize: 30.sp
  );
  static  TextStyle subTitlesStyle = TextStyle(
    color: AppColors.secondaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp
  );
}