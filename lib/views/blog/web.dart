import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/style.dart';
import '../../controller/blog/blog_controller.dart';

GridView web(BlogController controller) {
  return GridView.builder(
    itemCount: controller.data.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      // childAspectRatio: 1,
      // crossAxisSpacing: 10,
      // mainAxisSpacing: 10,
    ),
    itemBuilder: (BuildContext context, int index) {
      var res = controller.data[index];
      return SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                Image.network(
                  res['image'],
                  fit: BoxFit.cover,
                ),
                Text(
                  res['title'].toString(),
                  style: AppStyle.title,
                ),
                Text(
                  res['content'].toString(),
                  style: AppStyle.subtitle,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
