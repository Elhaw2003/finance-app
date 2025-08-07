
import 'package:finance_app/features/home/presentation/view/widgets/item_in_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../generated/assets.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key, required this.layer1Image, required this.layer2Image, required this.cardColor, });
  final String layer1Image;
  final String layer2Image;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: cardColor
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            layer1Image,
            height: 150.h,
            width: 150.w,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            layer2Image,
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
