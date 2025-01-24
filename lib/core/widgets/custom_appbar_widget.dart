import 'package:finance_app/core/utilities/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../utilities/app_colors.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(
                color: AppColors.grey.withOpacity(0.13),
                width: 1.w
            ),
          ),
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop(context);
              },
              icon: const Icon(
                size: 19,
                Icons.arrow_back_ios_new_outlined,
                color: AppColors.black202955,
              )),
        ),
        Text(
          title,
          style: AppStyles.black600wSize16Inter.copyWith(fontSize: 18),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(
                color: AppColors.grey.withOpacity(0.13),
                width: 1.w
            ),
          ),
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop(context);
              },
              icon:  Icon(
                size: 19,
                icon,
                color: AppColors.black202955,
              )
          ),
        )
      ],
    );
  }
}
