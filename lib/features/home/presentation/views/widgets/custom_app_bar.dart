import 'package:flutter/material.dart';

import '../../../../../core/constants/images_app.dart';

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
              onPressed: () {},
              icon: Icon(
                size: 25,
                Icons.search,
              ))
        ],
      ),
    );
  }
}
