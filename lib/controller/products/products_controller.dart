import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/links.dart';
import '../func/crud.dart';

class ProductsController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController imgLink = TextEditingController();
  TextEditingController productsLink = TextEditingController();
  TextEditingController promot = TextEditingController();
  List data = [];
  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  bool isloading = false;

  List res = [];

  void clearControllers() {
    titleController.clear();
    descriptionController.clear();
    imgLink.clear();
    productsLink.clear();
  }

  addProduct() async {
    isloading = true;
    update();
    await CRUD().post(link: AppLink.addProducts, payload: {
      'title': titleController.text.toString(),
      'descriptions': descriptionController.text,
      'imgLink': imgLink.text,
      'productsLink': productsLink.text,
    });
    clearControllers();
    await getProducts();
  }

  getProducts() async {
    isloading = true;
    update();
    data = await CRUD().post(link: AppLink.getProducts, payload: {});
    isloading = false;
    update();
  }

  deleteProducts() async {
    await CRUD().post(link: AppLink.deleteProduct, payload: {"id": '27'});
  }
}
