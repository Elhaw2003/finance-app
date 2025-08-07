import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/home/presentation/view/widgets/custom_slider_indicator_widget.dart';
import 'package:finance_app/features/home/presentation/view/widgets/grid_view_widget.dart';
import 'package:finance_app/features/home/presentation/view/widgets/profile_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: const Column(
        children: [
          HeightSpacing(height: 19),
          ProfileNotificationWidget(),
          HeightSpacing(height: 21),
          CustomSliderIndicatorWidget(),
          HeightSpacing(height: 24),
          Expanded(child: GridViewWidget())
        ],
      ),
    );
  }
}
