import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utilities/app_styles.dart';
import '../../../core/utilities/app_texts.dart';

class HeadLineTextWidget extends StatelessWidget {
  const HeadLineTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.w,
      child: Text(
        title,
        style: AppStyles.primaryHeadLineStyle,
      ),
    );
  }
}
