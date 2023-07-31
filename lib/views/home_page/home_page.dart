import 'package:fleek_tech/constants/colors.dart';
import 'package:fleek_tech/constants/style.dart';
import 'package:fleek_tech/controller/home/home_controller.dart';
import 'package:fleek_tech/views/home_page/widget/circle_avatar.dart';
import 'package:fleek_tech/views/home_page/widget/mytext_btn.dart';
import 'package:fleek_tech/views/products/product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/contact_footer.dart';
import 'widget/footer.dart';
import 'widget/header.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 500) {
      return Scaffold(
        backgroundColor: AppColor.googleBackgroundcolor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Header(),
              Container(
                color: AppColor.googleprimaryColor,
                height: 200,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/3274408.jpg',
                      width: Get.width,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Text('Fleek-tech company',
                              style: AppStyle.headTitle),
                        ),
                        Text(
                          'Creating user-friendly, secure, and high-performance Android and iOS mobile apps \n& websites with Flutter, PHP and Python',
                          style: AppStyle.title,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                color: const Color(0xffE0E0E0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/photo_2023-07-27_16-12-53.jpg',
                      width: Get.width * .7,
                      height: 700,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "About US".tr,
                      style: AppStyle.headtitle2,
                    ),
                    Text(
                      "Welcome".tr,
                      style: AppStyle.headTitle,
                    ),
                    Text(
                      "Let us make things easier for you--we provide mobile apps, websites, and data analytics for your company or job"
                          .tr,
                      style: AppStyle.title,
                    ),
                  ],
                ),
              ),
              Text(
                "What we can do".tr,
                style: AppStyle.headtitle2,
              ),
              Text(
                "Our services".tr,
                style: AppStyle.headTitle,
              ),
              Text(
                "All our services are available for you!".tr,
                style: AppStyle.title,
              ),
              const CircleAvatarList(),
              const SizedBox(
                height: 60,
              ),
              MyTextButton(
                title: "Book Now".tr,
              ),
              const SizedBox(
                height: 60,
              ),
              ContactFooter(controller: controller),
              const SizedBox(
                height: 50,
              ),
              Footer(controller: controller),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.googleBlue,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone,
                color: AppColor.googleBackgroundcolor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.email_outlined,
                color: AppColor.googleBackgroundcolor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.book_rounded,
                color: AppColor.googleBackgroundcolor,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColor.googleBlue,
                ),
                child: Text('Fleek Tech'),
              ),
              ListTile(
                title: const Text('About US'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Contact US'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Blog'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Products'),
                onTap: () {
                  Get.to(() => ProductPage());
                },
              ),
            ],
          ),
        ),
        backgroundColor: AppColor.googleBackgroundcolor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Header(),
              Container(
                color: AppColor.googleprimaryColor,
                height: 200,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/3274408.jpg',
                      width: Get.width,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Text('Fleek-tech company',
                              style: AppStyle.headTitle),
                        ),
                        Text(
                          'Creating user-friendly, secure, and high-performance Android and iOS mobile apps \n& websites with Flutter, PHP and Python',
                          style: AppStyle.title,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                color: const Color(0xffE0E0E0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/pexels.jpg',
                      width: Get.width * .7,
                    ),
                    Text(
                      "About US".tr,
                      style: AppStyle.headtitle2,
                    ),
                    Text(
                      "Welcome".tr,
                      style: AppStyle.headTitle,
                    ),
                    Text(
                      "Let us make things easier for you--we provide mobile apps, websites, and data analytics for your company or job"
                          .tr,
                      style: AppStyle.title,
                    ),
                  ],
                ),
              ),
              Text(
                "What we can do".tr,
                style: AppStyle.headtitle2,
              ),
              Text(
                "Our services".tr,
                style: AppStyle.headTitle,
              ),
              Text(
                "All our services are available for you!".tr,
                style: AppStyle.title,
              ),
              SizedBox(
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatarWidget(
                        img:
                            'assets/images/close-up-mobile-phone-with-cloud-apps.jpg',
                        title: 'Android apps'.tr,
                        txt1: 'Design and development of new Android apps'.tr,
                        txt2: 'Customization of Android apps'.tr,
                        txt3:
                            'We offer a wide range of Android app development services.'
                                .tr,
                      ),
                      CircleAvatarWidget(
                          img: 'assets/images/3133153.jpg',
                          title: 'iOS apps'.tr,
                          txt1: 'Design and development of new iOS apps'.tr,
                          txt2: 'Customization of iOS apps'.tr,
                          txt3: 'App store submission and marketing'.tr),
                      CircleAvatarWidget(
                        img: 'assets/images/529.jpg',
                        title: 'Data Analysis'.tr,
                        txt1: 'Data collection and cleaning'.tr,
                        txt2: 'Data visualization'.tr,
                        txt3: 'Statistical analysis'.tr,
                      ),
                      CircleAvatarWidget(
                        img: 'assets/images/pexels-cottonbro-7439129.jpg',
                        title: 'Creating Websites'.tr,
                        txt1: 'Design and development of new websites'.tr,
                        txt2: 'Migration of existing websites'.tr,
                        txt3: 'Maintenance and support of websites'.tr,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              MyTextButton(
                title: "Book Now".tr,
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColor.googleYellow,
                      AppColor.googleGreen,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Contact".tr,
                          style: AppStyle.headtitle2,
                        ),
                        Text(
                          "Have a question?".tr,
                          style: AppStyle.headTitle,
                        ),
                        Text(
                          "Contact us whenever you have any \nquestions. We are always here for you!"
                              .tr,
                          style: AppStyle.title,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              Text(
                                "Email",
                                style: AppStyle.headtitle2,
                              ),
                              Text(
                                "admin@fleek-tech.com",
                                style: AppStyle.title,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Text(
                                "Phone",
                                style: AppStyle.headtitle2,
                              ),
                              Text(
                                "+962798583052",
                                style: AppStyle.title,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Text(
                                "Address",
                                style: AppStyle.headtitle2,
                              ),
                              Text(
                                "Jordan Street, Amman, Amman Governorate",
                                style: AppStyle.title,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: AppColor.googleGreen,
                        style: BorderStyle.solid,
                      )),
                      child: Form(
                          key: controller.formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: controller.firstName,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: 'First name'.tr,
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your first name.'.tr;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: controller.lastName,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: 'Last name'.tr,
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your last name.'.tr;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: controller.phoneNumber,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: 'Phone number'.tr,
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your phone number.'
                                          .tr;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: controller.email,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: 'Email address'.tr,
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty &&
                                        !value.contains('@')) {
                                      return 'Please enter your email address.'
                                          .tr;
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: controller.notes,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: 'Notes'.tr,
                                  ),
                                ),
                              ),
                              MyTextButton(
                                title: 'Submit'.tr,
                                onPressed: () {
                                  if (controller.formKey.currentState != null) {
                                    if (controller.formKey.currentState!
                                        .validate()) {
                                      controller.insertNote();
                                    }
                                  }
                                },
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      );
    }
  }
}

class CircleAvatarList extends StatelessWidget {
  const CircleAvatarList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatarWidget(
              img: 'assets/images/close-up-mobile-phone-with-cloud-apps.jpg',
              title: 'Android apps'.tr,
              txt1: 'Design and development of new Android apps'.tr,
              txt2: 'Customization of Android apps'.tr,
              txt3: 'We offer a wide range of Android app development services.'
                  .tr,
            ),
            CircleAvatarWidget(
                img: 'assets/images/3133153.jpg',
                title: 'iOS apps'.tr,
                txt1: 'Design and development of new iOS apps'.tr,
                txt2: 'Customization of iOS apps'.tr,
                txt3: 'App store submission and marketing'.tr),
            CircleAvatarWidget(
              img: 'assets/images/529.jpg',
              title: 'Data Analysis'.tr,
              txt1: 'Data collection and cleaning'.tr,
              txt2: 'Data visualization'.tr,
              txt3: 'Statistical analysis'.tr,
            ),
            CircleAvatarWidget(
              img: 'assets/images/pexels-cottonbro-7439129.jpg',
              title: 'Creating Websites'.tr,
              txt1: 'Design and development of new websites'.tr,
              txt2: 'Migration of existing websites'.tr,
              txt3: 'Maintenance and support of websites'.tr,
            ),
          ],
        ),
      ),
    );
  }
}
