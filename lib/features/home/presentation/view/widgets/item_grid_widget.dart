import 'package:finance_app/features/home/presentation/data/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_fonts.dart';
import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ItemGridWidget extends StatelessWidget {
  const ItemGridWidget({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeightSpacing(height: 16),
        Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
                color: AppColors.textFieldColor,
                borderRadius: BorderRadius.circular(12.r)
            ),
            child: Icon(
              itemModel.icon,
              size: 20.sp,
              color: AppColors.primaryColor,
            ),
        ),
        const HeightSpacing(height: 12),
        Text(
          itemModel.title,
          style: AppStyles.black600wSize16Inter,
        ),
        const HeightSpacing(height: 4),
        Text(
          itemModel.description,
          style: AppStyles.subTitlesStyle.copyWith(
              fontSize: 12,
              fontFamily: AppFonts.inter
          ),
        ),
      ],
    );
  }
}
