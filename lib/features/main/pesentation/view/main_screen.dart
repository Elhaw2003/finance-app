import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/features/home/presentation/view/widgets/home_body.dart';
import 'package:finance_app/features/main/pesentation/view/widgets/bottom_bar_widget.dart';
import 'package:finance_app/features/my_card/presentation/view/my_card_screen.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeBody(),
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
    const MyCardScreen(),
    Container(
      color: AppColors.black202955,
      width: double.infinity,
      height: double.infinity,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar:BottomBarWidget(
          currentIndex: currentIndex,
          onTap: (value){
            setState(() {
              currentIndex = value;
            });
          },
        ),
      ),
    );
  }
}
