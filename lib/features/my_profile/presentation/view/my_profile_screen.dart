import 'package:finance_app/features/my_profile/presentation/view/widgets/filled_widget.dart';
import 'package:finance_app/features/my_profile/presentation/view/widgets/profile_picture_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utilities/app_texts.dart';
import '../../../../core/widgets/custom_appbar_widget.dart';
import '../../../../core/widgets/spacing_widget.dart';
class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeightSpacing(height: 16),
          CustomAppbarWidget(title: AppTexts.myProfile, icon: Icons.edit_square),
          HeightSpacing(height: 39),
          Align(
            alignment: Alignment.center,
              child: ProfilePictureWidget()),
          HeightSpacing(height: 9),
          FilledWidget(title: AppTexts.fullName,valueOfTitle: AppTexts.ibrahimMohamed,),
          HeightSpacing(height: 16),
          FilledWidget(title: AppTexts.email,valueOfTitle: "ebrahimelhaw0@gmail.com",),
          HeightSpacing(height: 16),
          FilledWidget(title: AppTexts.phoneNumber,valueOfTitle: "01123166536",),
          HeightSpacing(height: 16),
          FilledWidget(title: AppTexts.address,valueOfTitle: "Tanta,Egypt",),
        ],
      ),
    );
  }
}
