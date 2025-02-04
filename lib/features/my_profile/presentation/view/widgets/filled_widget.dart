import 'package:finance_app/core/utilities/app_fonts.dart';
import 'package:finance_app/core/utilities/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class FilledWidget extends StatelessWidget {
  const FilledWidget({super.key, required this.title, required this.valueOfTitle});
  final String title;
  final String valueOfTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            title,
          style: AppStyles.subTitlesStyle.copyWith(fontFamily: AppFonts.inter,fontSize: 14),
        ),
        const HeightSpacing(height: 16),
        Text(
            valueOfTitle,
          style: AppStyles.black600wSize16Inter.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
