import 'package:finance_app/core/utilities/app_texts.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/app_styles.dart';

class PlusScreen extends StatelessWidget {
  const PlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
          AppTexts.notFoundItem,
        style: AppStyles.primaryHeadLineStyle,
      ),
    );
  }
}
