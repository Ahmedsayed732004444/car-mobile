import 'package:flutter/material.dart';

import '../utils/constants/colors_constants.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily:'Tajawal',
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.secondaryColor,

    // appBarTheme: AppBarTheme(
    //   backgroundColor: primaryColor,
    //   foregroundColor: Colors.white,
    //   titleTextStyle: TextStyle(
    //     fontFamily: 'NotoKufiArabic',
    //     fontSize: 20,
    //     fontWeight: FontWeight.bold,
    //     color: Colors.white,
    //   ),
    //   centerTitle: true,
    //   elevation: 0,
    // ),
  );
}

