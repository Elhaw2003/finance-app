import 'package:finance_app/core/routing/app_routes.dart';
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
import 'package:go_router/go_router.dart';
import '../../../../../../core/utilities/app_texts.dart';
import '../../../../../../generated/assets.dart';
import '../../../../widgets/arrow_appbar_widget.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool obscureText = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              const HeadLineTextWidget(title: AppTexts.welcomeBackAgain),
              const HeightSpacing(height: 32),
               CustomTextFieldWidget(
                 validator: (value){
                   if(value!.isEmpty){
                     return AppTexts.enterYourEmail;
                   }
                 },
                  hintText: AppTexts.enterYourEmail,
                  controller: emailController,
              ),
              const HeightSpacing(height: 15),
              CustomTextFieldWidget(
                validator: (value){
                  if(value!.isEmpty){
                    return AppTexts.enterYourPassword;
                  }
                  if(value!.length<8){
                    return AppTexts.passwordMustBeAtLeast8Char;
                  }
                },
                controller: passwordController,
                hintText: AppTexts.enterYourPassword,
                obscureText: obscureText,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      Icons.visibility,
                      color: obscureText ? AppColors.grey : AppColors.primaryColor,
                    )),
              ),
              const HeightSpacing(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                    GoRouter.of(context).pushNamed(AppRoutes.forgotScreen);
                  },
                  child: Text(
                    AppTexts.forgotPassword,
                    style: TextStyle(
                        color: AppColors.darkGrey,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp),
                  ),
                ),
              ),
              const HeightSpacing(height: 30),
               CustomButtonWidget(
                onPressed: (){
                  if(formKey.currentState!.validate()){
                    GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
                  }
                },
                  title: AppTexts.login,
                  titleColor: AppColors.white,
                  buttonColor: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor),
              const HeightSpacing(height: 35),
               const OrLoginRegisterWidget(text: AppTexts.orLoginWith,),
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
                    firstText: AppTexts.doNotHaveAnAccount,
                    secondText: AppTexts.registerNow
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
