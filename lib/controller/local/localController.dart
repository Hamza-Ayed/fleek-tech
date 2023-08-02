import 'package:fleek_tech/constants/box_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../main.dart';
import '../theme/theme.dart';

class LocaleController extends GetxController {
  Locale? language;

  ThemeData appTheme = themeEnglish;

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    box.write(BoxName.lang, langcode);
    appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
    update();
  }

  @override
  void onInit() {
    if (box.read(BoxName.lang) == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (box.read(BoxName.lang) == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else if (box.read(BoxName.lang) == "tr") {
      language = const Locale("tr");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}
