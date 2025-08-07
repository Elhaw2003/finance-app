import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/utilities/app_fonts.dart';
import 'package:finance_app/core/utilities/app_styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
 static final lightTheme = ThemeData(
   primaryColor: AppColors.primaryColor,
   scaffoldBackgroundColor: AppColors.white,
   fontFamily: AppFonts.mainFont,
   textTheme: TextTheme(
     titleLarge: AppStyles.primaryHeadLineStyle,
     titleMedium: AppStyles.subTitlesStyle
   ),
   buttonTheme:  const ButtonThemeData(
     buttonColor: AppColors.primaryColor,
     disabledColor: AppColors.secondaryColor
   )
 );
}