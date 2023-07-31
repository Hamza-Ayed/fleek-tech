import 'package:fleek_tech/constants/colors.dart';
import 'package:fleek_tech/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home/home_controller.dart';

class MyTextButton extends StatelessWidget {
  MyTextButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final void Function()? onPressed;
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: TextButton(
        onPressed: onPressed,
        onHover: (value) => controller.onHover(),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(null),
          fixedSize: MaterialStateProperty.all(null),
          maximumSize: MaterialStateProperty.all(null),
          iconColor: MaterialStateProperty.all(Colors.black),
          iconSize: MaterialStateProperty.all(18.0),
          side: MaterialStateProperty.all(
              const BorderSide(color: AppColor.googleGreen, width: 1.0)),
        ),
        clipBehavior: Clip.hardEdge,
        child: Text(
          title.tr,
          style: AppStyle.title,
        ),
      ),
    );
  }
}
