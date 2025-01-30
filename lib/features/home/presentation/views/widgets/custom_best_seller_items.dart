import 'package:book_app/core/routes/routes_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        GoRouter.of(context).push(RoutesApp.bookDetails);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .13,
              child: CustomListItems(imageUrl: 'https://th.bing.com/th?q=%d8%b5%d9%88%d8%b1+%d9%83%d8%aa%d8%a8+%d9%83%d8%aa%d8%a7%d8%a8&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247',),
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
