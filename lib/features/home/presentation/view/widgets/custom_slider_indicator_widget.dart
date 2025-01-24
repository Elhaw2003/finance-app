import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/widgets/spacing_widget.dart';
import 'card_item_widget.dart';

class CustomSliderIndicatorWidget extends StatefulWidget {
  const CustomSliderIndicatorWidget({super.key,});

  @override
  State<CustomSliderIndicatorWidget> createState() => _CustomSliderIndicatorWidgetState();
}

class _CustomSliderIndicatorWidgetState extends State<CustomSliderIndicatorWidget> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> cardItems = [
      CardItemWidget()
    ];
    return Column(
      children: [
        CarouselSlider(
            items:  [
      CardItemWidget(),
      CardItemWidget(),
      CardItemWidget(),
    ],
            options: CarouselOptions(
              padEnds: false,
              height: 263.h,
              viewportFraction: 0.66,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.12,
              onPageChanged: (index,a){
                setState(() {
                  pageIndex = index;
                });
              },
              scrollDirection: Axis.horizontal,
            ),
        ),
        const HeightSpacing(height: 16),
        SmoothPageIndicator(
          controller: PageController(initialPage: pageIndex),
          count: 3,
          effect: ExpandingDotsEffect(
            spacing: 4.w,
            radius: 12.r,
            dotWidth: 8.w,
            dotHeight: 8.h,
            dotColor: AppColors.borderTextFieldColor,
            activeDotColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
