import 'package:fleek_tech/constants/colors.dart';
import 'package:fleek_tech/constants/style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/about/about_controller.dart';

class About extends StatelessWidget {
  About({super.key});

  final controller = Get.put(AboutController());

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 500) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.googleprimaryColor,
          elevation: 0,
          title: Text('About'.tr),
          actions: [
            kIsWeb
                ? Container()
                : GetBuilder<AboutController>(
                    builder: (controller) => IconButton(
                          onPressed: () {
                            Get.defaultDialog(
                                title: 'Add Certificate'.tr,
                                content: Form(
                                    key: controller.formKey,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            controller:
                                                controller.titleController,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText: 'Certification name'.tr,
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter a certification name.'
                                                    .tr
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
                                                controller.courseraIdController,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText: 'Coursera ID'.tr,
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter a Coursera ID.'
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
                                                controller.dateEarnedController,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText: 'Date earned'.tr,
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter a date earned.'
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
                                                controller.imageLinkController,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText: 'Image link'.tr,
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter an image link.'
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
                                              controller.addCertification();
                                              Get.back();
                                            }
                                          },
                                        )
                                      ],
                                    )));
                          },
                          icon: const Icon(Icons.add),
                        )),
          ],
        ),
        body: GetBuilder<AboutController>(
            builder: (controller) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 80,
                                backgroundImage:
                                    AssetImage('assets/images/hamza.jpg')),
                            SizedBox(
                              width: 40,
                            ),
                            CircleAvatar(
                                radius: 80,
                                backgroundImage:
                                    AssetImage('assets/images/fleek.jpeg')),
                          ],
                        ),
                        Text(
                          'About Us'.tr,
                          style: const TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Hamza Ayed is the founder and CEO of Mobile Apps Development and Data Analysis Solutions. He has over 6 years of experience in the IT industry, and has a passion for helping businesses succeed through technology. Hamza is a certified Google Data Analyst, IBM Data Analyst, and Meta Backend Developer. He has a Bachelor of Science degree in Mathematics from the University of Jordan.'
                              .tr,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Our company provides a wide range of services, including:'
                              .tr,
                        ),
                        ...[
                          Text('Mobile app development'.tr),
                          Text('Data analysis'.tr),
                          Text('Backend development'.tr),
                          Text('Websites development'.tr),
                        ],
                        SizedBox(
                          height: 700,
                          child: controller.isloading
                              ? const Center(
                                  child: CircularProgressIndicator.adaptive())
                              : GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                  ),
                                  itemCount: controller.data.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var res = controller.data[index];
                                    return Card(
                                      elevation: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.all(14),
                                        child: Stack(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Get.defaultDialog(
                                                    title:
                                                        res['name'].toString(),
                                                    content: Image.network(
                                                      res['imageLink'],
                                                      width: Get.width * .8,
                                                      height: Get.height * .8,
                                                      // fit: BoxFit.contain,
                                                    ));
                                              },
                                              child: Image.network(
                                                res['imageLink'].toString(),
                                                fit: BoxFit.cover,
                                                width: Get.width * .8,
                                                height: Get.height * .8,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 5,
                                              child: Container(
                                                color: AppColor.googleBlack
                                                    .withOpacity(.4),
                                                child: Text(
                                                  res['name'].toString(),
                                                  style: AppStyle.title,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                        ),
                      ],
                    ),
                  ),
                )),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.googleprimaryColor,
          elevation: 0,
          title: Text('About'.tr),
          actions: [
            kIsWeb
                ? Container()
                : GetBuilder<AboutController>(
                    builder: (controller) => IconButton(
                          onPressed: () {
                            Get.defaultDialog(
                                title: 'Add Certificate'.tr,
                                content: Form(
                                    key: controller.formKey,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            controller:
                                                controller.titleController,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText: 'Certification name'.tr,
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter a certification name.'
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
                                                controller.courseraIdController,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText: 'Coursera ID'.tr,
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter a Coursera ID.'
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
                                                controller.dateEarnedController,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText: 'Date earned'.tr,
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter a date earned.'
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
                                                controller.imageLinkController,
                                            decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              hintText: 'Image link'.tr,
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter an image link.'
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
                                              controller.addCertification();
                                              Get.back();
                                            }
                                          },
                                        )
                                      ],
                                    )));
                          },
                          icon: const Icon(Icons.add),
                        )),
          ],
        ),
        body: GetBuilder<AboutController>(
            builder: (controller) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 80,
                                backgroundImage:
                                    AssetImage('assets/images/hamza.jpg')),
                            SizedBox(
                              width: 40,
                            ),
                            CircleAvatar(
                                radius: 80,
                                backgroundImage:
                                    AssetImage('assets/images/fleek.jpeg')),
                          ],
                        ),
                        Text(
                          'About US'.tr,
                          style: const TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Hamza Ayed is the founder and CEO of Mobile Apps Development and Data Analysis Solutions. He has over 6 years of experience in the IT industry, and has a passion for helping businesses succeed through technology. Hamza is a certified Google Data Analyst, IBM Data Analyst, and Meta Backend Developer. He has a Bachelor of Science degree in Mathematics from the University of Jordan.'
                              .tr,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Our company provides a wide range of services, including:'
                              .tr,
                        ),
                        ...[
                          Text('Mobile app development'.tr),
                          Text('Data analysis'.tr),
                          Text('Backend development'.tr),
                          Text('Websites development'.tr),
                        ],
                        SizedBox(
                          height: 700,
                          child: controller.isloading
                              ? const Center(
                                  child: CircularProgressIndicator.adaptive())
                              : GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                  ),
                                  itemCount: controller.data.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var res = controller.data[index];
                                    return Card(
                                      elevation: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.all(14),
                                        child: Stack(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Get.defaultDialog(
                                                    title:
                                                        res['name'].toString(),
                                                    content: Hero(
                                                      tag: res['name'],
                                                      child: Image.network(
                                                        res['imageLink'],
                                                        width: Get.width * .8,
                                                        height: Get.height * .8,
                                                        // fit: BoxFit.contain,
                                                      ),
                                                    ));
                                              },
                                              child: Hero(
                                                tag: res['imageLink'],
                                                child: Image.network(
                                                  res['imageLink'],
                                                  fit: BoxFit.cover,
                                                  width: Get.width * .8,
                                                  height: Get.height * .8,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 5,
                                              child: Container(
                                                color: AppColor.googleBlack
                                                    .withOpacity(.4),
                                                child: Text(
                                                  res['name'].toString(),
                                                  style: AppStyle.title,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                        ),
                      ],
                    ),
                  ),
                )),
      );
    }
  }
}
