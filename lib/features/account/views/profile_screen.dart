import 'package:flutter/material.dart';
import 'package:ui_final_project_test/core/themes/strings.dart';
import 'package:ui_final_project_test/features/account/views/account_screen%20.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';
import '../../../core/widgets/custom_back_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomTile> tiles = [
      CustomTile(
        title: "Edit Profile",
        leading: MyStrings.orangeProfileIcon,
        onTap: () {},
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: MyColors.secondaryColor,
        ),
      ),
      CustomTile(
        title: "Edit Profile",
        leading: MyStrings.orangeProfileIcon,
        onTap: () {},
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: MyColors.secondaryColor,
        ),
      ),
      CustomTile(
        title: "Edit Profile",
        leading: MyStrings.orangeProfileIcon,
        onTap: () {},
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: MyColors.secondaryColor,
        ),
      ),
      CustomTile(
        title: "Edit Profile",
        leading: MyStrings.orangeProfileIcon,
        onTap: () {},
        trailing: Switch(
          activeTrackColor: MyColors.primaryColor,
          value: true,
          onChanged: (value) {},
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: const CustomBackButton(),
        title: Text(
          "Profile",
          style: MyStyles.font24OrangeW700,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tiles.length,
        itemBuilder: (context, index) {
          if (index == 2) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                tiles[index],
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    "App Settings",
                    style: MyStyles.font22BrownW400,
                  ),
                )
              ],
            );
          }
          return tiles[index];
        },
      ),
    );
  }
}
