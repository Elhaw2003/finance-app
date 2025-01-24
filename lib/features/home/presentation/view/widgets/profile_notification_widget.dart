import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_fonts.dart';
import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../generated/assets.dart';

class ProfileNotificationWidget extends StatelessWidget {
  const ProfileNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.asset(
          Assets.imagesProfile,
          width: 48.w,
          height: 48.h,
          fit: BoxFit.fill,
        ),
      ),
      title: Text(
        AppTexts.welcomeBack,
        style: AppStyles.subTitlesStyle.copyWith(fontSize: 12,fontFamily: AppFonts.inter),
      ),
      subtitle: Text(
        AppTexts.ibrahimMohamed,
        style: AppStyles.primaryHeadLineStyle.copyWith(color: AppColors.black,fontSize: 18,fontFamily: AppFonts.inter),
      ),
      trailing:  Container(
        width: 48.w,
        height: 48.h,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderTextFieldColor),
            shape: BoxShape.circle
        ),
        child: const Icon(Icons.notifications,color: AppColors.primaryColor,),
      ),
    );
  }
}
