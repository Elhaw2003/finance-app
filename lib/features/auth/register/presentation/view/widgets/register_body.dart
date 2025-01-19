import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/widgets/custom_button_widget.dart';
import 'package:finance_app/core/widgets/custom_text_field_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/auth/widgets/head_line_text_widget.dart';
import 'package:finance_app/features/auth/widgets/or_login_register_widget.dart';
import 'package:finance_app/features/auth/widgets/rich_text_widget.dart';
import 'package:finance_app/features/auth/widgets/social_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../generated/assets.dart';
import '../../../../widgets/arrow_appbar_widget.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  bool obscureText = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightSpacing(height: 12),
              const ArrowAppbarWidget(),
              const HeightSpacing(height: 28),
              const HeadLineTextWidget(title: AppTexts.helloRegisterToGetStarted),
              const HeightSpacing(height: 32),
               CustomTextFieldWidget(
                 validator: (value){
                   if(value!.isEmpty){
                     return AppTexts.userName;
                   }
                 },
                  hintText: AppTexts.userName,
                  controller: userNameController,
              ),
              const HeightSpacing(height: 15),
              CustomTextFieldWidget(
                validator: (value){
                  if(value!.isEmpty){
                    return AppTexts.email;
                  }
                },
                hintText: AppTexts.email,
                controller: email,
              ),
              const HeightSpacing(height: 15),
              CustomTextFieldWidget(
                validator: (value){
                  if(value!.isEmpty){
                    return AppTexts.password;
                  }
                  if(value!.length<8){
                    return AppTexts.passwordMustBeAtLeast8Char;
                  }
                },
                hintText: AppTexts.password,
                controller: password,
              ),
              const HeightSpacing(height: 15),
              CustomTextFieldWidget(
                validator: (value){
                  if(value!.isEmpty){
                    return AppTexts.confirmPassword;
                  }
                },
                hintText: AppTexts.confirmPassword,
                controller: confirmPasswordController,
              ),
              const HeightSpacing(height: 30),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppTexts.forgotPassword,
                  style: TextStyle(
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp),
                ),
              ),
              const HeightSpacing(height: 30),
               CustomButtonWidget(
                onPressed: (){
                  if(formKey.currentState!.validate()){

                  }
                },
                  title: AppTexts.register,
                  titleColor: AppColors.white,
                  buttonColor: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor),
              const HeightSpacing(height: 35),
              const OrLoginRegisterWidget(text: AppTexts.orRegisterWith,),
              const HeightSpacing(height: 22),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialIconWidget(iconPath: Assets.iconsFacebookIcon),
                  SocialIconWidget(iconPath: Assets.iconsGoogleIcon),
                  SocialIconWidget(iconPath: Assets.iconsCibAppleIcon),
                ],
              ),
              const HeightSpacing(height: 155),
              const Align(
                alignment: Alignment.center,
                child: RichTextWidget(
                    firstText: AppTexts.alreadyHaveAnAccount,
                    secondText: AppTexts.loginNow
                ),
              ),
              const HeightSpacing(height: 26),
            ],
          ),
        ),
      ),
    );
  }
}
