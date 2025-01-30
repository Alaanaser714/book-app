import 'package:book_app/core/routes/routes_app.dart';
import 'package:book_app/features/home/data/models/book2_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_list_items.dart';

class CustomBestSelleritems extends StatelessWidget {
  const CustomBestSelleritems({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          RoutesApp.bookDetails,
          extra: bookModel,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .13,
              child: CustomListItems(
                imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
              ),
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
                        bookModel.volumeInfo.title!,
                        style: Styles.textstyle20,
                        maxLines: 2,
                      ),
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
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
