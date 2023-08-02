import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/links.dart';
import '../func/crud.dart';

class BlogController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  bool isloading = false;
  List data = [];
  @override
  void onInit() {
    getBlogs();
    super.onInit();
  }

  void clearControllers() {
    titleController.clear();
    contentController.clear();
    imageController.clear();
  }

  addBlog() async {
    isloading = true;
    update();
    await CRUD().post(link: AppLink.addBlog, payload: {
      'title': titleController.text.toString(),
      'content': contentController.text,
      'image': imageController.text,
    });
    clearControllers();
    await getBlogs();
  }

  getBlogs() async {
    isloading = true;
    update();
    data = await CRUD().post(link: AppLink.getBlog, payload: {});
    isloading = false;
    update();
  }

  deleteBlogs(String id) async {
    Get.defaultDialog(
        title: 'Are you Sure to Delete ?',
        middleText: '',
        onConfirm: () async {
          Get.back();
          isloading = true;
          update();
          await CRUD().post(link: AppLink.deleteBlog, payload: {"id": id});
          getBlogs();
        });
  }
}
