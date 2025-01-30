import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_actions_buttons.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_list_view_book_details.dart';
import 'package:flutter/material.dart';

import 'appbar_book_details.dart';
import 'custom_list_items.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarBookDetails(),
            CustomListItems(imageUrl: 'https://th.bing.com/th?q=%d8%b5%d9%88%d8%b1+%d9%83%d8%aa%d8%a8+%d9%83%d8%aa%d8%a7%d8%a8&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247',),
            SizedBox(height: 20),
            Text(
              "The Jungle Book",
              style: Styles.textstyle30,
            ),
            SizedBox(height: 5),
            Text(
              "Rudyard Kilping",
              style: Styles.textstyle20,
            ),
            SizedBox(height: 15),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BookActionsButtons(),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "You can also like",
                  style: Styles.textstyle20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomListViewBookDetails(),
          ],
        ),
      ),
    );
  }
}
