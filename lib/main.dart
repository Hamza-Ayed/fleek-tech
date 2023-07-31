import 'package:fleek_tech/views/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'constants/box_name.dart';
import 'controller/local/localController.dart';
import 'controller/local/translate.dart';
import 'views/lang/language_page.dart';

final box = GetStorage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
        title: 'Fleek-tech',
        translations: MyTranslation(),
        debugShowCheckedModeBanner: false,
        locale: controller.language,
        theme: controller.appTheme,
        key: UniqueKey(),
        // routes: {'/':const HomePage()},
        home: box.read(BoxName.lang).toString() != 'ar' &&
                box.read(BoxName.lang).toString() != 'en'
            ? const Language()
            : HomePage());
  }
}
