import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project_test/core/themes/strings.dart';
import 'package:ui_final_project_test/core/themes/styles.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            end: 15.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundColor: const Color(0xffEDD0FF),
                child: Image.asset(
                  MyStrings.fruitsImage,
                  height: 83.h,
                ),
              ),
              Text(
                'Fruits',
                style: MyStyles.font16BrownW400,
              ),
            ],
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
