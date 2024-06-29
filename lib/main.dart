import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_final_project_test/core/themes/colors.dart';
import 'package:ui_final_project_test/features/layout/layout_screen.dart';
import 'package:ui_final_project_test/features/sign_in/sign_in_screen.dart';
import 'package:ui_final_project_test/features/sign_up/sign_up_screen.dart';
import 'package:ui_final_project_test/features/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: MyColors.primaryColor,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
          fontFamily: 'ABZ',
        ),
        debugShowCheckedModeBanner: false,
        home: const LayoutScreen(),
      ),
    );
  }
}
