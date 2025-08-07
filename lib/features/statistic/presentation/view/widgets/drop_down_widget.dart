import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_styles.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  List<String> months = ["Jan","Feb","Mars","Apr","May"];

  String ?selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: 101.w,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color:  AppColors.dropDownColor,
      ),
      child: DropdownButton(
        menuWidth: 70.w,
        hint: selectedLocation == null
            ? Text(
          'Monthly',
          style: AppStyles.black600wSize16Inter.copyWith(fontSize: 14,fontWeight: FontWeight.w500),
        )
            : Text(
          selectedLocation!,
        ),
        isExpanded: true,
        iconSize: 30.0.sp,
        style: const TextStyle(color: AppColors.primaryColor),
        items: months.map(
              (val) {
            return DropdownMenuItem<String>(
              // enabled: true,
              value: val,
              child: Text(val),
            );
          },
        ).toList(),
        onChanged: (val) {
          setState(
                () {
              selectedLocation = val;
            },
          );
        },
      ),
    );
  }
}
