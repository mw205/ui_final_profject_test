import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project_test/core/themes/colors.dart';
import 'package:ui_final_project_test/core/widgets/custom_text_button.dart';
import 'package:ui_final_project_test/core/widgets/custom_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          hintText: 'Name',
        ),
        SizedBox(height: 10.h),
        const CustomTextFormField(
          hintText: 'Email',
        ),
        SizedBox(height: 10.h),
        CustomTextFormField(
          hintText: 'Password',
          suffixIcon: Icon(
            Icons.visibility_outlined,
            color: MyColors.primaryColor,
            size: 22.sp,
          ),
          isObscureText: true,
        ),
        SizedBox(height: 10.h),
        CustomTextFormField(
          hintText: 'Confirm Password',
          isObscureText: true,
          suffixIcon: Icon(
            Icons.visibility_outlined,
            color: MyColors.primaryColor,
            size: 22.sp,
          ),
        ),
        SizedBox(height: 20.h),
        const CustomTextButton(
          text: 'Sign Up',
        ),
      ],
    );
  }
}
