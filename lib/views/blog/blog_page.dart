import 'package:fleek_tech/constants/colors.dart';
import 'package:fleek_tech/constants/style.dart';
import 'package:fleek_tech/controller/blog/blog_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mobile.dart';
import 'web.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BlogController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Blogger'.tr),
        backgroundColor: AppColor.googleprimaryColor,
        actions: [
          MediaQuery.of(context).size.width < 500
              ? IconButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: 'Add Post'.tr,
                        content: GetBuilder<BlogController>(
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
                                      controller: controller.contentController,
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
                                      controller: controller.imageController,
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
                                  ElevatedButton(
                                    child: Text('Submit'.tr),
                                    onPressed: () {
                                      if (controller.formKey.currentState!
                                          .validate()) {
                                        controller.addBlog();
                                        Get.back();
                                      }
                                    },
                                  )
                                ],
                              )),
                        ));
                  },
                  icon: const Icon(Icons.add),
                )
              : const SizedBox()
        ],
      ),
      body: GetBuilder<BlogController>(builder: (controller) {
        return Center(
          child: controller.isloading
              ? const CircularProgressIndicator.adaptive()
              : controller.data.isEmpty
                  ? Image.asset('assets/images/fleek.jpeg')
                  : MediaQuery.of(context).size.width > 500
                      ? web(controller)
                      : mobile(controller),
        );
        // : Center(child: Text('No blogs found'));
      }),
    );
  }
}
