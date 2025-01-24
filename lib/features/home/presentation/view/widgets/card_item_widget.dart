
import 'package:finance_app/features/home/presentation/view/widgets/item_in_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../generated/assets.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key, });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: AppColors.primaryColor
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            Assets.imagesLayer1,
            height: 150.h,
            width: 150.w,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            Assets.imagesLayer2,
            height: 200.h,
            width: 207.w,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: const ItemInCardWidget()
        )
      ],
    );
  }
}
