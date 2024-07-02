import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_final_project_test/features/account/oreders_screen.dart';
import 'package:ui_final_project_test/features/account/views/profile_screen.dart';

import '../../../core/themes/strings.dart';
import '../../../core/themes/styles.dart';
import '../../../core/widgets/custom_back_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomTile> tiles = [
      CustomTile(
        title: "profile",
        leading: MyStrings.orangeProfileIcon,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ));
        },
      ),
      CustomTile(
        title: "orders",
        leading: MyStrings.ordersIcon,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OredersScreen(),
            ),
          );
        },
      ),
    ];
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
          leading: const CustomBackButton(),
          title: Text(
            "Account",
            style: MyStyles.font24OrangeW700,
          ),
          centerTitle: true),
      body: ListView.builder(
          itemCount: 2, itemBuilder: (context, index) => tiles[index]),
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.title,
    required this.leading,
    required this.onTap,
    this.trailing,
  });
  final String title;
  final String leading;
  final Widget? trailing;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: trailing,
      leading: SvgPicture.asset(
        leading,
      ),
      minLeadingWidth: 32.w,
      title: Text(
        title,
        style: MyStyles.font18BrownW700,
      ),
    );
  }
}
