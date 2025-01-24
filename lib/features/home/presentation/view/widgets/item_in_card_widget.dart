import 'package:flutter/material.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_styles.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../core/widgets/spacing_widget.dart';

class ItemInCardWidget extends StatelessWidget {
  const ItemInCardWidget({super.key,});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeightSpacing(height: 24),
        Text(
          AppTexts.xCard,
          style: AppStyles.white700wSize12Inter,
        ),
        const HeightSpacing(height: 57,),
        Text(
          AppTexts.balance,
          style: AppStyles.white700wSize12Inter.copyWith(
              color: AppColors.white.withOpacity(0.3),
              fontSize: 14
          ),
        ),
        const HeightSpacing(height: 8),
        Text(
          "234000",
          style: AppStyles.white700wSize12Inter.copyWith(
              fontSize: 24
          ),
        ),
        const HeightSpacing(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "*** 345",
              style: AppStyles.white700wSize12Inter.copyWith(
                  color: AppColors.white.withOpacity(0.3),
                  fontSize: 14
              ),
            ),
            Text(
              "12/24",
              style: AppStyles.white700wSize12Inter.copyWith(
                  color: AppColors.white.withOpacity(0.3),
                  fontSize: 14
              ),
            ),
          ],
        ),
      ],
    );
  }
}
