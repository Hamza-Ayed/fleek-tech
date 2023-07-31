import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/style.dart';
import '../../../controller/home/home_controller.dart';
import 'contact_form.dart';

class ContactFooter extends StatelessWidget {
  const ContactFooter({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        gradient: const LinearGradient(
          tileMode: TileMode.mirror,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColor.googleYellow,
            AppColor.googleGreen,
          ],
        ),
      ),
      child: Row(
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
          ContactForm(controller: controller)
        ],
      ),
    );
  }
}
