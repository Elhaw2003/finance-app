import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/utilities/app_fonts.dart';
import 'package:finance_app/core/utilities/app_texts.dart';
import 'package:finance_app/features/main/pesentation/view/widgets/bottom_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    Container(
      color: AppColors.red,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: AppColors.primaryColor,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: AppColors.black202955,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: AppColors.grey,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: AppColors.black202955,
      width: double.infinity,
      height: double.infinity,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar:BottomBarWidget(
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
