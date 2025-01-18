import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/utilities/app_styles.dart';
import 'package:finance_app/core/utilities/app_texts.dart';
import 'package:finance_app/core/widgets/custom_divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrLoginRegisterWidget extends StatelessWidget {
  const OrLoginRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomDividerWidget(width: 100),
        Text(
          AppTexts.orLoginWith,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.darkGrey
          ),
        ),
        const CustomDividerWidget(width: 100),
      ],
    );
  }
}
