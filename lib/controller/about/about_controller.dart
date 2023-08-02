import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/links.dart';
import '../func/crud.dart';

class AboutController extends GetxController {
  final name = 'Hamza Ayed';
  final title = 'Manager and Mobile Developer';
  final certifications = [];
  final formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController courseraIdController = TextEditingController();
  TextEditingController dateEarnedController = TextEditingController();
  TextEditingController imageLinkController = TextEditingController();
  List data = [];
  @override
  void onInit() {
    getCertifications();
    super.onInit();
  }

  String dateEarned = DateTime.now().toString();
  bool isloading = false;

  void clearControllers() {
    titleController.clear();
    courseraIdController.clear();
    dateEarnedController.clear();
    imageLinkController.clear();
  }

  void addCertification() async {
    isloading = true;
    update();
    await CRUD().post(link: AppLink.addCertificate, payload: {
      'name': titleController.text.toString(),
      'coursera_id': courseraIdController.text,
      'date_earned': dateEarnedController.text,
      'imageLink': imageLinkController.text,
    });
    clearControllers();
    await getCertifications();
  }

  Future getCertifications() async {
    isloading = true;
    update();
    data = await CRUD().post(link: AppLink.getCertificate, payload: {});

    isloading = false;
    update();
  }

  void deleteCertification(String id) async {
    await CRUD().post(link: AppLink.deleteCertificate, payload: {"id": id});
  }
}
