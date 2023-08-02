import 'package:flutter/material.dart';

import '../../constants/style.dart';
import '../../controller/blog/blog_controller.dart';

ListView mobile(BlogController controller) {
  return ListView.builder(
    itemCount: controller.data.length,
    itemBuilder: (BuildContext context, int index) {
      var res = controller.data[index];
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onLongPress: () => controller.deleteBlogs(res['id'].toString()),
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                Image.network(
                  res['image'],
                  fit: BoxFit.fill,
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
