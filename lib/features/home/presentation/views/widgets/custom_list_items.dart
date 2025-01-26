import 'package:flutter/material.dart';

import '../../../../../core/constants/images_app.dart';

class CustomListItems extends StatelessWidget {
  const CustomListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      ImagesApp.testImages,
                    ))),
          ),
        ),
      ),
    );
  }
}
