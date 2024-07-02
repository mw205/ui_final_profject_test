import 'package:flutter/material.dart';
import 'package:ui_final_project_test/core/themes/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: MyColors.primaryColor,
      ),
    );
  }
}
