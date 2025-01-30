import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/data/models/book2_model.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_actions_buttons.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_list_view_book_details.dart';
import 'package:flutter/material.dart';

import 'appbar_book_details.dart';
import 'custom_list_items.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarBookDetails(),
            CustomListItems(
              imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
            ),
            SizedBox(height: 20),
            Text(
              bookModel.volumeInfo.title!,
              style: Styles.textstyle20,
            ),
            SizedBox(height: 5),
            Text(
              bookModel.volumeInfo.authors![0],
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
