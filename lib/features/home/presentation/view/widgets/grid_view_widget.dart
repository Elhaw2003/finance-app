import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/utilities/app_texts.dart';
import 'package:finance_app/features/home/presentation/data/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_grid_widget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> items = [
      ItemModel(icon: Icons.send, title: AppTexts.sendMoney, description: AppTexts.takeAccToAcc),
      ItemModel(icon: Icons.wallet_outlined, title: AppTexts.payTheBill, description: AppTexts.loremIpsum),
      ItemModel(icon: Icons.send, title: AppTexts.request, description: AppTexts.loremIpsum),
      ItemModel(icon: Icons.perm_contact_calendar, title: AppTexts.contact, description: AppTexts.loremIpsum),
    ];
    return GridView.builder(
      itemCount: items.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 16.w
      ),
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: AppColors.grey.withOpacity(0.2)),
          ),
          child: ItemGridWidget(itemModel: items[index]),
        );
      },
    );
  }
}
