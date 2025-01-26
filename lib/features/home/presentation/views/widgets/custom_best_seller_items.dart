import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';
import 'custom_best_seller.dart';
import 'custom_list_items.dart';

class CustomBestSelleritems extends StatelessWidget {
  const CustomBestSelleritems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .13,
            child: CustomListItems(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Poter and the Global of Fire",
                      style: Styles.textstyle20,
                      maxLines: 2,
                    ),
                  ),
                  Text(
                    "J.K Rolling",
                    style: Styles.textstyle18,
                    maxLines: 2,
                  ),
                  CustomBestSeller()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
