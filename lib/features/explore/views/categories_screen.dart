import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:ui_final_project_test/core/themes/strings.dart';
import 'package:ui_final_project_test/core/themes/styles.dart';
import 'package:ui_final_project_test/core/widgets/custom_text_form_field.dart';
import 'package:ui_final_project_test/features/home/widgets/categories_list_view.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: const SizedBox(),
            title: Text(
              "Categories",
              style: MyStyles.font24OrangeW700,
            ),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextFormField(
                hintText: "Search",
                prefixIcon: Transform.scale(
                    scale: 0.4, child: SvgPicture.asset(MyStrings.searchIcon)),
              ),
            ),
          ),
          SliverGap(29.h),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 12,
                (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 33.h),
                    child: CategoryItem(),
                  );
                },
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 0.8))
        ],
      ),
    );
  }
}
