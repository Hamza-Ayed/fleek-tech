import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/colors.dart';
import '../../../constants/style.dart';
import '../../../controller/home/home_controller.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('© ${controller.date} Mobile App Store',
                style: AppStyle.subtitle
                    .copyWith(color: AppColor.googleBackgroundcolor)),
            const SizedBox(width: 10),
            Row(
              children: [
                InkWell(
                  onTap: () async => await launchUrl(
                      Uri.parse('https://www.linkedin.com/in/hamza-ayed/')),
                  child: Image.network(
                      'https://cdn1.iconfinder.com/data/icons/logotypes/32/circle-linkedin-512.png',
                      width: 32,
                      height: 32),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () async => await launchUrl(
                      Uri.parse('https://web.facebook.com/hamza.developed')),
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png',
                      width: 32,
                      height: 32),
                )
              ],
            ),
          ],
        ));
  }
}
