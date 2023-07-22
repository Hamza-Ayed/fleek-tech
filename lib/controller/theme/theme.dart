import 'package:flutter/material.dart';

import '../../constants/colors.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColor.googleBlack),
      displayMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
          color: AppColor.googleBlack),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.googleGrey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium:
          TextStyle(height: 2, color: AppColor.googleGrey, fontSize: 14)),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColor.googleBlack),
      displayMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
          color: AppColor.googleBlack),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.googleGrey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium:
          TextStyle(height: 2, color: AppColor.googleGrey, fontSize: 14)),
  primarySwatch: Colors.blue,
);
