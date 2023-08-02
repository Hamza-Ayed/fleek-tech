import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/style.dart';
import '../../../controller/home/home_controller.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    super.key,
    required this.img,
    required this.title,
    required this.txt1,
    required this.txt2,
    required this.txt3,
  });
  final String img, title, txt1, txt2, txt3;
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    var width = MediaQuery.of(context).size.width;
    return GetBuilder<HomeController>(
        builder: (controller) => InkWell(
              child: width < 500
                  ? AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: Get.width * .5,
                      height: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              radius: 80, backgroundImage: AssetImage(img)),
                          Text(
                            title,
                            style: AppStyle.headtitle2,
                          ),
                          Column(
                            children: [
                              Text(
                                txt1,
                                textAlign: TextAlign.left,
                                style: AppStyle.title,
                              ),
                              Text(
                                txt2,
                                textAlign: TextAlign.left,
                                style: AppStyle.title,
                              ),
                              Text(
                                txt3,
                                textAlign: TextAlign.left,
                                style: AppStyle.title,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: Get.width * .23,
                      height: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                              radius: 80, backgroundImage: AssetImage(img)),
                          Text(
                            title,
                            style: AppStyle.headtitle2,
                          ),
                          Column(
                            children: [
                              Text(
                                txt1,
                                textAlign: TextAlign.left,
                                style: AppStyle.title,
                              ),
                              Text(
                                txt2,
                                textAlign: TextAlign.left,
                                style: AppStyle.title,
                              ),
                              Text(
                                txt3,
                                textAlign: TextAlign.left,
                                style: AppStyle.title,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
            ));
  }
}
