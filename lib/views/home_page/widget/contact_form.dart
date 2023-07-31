import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../controller/home/home_controller.dart';
import 'mytext_btn.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
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
                      return 'Please enter your phone number.'.tr;
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
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address.'.tr;
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address.'.tr;
                    }
                    return null;
                  },
                ),
              ),
              MyTextButton(
                title: 'Submit'.tr,
                onPressed: () {
                  if (controller.formKey.currentState!.validate()) {
                    controller.insertNote();
                  }
                },
              )
            ],
          )),
    );
  }
}
