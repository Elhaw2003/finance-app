import 'dart:core';

import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/utilities/app_fonts.dart';
import 'package:finance_app/core/utilities/app_styles.dart';
import 'package:finance_app/features/home/presentation/view/widgets/item_grid_widget.dart';
import 'package:finance_app/features/statistic/presentation/view/widgets/chart_widget.dart';
import 'package:finance_app/features/statistic/presentation/view/widgets/drop_down_widget.dart';
import 'package:finance_app/features/statistic/presentation/view/widgets/grid_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utilities/app_texts.dart';
import '../../../../core/widgets/custom_appbar_widget.dart';
import '../../../../core/widgets/spacing_widget.dart';
import '../../../home/presentation/data/models/item_model.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child:  Column(
        children: [
          const HeightSpacing(height: 16),
          const CustomAppbarWidget(title: AppTexts.reload, icon: Icons.more_horiz),
          const HeightSpacing(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "Jan 28 - May 28, 2025 ",
                style: AppStyles.subTitlesStyle.copyWith(fontFamily: AppFonts.inter),
              ),
              const DropDownWidget(),
            ],
          ),
          const HeightSpacing(height: 26),
      const ChartWidget(),
          const HeightSpacing(height: 16),
          const GridWidget(),
        ],
      ),
    );
  }
}

