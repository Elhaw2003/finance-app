import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../home/presentation/data/models/item_model.dart';
import '../../../../home/presentation/view/widgets/item_grid_widget.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> charts = [
      ItemModel(icon: Icons.arrow_circle_down, title: "15000 EG", description: AppTexts.income),
      ItemModel(icon: Icons.arrow_circle_up, title: "35000 EG", description: AppTexts.outcome),
    ];
    return Expanded(
      child: GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.w
        ),
        itemCount: charts.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: AppColors.grey.withOpacity(0.2)),
            ),
            child: ItemGridWidget(itemModel: charts[index]),
          );
        },
      ),
    );
  }
}
