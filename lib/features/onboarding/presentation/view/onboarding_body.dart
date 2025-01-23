import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/utilities/app_texts.dart';
import 'package:finance_app/core/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/assets.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.imagesOnboardingImage,
          width: double.infinity,
          height: 570.h,
          fit: BoxFit.fill,
        ),
        21.verticalSpace,
         CustomButtonWidget(
          onPressed: (){
            GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
          },
            title: AppTexts.login,
            titleColor: AppColors.white,
            buttonColor: AppColors.primaryColor,
            borderColor: AppColors.primaryColor,
        ),
        15.verticalSpace,
         CustomButtonWidget(
          onPressed: (){
            GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
          },
            title: AppTexts.register,
            titleColor: AppColors.primaryColor,
            buttonColor: AppColors.white,
            borderColor: AppColors.primaryColor,
        ),
        46.verticalSpace,
        Text(
          AppTexts.continueAsAGuest,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.black202955,
            decoration: TextDecoration.underline
          ),
        ),
      ],
    );
  }
}
