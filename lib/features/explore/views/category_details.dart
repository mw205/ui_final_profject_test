import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_final_project_test/core/themes/colors.dart';

import '../../../core/themes/strings.dart';
import '../../../core/themes/styles.dart';
import '../../../core/widgets/custom_back_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../widgets/custom_products_grid.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabs = List.generate(
      10,
      (index) => "Fruits",
    );
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: const CustomBackButton(),
        title: Text(
          "Fruits",
          style: MyStyles.font24OrangeW700,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100.h),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextFormField(
                  hintText: "Search",
                  prefixIcon: Transform.scale(
                    scale: 0.4,
                    child: SvgPicture.asset(MyStrings.searchIcon),
                  ),
                ),
              ),
              DefaultTabController(
                length: tabs.length,
                child: TabBar(
                  tabAlignment: TabAlignment.start,
                  indicatorColor: MyColors.primaryColor,
                  dividerColor: Color(0xff6D38050F).withOpacity(0.06),
                  isScrollable: true,
                  tabs: List.generate(
                    tabs.length,
                    (index) => Tab(
                      child: Text(
                        tabs[index],
                        style: MyStyles.font20BrownW400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: CustomProductsGrid(),
    );
  }
}
