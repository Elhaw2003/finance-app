import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/widgets/custom_button_widget.dart';
import 'package:finance_app/core/widgets/custom_text_field_widget.dart';
import 'package:finance_app/features/auth/widgets/rich_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../core/widgets/spacing_widget.dart';
import '../../../../widgets/arrow_appbar_widget.dart';
import '../../../../widgets/subTitle_text_widget.dart';
import '../../../../widgets/head_line_text_widget.dart';

class ForgotBody extends StatefulWidget {
  const ForgotBody({super.key});

  @override
  State<ForgotBody> createState() => _ForgotBodyState();
}

class _ForgotBodyState extends State<ForgotBody> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeightSpacing(height: 12),
          const ArrowAppbarWidget(),
          const HeightSpacing(height: 28),
          const HeadLineTextWidget(title: AppTexts.forgotPassword),
          const SubTitleTextWidget(
            title: AppTexts.forGotDescription,
          ),
          const HeightSpacing(height: 32),
          CustomTextFieldWidget(
              hintText: AppTexts.enterYourEmail,
              controller: emailController
          ),
          const HeightSpacing(height: 38),
          const CustomButtonWidget(
              title: AppTexts.sendCode,
              titleColor: AppColors.white,
              buttonColor: AppColors.primaryColor,
              borderColor: AppColors.primaryColor),
          const HeightSpacing(height: 361),
          const Align(
            alignment: Alignment.center,
            child: RichTextWidget(
                firstText: AppTexts.rememberPassword,
                secondText: AppTexts.login
            ),
          ),
          const HeightSpacing(height: 26),
        ],
      ),
    );
  }
}
