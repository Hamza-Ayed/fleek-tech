import 'package:fleek_tech/controller/func/crud.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/links.dart';

class HomeController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController notes = TextEditingController();
  bool isMenuOpen = false;
  bool isloading = false;
  List data = [];
  String date = DateTime.now().year.toString();
  double widtContainer = Get.width * .23;
  double heightContainer = Get.width * .3;
  bool hover = false;

  // void onHover() {
  //   hover = !hover;
  //   widtContainer = hover ? Get.width * .23 : Get.width * .25;
  //   heightContainer = hover ? Get.width * .27 : Get.width * .3;
  //   update();
  // }

  clearText() {
    firstName.clear();
    lastName.clear();
    phoneNumber.clear();
    email.clear();
    notes.clear();
  }

  Future insertNote() async {
    await CRUD().post(link: AppLink.sendOrderToMe, payload: {
      'firstName': firstName.text.toString(),
      'lastName': lastName.text,
      'phone': phoneNumber.text,
      'email': email.text,
      'orderNote': notes.text,
    });
    clearText();
  }

  Future insertName() async {
    await CRUD().post(link: AppLink.test, payload: {
      'name': firstName.text,
    });
  }

  getOrders() async {
    await CRUD().get(link: AppLink.getOrders, payload: {}).then((value) {
      data = value;
      isloading = false;
      update();
    });
  }
}
