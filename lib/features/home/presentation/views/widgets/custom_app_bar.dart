import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/images_app.dart';
import '../../../../../core/routes/routes_app.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImagesApp.splashImages,
            width: MediaQuery.of(context).size.width * .2,
          ),
          IconButton(
              onPressed: () {
                Get.toNamed(RoutesApp.searchScreen);
              },
              icon: Icon(
                size: 30,
                Icons.search,
              ))
        ],
      ),
    );
  }
}
