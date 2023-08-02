import 'package:fleek_tech/constants/colors.dart';
import 'package:fleek_tech/constants/style.dart';
import 'package:fleek_tech/controller/ai/chatgpt.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/func/launch_url.dart';
import '../../controller/products/products_controller.dart';

class ProductPage extends StatelessWidget {
  final ProductsController scrollAnimationController =
      Get.put(ProductsController());

  ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProductsController());
    if (MediaQuery.of(context).size.width > 500) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Products'.tr),
            backgroundColor: AppColor.googleGreen,
            actions: [
              kIsWeb
                  ? Container()
                  : IconButton(
                      onPressed: () {
                        Get.defaultDialog(
                          title: 'Add products',
                          content: GetBuilder<ProductsController>(
                            builder: (controller) => Form(
                                key: controller.formKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: controller.titleController,
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          hintText: 'Product name'.tr,
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter a product name.'
                                                .tr;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller:
                                            controller.descriptionController,
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          hintText: 'Product description'.tr,
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter a product description.'
                                                .tr;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: controller.imgLink,
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          hintText: 'Product image link'.tr,
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter a product image link.'
                                                .tr;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: controller.productsLink,
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          hintText: 'Product link'.tr,
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter a product link.'
                                                .tr;
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    ElevatedButton(
                                      child: Text('Submit'.tr),
                                      onPressed: () {
                                        if (controller.formKey.currentState!
                                            .validate()) {
                                          controller.addProduct();
                                          Get.back();
                                        }
                                      },
                                    )
                                  ],
                                )),
                          ),
                        );
                      },
                      icon: const Icon(Icons.add),
                    ),
            ],
          ),
          body: GetBuilder<ProductsController>(
              builder: (controller) => SafeArea(
                      child: Center(
                    child: controller.isloading
                        ? const CircularProgressIndicator.adaptive()
                        : controller.data.isEmpty
                            ? Image.asset('assets/images/fleek.jpeg')
                            : GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisSpacing: 15,
                                        crossAxisCount: 3),
                                itemCount: controller.data.length,
                                itemBuilder: (context, index) {
                                  var res = controller.data[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () =>
                                          launchUrl1(res['productsLink']),
                                      child: Column(
                                        children: [
                                          Image.network(
                                            res['imgLink'],
                                            width: Get.width * .28,
                                          ),
                                          Text(res['title']),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                  ))));
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Products'.tr,
            style: AppStyle.title.copyWith(color: AppColor.googleGrey),
          ),
          backgroundColor: AppColor.googleprimaryColor,
          elevation: 0,
          actions: [
            kIsWeb
                ? Container()
                : IconButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: 'Add products',
                        content: GetBuilder<ProductsController>(
                          builder: (controller) => Form(
                              key: controller.formKey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: controller.titleController,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        hintText: 'Product name'.tr,
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter a product name.'
                                              .tr;
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller:
                                          controller.descriptionController,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        hintText: 'Product description'.tr,
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter a product description.'
                                              .tr;
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: controller.imgLink,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        hintText: 'Product image link'.tr,
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter a product image link.'
                                              .tr;
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: controller.productsLink,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        hintText: 'Product link'.tr,
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter a product link.'
                                              .tr;
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  ElevatedButton(
                                    child: Text('Submit'.tr),
                                    onPressed: () {
                                      if (controller.formKey.currentState!
                                          .validate()) {
                                        controller.addProduct();
                                        Get.back();
                                      }
                                    },
                                  )
                                ],
                              )),
                        ),
                      );
                    },
                    icon: const Icon(Icons.add),
                  ),
            GetBuilder<ProductsController>(
              builder: (controller) => IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chat_bubble_outline),
              ),
            )
          ],
        ),
        backgroundColor: AppColor.googleprimaryColor,
        body: GetBuilder<ProductsController>(
          builder: (controller) => SafeArea(
            child: Center(
              child: controller.isloading
                  ? const CircularProgressIndicator.adaptive()
                  : controller.data.isEmpty
                      ? Image.asset('assets/images/fleek.jpeg')
                      : ListView.builder(
                          itemCount: controller.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            var res = controller.data[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                elevation: 3,
                                child: InkWell(
                                  onTap: () => launchUrl1(res['productsLink']),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      Image.network(
                                        res['imgLink'],
                                        width: Get.width,
                                        fit: BoxFit.fitHeight,
                                        height: 200,
                                      ),
                                      Text(
                                        res['title'].toString(),
                                        style: AppStyle.title,
                                      ),
                                      Text(res['descriptions'].toString(),
                                          style: AppStyle.subtitle,
                                          maxLines: 2),
                                    ]),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
            ),
          ),
        ),
      );
    }
  }
}
