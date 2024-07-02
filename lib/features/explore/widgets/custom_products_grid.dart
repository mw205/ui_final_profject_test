import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomProductsGrid extends StatelessWidget {
  const CustomProductsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      crossAxisCount: 2,
      mainAxisSpacing: 16.h,
      crossAxisSpacing: 16.w,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(top: index % 2 == 0 ? 0 : 22.h),
          width: 164.w,
          height: index % 2 == 0 ? 194.h : 228.h,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Color(0xffC4C4C4), blurRadius: 13)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              20.r,
            ),
          ),
        );
      },
    );
  }
}
