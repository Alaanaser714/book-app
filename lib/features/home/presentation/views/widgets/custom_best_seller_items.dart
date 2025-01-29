import 'package:book_app/core/routes/routes_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_list_items.dart';

class CustomBestSelleritems extends StatelessWidget {
  const CustomBestSelleritems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RoutesApp.bookDetails);
      },
      child: Padding(
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
                    Row(
                      children: [
                        Text(
                          r"19.99$",
                          style: Styles.textstyle18,
                          maxLines: 2,
                        ),
                        Spacer(),
                        BookRating(
                          mainAxisAlignment: MainAxisAlignment.end,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
