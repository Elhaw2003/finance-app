import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/utilities/app_styles.dart';
import 'package:finance_app/core/widgets/custom_button_widget.dart';
import 'package:finance_app/features/auth/otp_verification/presentation/view/widgets/pin_code_widget.dart';
import 'package:finance_app/features/auth/widgets/rich_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../core/widgets/spacing_widget.dart';
import '../../../../widgets/arrow_appbar_widget.dart';
import '../../../../widgets/subTitle_text_widget.dart';
import '../../../../widgets/head_line_text_widget.dart';
class OtpVerificationBody extends StatefulWidget {
  const OtpVerificationBody({super.key});

  @override
  State<OtpVerificationBody> createState() => _OtpVerificationBodyState();
}

class _OtpVerificationBodyState extends State<OtpVerificationBody> {
 final  TextEditingController pinController = TextEditingController();
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
          const HeadLineTextWidget(title: AppTexts.oTPVerification),
          const HeightSpacing(height: 10),
          const SubTitleTextWidget(title: AppTexts.otpDescription),
          const HeightSpacing(height: 32),
          PinCodeWidget(
            controller: pinController,
          ),
          const HeightSpacing(height: 38),
          const CustomButtonWidget(
              title: AppTexts.sendCode,
              titleColor: AppColors.white,
              buttonColor: AppColors.primaryColor,
              borderColor: AppColors.primaryColor
          ),
          const Spacer(),
          const Align(
            alignment: Alignment.center,
            child: RichTextWidget(
              firstText: AppTexts.didNotReceivedCode,
              secondText: AppTexts.resend,
            ),
          ),
          const HeightSpacing(height: 26),
        ],
      ),
    );
  }
}
