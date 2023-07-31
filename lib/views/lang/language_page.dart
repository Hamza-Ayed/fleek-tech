import 'package:fleek_tech/views/home_page/home_page.dart';
import 'package:fleek_tech/views/home_page/widget/mytext_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/local/localController.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Choose Language".tr,
                    style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 20),
                MyTextButton(
                  title: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.offAll(() => HomePage());
                  },
                ),
                MyTextButton(
                  title: "En",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.offAll(() => HomePage());
                  },
                ),
                MyTextButton(
                  title: "Tr",
                  onPressed: () {
                    controller.changeLang("tr");
                    Get.offAll(() => HomePage());
                  },
                ),
              ],
            )),
      ),
    );
  }
}
