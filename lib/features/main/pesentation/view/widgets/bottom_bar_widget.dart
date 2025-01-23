import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_fonts.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../generated/assets.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key, required this.currentIndex, this.onTap});
  final int currentIndex;
   final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation:0.1,
        unselectedLabelStyle: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            fontFamily: AppFonts.inter
        ),
        selectedLabelStyle: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            fontFamily: AppFonts.inter
        ),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.grey,
        selectedItemColor: AppColors.primaryColor,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: AppTexts.home
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.iconsChart),
              label: AppTexts.statistic
          ),
          BottomNavigationBarItem(
              icon: Container(
                alignment: Alignment.center,
                width: 48.sp,
                height: 48.sp,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 20.sp,
                  height: 20.sp,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.white
                  ),
                  child: Icon(
                    Icons.add,
                    color: AppColors.primaryColor,
                    size: 20.sp,
                  ),
                ),
              ),
              label: ""
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: AppTexts.myCard
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: AppTexts.profile
          ),
        ]
    );
  }
}
