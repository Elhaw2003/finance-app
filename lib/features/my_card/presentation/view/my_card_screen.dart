import 'package:finance_app/core/utilities/app_texts.dart';
import 'package:finance_app/core/widgets/custom_appbar_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/my_card/data/models/my_card_model.dart';
import 'package:finance_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<MyCardModel> myCards = [
      MyCardModel(image: Assets.imagesXCard),
      MyCardModel(image: Assets.imagesMCard),
    ];
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child:   Column(
        children: [
          const HeightSpacing(height: 16),
          const CustomAppbarWidget(title: AppTexts.myCard, icon: Icons.more_horiz),
          const HeightSpacing(height: 24),
          Expanded(
            child: ListView.builder(
              itemCount: myCards.length,
              itemBuilder: (context, index) {
              return Image.asset(myCards[index].image);
            },),
          )
        ],
      ),
    );
  }
}
