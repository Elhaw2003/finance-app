import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../../core/utilities/app_colors.dart';
import '../../../../../../core/utilities/app_styles.dart';

class PinCodeWidget extends StatelessWidget {
  const PinCodeWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: controller,
      appContext: context,
      length: 4,
      keyboardType: TextInputType.number,
      textStyle: AppStyles.primaryHeadLineStyle.copyWith(fontSize: 22.sp),
      enableActiveFill: true,
      pinTheme: PinTheme(
          fieldHeight: 60.h,
          fieldWidth: 70.w,
          errorBorderColor: AppColors.red,
          borderRadius: BorderRadius.circular(8.r),
          activeColor: AppColors.black202955,
          selectedColor: AppColors.primaryColor,
          inactiveColor: AppColors.borderTextFieldColor,
          inactiveFillColor: AppColors.textFieldColor,
          selectedFillColor: AppColors.white,
          activeFillColor: AppColors.white,
          borderWidth: 1,
          shape: PinCodeFieldShape.box
      ),
    );
  }
}
