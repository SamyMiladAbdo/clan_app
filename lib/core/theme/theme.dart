import 'package:clan_app/core/constants/color.dart';
import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  fontFamily: "Tajawal",
  primaryColor: AppColors.tertiary,

  //  primarySwatch: AppColors.tertiary,
  colorScheme: const ColorScheme.light(
    primary: AppColors.tertiary,
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      return AppColors.tertiary;
    }),
    overlayColor: WidgetStateProperty.resolveWith((states) {
      return AppColors.tertiary;
    }),
  ),
  scaffoldBackgroundColor: const Color(0xFFFEFEFE),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.offWhite,
    // elevation: 0,
    // iconTheme: IconThemeData(
    //   color: Colors.black,
    // ),
  ),
);
