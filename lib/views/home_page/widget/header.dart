import 'package:fleek_tech/views/about/about.dart';
import 'package:fleek_tech/views/blog/blog_page.dart';
import 'package:fleek_tech/views/products/product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../controller/home/home_controller.dart';
import '../../contact/conta_us_page.dart';
import 'mytext_btn.dart';

class Header extends StatelessWidget {
  Header({
    super.key,
  });
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 500) {
      return Container(
        color: AppColor.googleBackgroundcolor,
        height: 80,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/fleek.jpeg',
                  width: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextButton(
                      title: "About US",
                      onPressed: () {
                        Get.to(() => About());
                      },
                    ),
                    MyTextButton(
                      title: "Contact US",
                      onPressed: () {
                        Get.to(() => const ContaUsPage());
                      },
                    ),
                    MyTextButton(
                      title: "Blog",
                      onPressed: () {
                        Get.to(() => BlogPage());
                      },
                    ),
                    MyTextButton(
                      title: "Products",
                      onPressed: () {
                        Get.to(() => ProductPage());
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.phone,
                        color: AppColor.googleBlue,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.email_outlined,
                        color: AppColor.googleRed,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.book_rounded,
                        color: AppColor.googleprimaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      );
    } else {
      return Container(
        color: AppColor.googleBackgroundcolor,
        height: 80,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/fleek.jpeg',
                  width: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextButton(
                      title: "About US",
                      onPressed: () {
                        Get.to(() => About());
                      },
                    ),
                    MyTextButton(
                      title: "Contact US",
                      onPressed: () {
                        Get.to(() => const ContaUsPage());
                      },
                    ),
                    MyTextButton(
                      title: "Blog",
                      onPressed: () {
                        Get.to(() => const BlogPage());
                      },
                    ),
                    MyTextButton(
                      title: "Products",
                      onPressed: () {
                        Get.to(() => ProductPage());
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.phone,
                        color: AppColor.googleBlue,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.email_outlined,
                        color: AppColor.googleRed,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.book_rounded,
                        color: AppColor.googleprimaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      );
    }
  }
}
