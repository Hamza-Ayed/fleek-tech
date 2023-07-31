import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppStyle {
  static TextStyle headTitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 40,
      color: AppColor.googleGreen,
      fontFamily: GoogleFonts.pacifico().fontFamily);
  static TextStyle headtitle2 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.googleBlue,
      fontFamily: GoogleFonts.eduSaBeginner().fontFamily);
  static TextStyle title = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: AppColor.googleBlack,
      fontFamily: GoogleFonts.roboto().fontFamily);
  static TextStyle subtitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13,
      color: AppColor.googleBlack,
      fontFamily: GoogleFonts.roboto().fontFamily);
  static TextStyle number = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColor.googleBlack,
      fontFamily: GoogleFonts.roboto().fontFamily);
}
