import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project_test/core/themes/strings.dart';
import 'package:ui_final_project_test/core/themes/styles.dart';
import 'package:ui_final_project_test/features/home/widgets/categories_list_view.dart';
import 'package:ui_final_project_test/features/home/widgets/popular_deals_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Image.asset(
          MyStrings.homeCoverImage,
          height: 139.h,
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: MyStyles.font22BrownW400,
              ),
              Text(
                'See All',
                style: MyStyles.font18OrangeW400,
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        const CategoriesListView(),
        SizedBox(height: 40.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular deals',
                style: MyStyles.font22BrownW400,
              ),
              Text(
                'See All',
                style: MyStyles.font18OrangeW400,
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        const PopularDealsListView(),
      ],
    );
  }
}
